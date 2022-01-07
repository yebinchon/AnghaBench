; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_background_worker.c_background_worker_Push.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_background_worker.c_background_worker_Push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.background_worker = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.task = type { i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @background_worker_Push(%struct.background_worker* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.background_worker*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.task*, align 8
  store %struct.background_worker* %0, %struct.background_worker** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.task* @task_Create(%struct.background_worker* %11, i8* %12, i8* %13, i32 %14)
  store %struct.task* %15, %struct.task** %10, align 8
  %16 = load %struct.task*, %struct.task** %10, align 8
  %17 = icmp ne %struct.task* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %23, i32* %5, align 4
  br label %56

24:                                               ; preds = %4
  %25 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %26 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %25, i32 0, i32 2
  %27 = call i32 @vlc_mutex_lock(i32* %26)
  %28 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %29 = load %struct.task*, %struct.task** %10, align 8
  %30 = call i32 @QueuePush(%struct.background_worker* %28, %struct.task* %29)
  %31 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %32 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %36 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %24
  %40 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %41 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %44 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %42, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %50 = call i32 @SpawnThread(%struct.background_worker* %49)
  br label %51

51:                                               ; preds = %48, %39, %24
  %52 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %53 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %52, i32 0, i32 2
  %54 = call i32 @vlc_mutex_unlock(i32* %53)
  %55 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %51, %22
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.task* @task_Create(%struct.background_worker*, i8*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @QueuePush(%struct.background_worker*, %struct.task*) #1

declare dso_local i32 @SpawnThread(%struct.background_worker*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
