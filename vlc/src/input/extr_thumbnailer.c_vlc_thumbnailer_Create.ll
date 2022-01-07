; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_thumbnailer.c_vlc_thumbnailer_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_thumbnailer.c_vlc_thumbnailer_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32* }
%struct.background_worker_config = type { i32, i32, i32, i32, i32, i32, i32 }

@thumbnailer_request_Stop = common dso_local global i32 0, align 4
@thumbnailer_request_Probe = common dso_local global i32 0, align 4
@thumbnailer_request_Start = common dso_local global i32 0, align 4
@thumbnailer_request_Hold = common dso_local global i32 0, align 4
@thumbnailer_request_Release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @vlc_thumbnailer_Create(i32* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.background_worker_config, align 4
  store i32* %0, i32** %3, align 8
  %6 = call %struct.TYPE_6__* @malloc(i32 16)
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %45

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %5, i32 0, i32 0
  store i32 -1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %5, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %5, i32 0, i32 2
  %20 = load i32, i32* @thumbnailer_request_Stop, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %5, i32 0, i32 3
  %22 = load i32, i32* @thumbnailer_request_Probe, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %5, i32 0, i32 4
  %24 = load i32, i32* @thumbnailer_request_Start, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %5, i32 0, i32 5
  %26 = load i32, i32* @thumbnailer_request_Hold, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %5, i32 0, i32 6
  %28 = load i32, i32* @thumbnailer_request_Release, align 4
  store i32 %28, i32* %27, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = call i32* @background_worker_New(%struct.TYPE_6__* %29, %struct.background_worker_config* %5)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %13
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = call i32 @free(%struct.TYPE_6__* %41)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %45

43:                                               ; preds = %13
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %2, align 8
  br label %45

45:                                               ; preds = %43, %40, %12
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %46
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @background_worker_New(%struct.TYPE_6__*, %struct.background_worker_config*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
