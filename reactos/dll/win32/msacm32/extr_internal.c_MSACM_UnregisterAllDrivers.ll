; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_UnregisterAllDrivers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_UnregisterAllDrivers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSACM_pFirstACMNotifyWnd = common dso_local global i64 0, align 8
@MSACM_pFirstACMDriverID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MSACM_UnregisterAllDrivers() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @MSACM_pFirstACMNotifyWnd, align 8
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* @MSACM_pFirstACMDriverID, align 8
  store i64 %4, i64* %2, align 8
  br label %5

5:                                                ; preds = %8, %0
  %6 = load i64, i64* %2, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @MSACM_WriteCache(i64 %9)
  %11 = load i64, i64* %2, align 8
  %12 = call i64 @MSACM_UnregisterDriver(i64 %11)
  store i64 %12, i64* %2, align 8
  br label %5

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %17, %13
  %15 = load i64, i64* %1, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, i64* %1, align 8
  %19 = call i64 @MSACM_UnRegisterNotificationWindow(i64 %18)
  store i64 %19, i64* %1, align 8
  br label %14

20:                                               ; preds = %14
  ret void
}

declare dso_local i32 @MSACM_WriteCache(i64) #1

declare dso_local i64 @MSACM_UnregisterDriver(i64) #1

declare dso_local i64 @MSACM_UnRegisterNotificationWindow(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
