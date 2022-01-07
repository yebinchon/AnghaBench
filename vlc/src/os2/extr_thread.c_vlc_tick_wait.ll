; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_tick_wait.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_tick_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_tick_wait(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i32 (...) @vlc_testcancel()
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i64, i64* %2, align 8
  %7 = call i64 (...) @vlc_tick_now()
  %8 = sub nsw i64 %6, %7
  store i64 %8, i64* %3, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = load i64, i64* %3, align 8
  %12 = sdiv i64 %11, 1000
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp sgt i64 %13, 2147483647
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i64 2147483647, i64* %3, align 8
  br label %19

19:                                               ; preds = %18, %10
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @vlc_Sleep(i64 %20)
  %22 = call i32 (...) @vlc_testcancel()
  br label %5

23:                                               ; preds = %5
  ret void
}

declare dso_local i32 @vlc_testcancel(...) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_Sleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
