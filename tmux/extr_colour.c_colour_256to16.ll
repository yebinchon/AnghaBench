; ModuleID = '/home/carl/AnghaBench/tmux/extr_colour.c_colour_256to16.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_colour.c_colour_256to16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@colour_256to16.table = internal constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\00\04\04\04\0C\0C\02\06\04\04\0C\0C\02\02\06\04\0C\0C\02\02\02\06\0C\0C\0A\0A\0A\0A\0E\0C\0A\0A\0A\0A\0A\0E\01\05\04\04\0C\0C\03\08\04\04\0C\0C\02\02\06\04\0C\0C\02\02\02\06\0C\0C\0A\0A\0A\0A\0E\0C\0A\0A\0A\0A\0A\0E\01\01\05\04\0C\0C\01\01\05\04\0C\0C\03\03\08\04\0C\0C\02\02\02\06\0C\0C\0A\0A\0A\0A\0E\0C\0A\0A\0A\0A\0A\0E\01\01\01\05\0C\0C\01\01\01\05\0C\0C\01\01\01\05\0C\0C\03\03\03\07\0C\0C\0A\0A\0A\0A\0E\0C\0A\0A\0A\0A\0A\0E\09\09\09\09\0D\0C\09\09\09\09\0D\0C\09\09\09\09\0D\0C\09\09\09\09\0D\0C\0B\0B\0B\0B\07\0C\0A\0A\0A\0A\0A\0E\09\09\09\09\09\0D\09\09\09\09\09\0D\09\09\09\09\09\0D\09\09\09\09\09\0D\09\09\09\09\09\0D\0B\0B\0B\0B\0B\0F\00\00\00\00\00\00\08\08\08\08\08\08\07\07\07\07\07\07\0F\0F\0F\0F\0F\0F", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @colour_256to16(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 255
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* @colour_256to16.table, i64 0, i64 %5
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
