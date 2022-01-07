; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_background_worker.c_RemoveThread.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_background_worker.c_RemoveThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.background_thread = type { i32, %struct.background_worker* }
%struct.background_worker = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.background_thread*)* @RemoveThread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RemoveThread(%struct.background_thread* %0) #0 {
  %2 = alloca %struct.background_thread*, align 8
  %3 = alloca %struct.background_worker*, align 8
  store %struct.background_thread* %0, %struct.background_thread** %2, align 8
  %4 = load %struct.background_thread*, %struct.background_thread** %2, align 8
  %5 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %4, i32 0, i32 1
  %6 = load %struct.background_worker*, %struct.background_worker** %5, align 8
  store %struct.background_worker* %6, %struct.background_worker** %3, align 8
  %7 = load %struct.background_worker*, %struct.background_worker** %3, align 8
  %8 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %7, i32 0, i32 1
  %9 = call i32 @vlc_mutex_lock(i32* %8)
  %10 = load %struct.background_thread*, %struct.background_thread** %2, align 8
  %11 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %10, i32 0, i32 0
  %12 = call i32 @vlc_list_remove(i32* %11)
  %13 = load %struct.background_worker*, %struct.background_worker** %3, align 8
  %14 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.background_worker*, %struct.background_worker** %3, align 8
  %18 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.background_worker*, %struct.background_worker** %3, align 8
  %24 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %1
  %28 = load %struct.background_worker*, %struct.background_worker** %3, align 8
  %29 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %28, i32 0, i32 2
  %30 = call i32 @vlc_cond_signal(i32* %29)
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.background_worker*, %struct.background_worker** %3, align 8
  %33 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %32, i32 0, i32 1
  %34 = call i32 @vlc_mutex_unlock(i32* %33)
  %35 = load %struct.background_thread*, %struct.background_thread** %2, align 8
  %36 = call i32 @background_thread_Destroy(%struct.background_thread* %35)
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_list_remove(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @background_thread_Destroy(%struct.background_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
