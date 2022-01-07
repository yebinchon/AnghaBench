; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_background_worker.c_background_worker_Delete.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_background_worker.c_background_worker_Delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.background_worker = type { i32, i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @background_worker_Delete(%struct.background_worker* %0) #0 {
  %2 = alloca %struct.background_worker*, align 8
  store %struct.background_worker* %0, %struct.background_worker** %2, align 8
  %3 = load %struct.background_worker*, %struct.background_worker** %2, align 8
  %4 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %3, i32 0, i32 1
  %5 = call i32 @vlc_mutex_lock(i32* %4)
  %6 = load %struct.background_worker*, %struct.background_worker** %2, align 8
  %7 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.background_worker*, %struct.background_worker** %2, align 8
  %9 = call i32 @BackgroundWorkerCancelLocked(%struct.background_worker* %8, i32* null)
  %10 = load %struct.background_worker*, %struct.background_worker** %2, align 8
  %11 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %10, i32 0, i32 4
  %12 = call i32 @vlc_cond_broadcast(i32* %11)
  br label %13

13:                                               ; preds = %18, %1
  %14 = load %struct.background_worker*, %struct.background_worker** %2, align 8
  %15 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.background_worker*, %struct.background_worker** %2, align 8
  %20 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %19, i32 0, i32 2
  %21 = load %struct.background_worker*, %struct.background_worker** %2, align 8
  %22 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %21, i32 0, i32 1
  %23 = call i32 @vlc_cond_wait(i32* %20, i32* %22)
  br label %13

24:                                               ; preds = %13
  %25 = load %struct.background_worker*, %struct.background_worker** %2, align 8
  %26 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %25, i32 0, i32 1
  %27 = call i32 @vlc_mutex_unlock(i32* %26)
  %28 = load %struct.background_worker*, %struct.background_worker** %2, align 8
  %29 = call i32 @background_worker_Destroy(%struct.background_worker* %28)
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @BackgroundWorkerCancelLocked(%struct.background_worker*, i32*) #1

declare dso_local i32 @vlc_cond_broadcast(i32*) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @background_worker_Destroy(%struct.background_worker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
