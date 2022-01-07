; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_custom.c_custom_get_thread_return.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_custom.c_custom_get_thread_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Invalid Return Code %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @custom_get_thread_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @custom_get_thread_return(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @GetExitCodeThread(i32 %7, i32* %6)
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %16 [
    i32 133, label %10
    i32 128, label %10
    i32 130, label %10
    i32 132, label %10
    i32 129, label %12
    i32 131, label %13
  ]

10:                                               ; preds = %2, %2, %2, %2
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %3, align 4
  br label %19

12:                                               ; preds = %2
  store i32 128, i32* %3, align 4
  br label %19

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @ACTION_ForceReboot(i32* %14)
  store i32 128, i32* %3, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 132, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %13, %12, %10
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @GetExitCodeThread(i32, i32*) #1

declare dso_local i32 @ACTION_ForceReboot(i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
