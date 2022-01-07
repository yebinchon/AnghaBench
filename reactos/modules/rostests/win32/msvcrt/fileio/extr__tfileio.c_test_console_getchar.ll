; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/msvcrt/fileio/extr__tfileio.c_test_console_getchar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/msvcrt/fileio/extr__tfileio.c_test_console_getchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"Enter lines for dumping or <ctrl-z><nl> to finish:\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@_TEOF = common dso_local global i32 0, align 4
@_THEX_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_console_getchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_console_getchar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @_T(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 (i32, ...) @_tprintf(i32 %3)
  br label %5

5:                                                ; preds = %10, %0
  %6 = load i32, i32* @stdin, align 4
  %7 = call i32 @_gettc(i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @_TEOF, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load i32, i32* @_THEX_FORMAT, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 (i32, ...) @_tprintf(i32 %11, i32 %12)
  br label %5

14:                                               ; preds = %5
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @_tprintf(i32, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @_gettc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
