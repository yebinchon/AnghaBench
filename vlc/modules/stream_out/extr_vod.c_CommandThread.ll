; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_vod.c_CommandThread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_vod.c_CommandThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@VOD_MEDIA_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @CommandThread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @CommandThread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %3, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %4, align 8
  br label %13

13:                                               ; preds = %52, %1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_14__* @block_FifoGet(i32 %16)
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %5, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = icmp ne %struct.TYPE_14__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %58

21:                                               ; preds = %13
  %22 = call i32 (...) @vlc_savecancel()
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memcpy(%struct.TYPE_13__* %6, i32 %25, i32 12)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = call i32 @block_Release(%struct.TYPE_14__* %27)
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %51 [
    i32 130, label %31
    i32 129, label %38
    i32 128, label %43
  ]

31:                                               ; preds = %21
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @MediaSetup(%struct.TYPE_11__* %32, i32 %34, i32 %36)
  br label %52

38:                                               ; preds = %21
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @MediaDel(%struct.TYPE_11__* %39, i32 %41)
  br label %52

43:                                               ; preds = %21
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @VOD_MEDIA_STOP, align 4
  %50 = call i32 @vod_MediaControl(%struct.TYPE_11__* %44, i32 %46, i32 %48, i32 %49)
  br label %52

51:                                               ; preds = %21
  br label %52

52:                                               ; preds = %51, %43, %38, %31
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @free(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @vlc_restorecancel(i32 %56)
  br label %13

58:                                               ; preds = %20
  ret i8* null
}

declare dso_local %struct.TYPE_14__* @block_FifoGet(i32) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_14__*) #1

declare dso_local i32 @MediaSetup(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @MediaDel(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @vod_MediaControl(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
