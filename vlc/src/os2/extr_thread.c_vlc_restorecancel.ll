; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_restorecancel.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_restorecancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_thread = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_restorecancel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vlc_thread*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.vlc_thread* (...) @vlc_thread_self()
  store %struct.vlc_thread* %4, %struct.vlc_thread** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 1
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i1 [ true, %1 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.vlc_thread*, %struct.vlc_thread** %3, align 8
  %15 = icmp eq %struct.vlc_thread* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %30

17:                                               ; preds = %10
  %18 = load %struct.vlc_thread*, %struct.vlc_thread** %3, align 8
  %19 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load %struct.vlc_thread*, %struct.vlc_thread** %3, align 8
  %29 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.vlc_thread* @vlc_thread_self(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
