; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_background_worker.c_task_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_background_worker.c_task_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { i8*, i32, i8* }
%struct.background_worker = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i8*)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task* (%struct.background_worker*, i8*, i8*, i32)* @task_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task* @task_Create(%struct.background_worker* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.task*, align 8
  %6 = alloca %struct.background_worker*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.task*, align 8
  store %struct.background_worker* %0, %struct.background_worker** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call %struct.task* @malloc(i32 24)
  store %struct.task* %11, %struct.task** %10, align 8
  %12 = load %struct.task*, %struct.task** %10, align 8
  %13 = icmp ne %struct.task* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store %struct.task* null, %struct.task** %5, align 8
  br label %49

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.task*, %struct.task** %10, align 8
  %22 = getelementptr inbounds %struct.task, %struct.task* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.task*, %struct.task** %10, align 8
  %25 = getelementptr inbounds %struct.task, %struct.task* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %30 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  br label %36

33:                                               ; preds = %19
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @VLC_TICK_FROM_MS(i32 %34)
  br label %36

36:                                               ; preds = %33, %28
  %37 = phi i32 [ %32, %28 ], [ %35, %33 ]
  %38 = load %struct.task*, %struct.task** %10, align 8
  %39 = getelementptr inbounds %struct.task, %struct.task* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %41 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (i8*)*, i32 (i8*)** %42, align 8
  %44 = load %struct.task*, %struct.task** %10, align 8
  %45 = getelementptr inbounds %struct.task, %struct.task* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 %43(i8* %46)
  %48 = load %struct.task*, %struct.task** %10, align 8
  store %struct.task* %48, %struct.task** %5, align 8
  br label %49

49:                                               ; preds = %36, %18
  %50 = load %struct.task*, %struct.task** %5, align 8
  ret %struct.task* %50
}

declare dso_local %struct.task* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
