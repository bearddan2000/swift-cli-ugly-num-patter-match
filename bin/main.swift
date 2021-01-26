//swift 5.1.5
/*This function divides a by greatest
 divisible power of b*/
 func maxDivide(_ a:Int, _ b:Int) -> Int
 {
     switch a%b {
     case let x where x != 0:
         return  a
     default:
         return maxDivide(a/b, b)
     }
 }

 /* Function to check if a number
 is ugly or not */
 func isUgly(_ no:Int, _ ct:Int) -> Int
 {
     switch ct {
     case 2:
         return isUgly(maxDivide(no, 5), ct+1)
     case 1:
        return isUgly(maxDivide(no, 3), ct+1)
     case 0:
        return isUgly(maxDivide(no, 2), ct+1)
     default:
        return (no == 1 ? 1 : 0)
     }
 }

 /* Function to get the nth ugly
 number*/
 func getNthUglyNo(_ n:Int, _ i:Int, _ count:Int) -> Int
 {
     switch n {
     case let x where x < count:
         return i-1
     default:
         switch isUgly(i, 0) {
         case 1:
             return getNthUglyNo(n, i+1, count+1)
         default:
             return getNthUglyNo(n, i+1, count)
         }
     }
 }

func main() {
  let N = 10
  let output = getNthUglyNo(N, 1, 1);

  print("[INPUT] \(N)");
  print("[OUTPUT] \(output)");
}

main()
