; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_background_worker.c_TerminateTask.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_background_worker.c_TerminateTask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.background_thread = type { i32*, %struct.background_worker* }
%struct.background_worker = type { i64, i32 }
%struct.task = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.background_thread*, %struct.task*)* @TerminateTask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TerminateTask(%struct.background_thread* %0, %struct.task* %1) #0 {
  %3 = alloca %struct.background_thread*, align 8
  %4 = alloca %struct.task*, align 8
  %5 = alloca %struct.background_worker*, align 8
  store %struct.background_thread* %0, %struct.background_thread** %3, align 8
  store %struct.task* %1, %struct.task** %4, align 8
  %6 = load %struct.background_thread*, %struct.background_thread** %3, align 8
  %7 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %6, i32 0, i32 1
  %8 = load %struct.background_worker*, %struct.background_worker** %7, align 8
  store %struct.background_worker* %8, %struct.background_worker** %5, align 8
  %9 = load %struct.background_worker*, %struct.background_worker** %5, align 8
  %10 = load %struct.task*, %struct.task** %4, align 8
  %11 = call i32 @task_Destroy(%struct.background_worker* %9, %struct.task* %10)
  %12 = load %struct.background_worker*, %struct.background_worker** %5, align 8
  %13 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %12, i32 0, i32 1
  %14 = call i32 @vlc_mutex_lock(i32* %13)
  %15 = load %struct.background_thread*, %struct.background_thread** %3, align 8
  %16 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.background_worker*, %struct.background_worker** %5, align 8
  %18 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.background_worker*, %struct.background_worker** %5, align 8
  %22 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.background_worker*, %struct.background_worker** %5, align 8
  %28 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %27, i32 0, i32 1
  %29 = call i32 @vlc_mutex_unlock(i32* %28)
  ret void
}

declare dso_local i32 @task_Destroy(%struct.background_worker*, %struct.task*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
