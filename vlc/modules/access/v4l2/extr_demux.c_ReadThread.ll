; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/v4l2/extr_demux.c_ReadThread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/v4l2/extr_demux.c_ReadThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32*, i32, i32, i32 }
%struct.pollfd = type { i32, i64, i8* }
%struct.TYPE_11__ = type { i32, i32, i32*, i32, i32 }

@POLLIN = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"poll error: %s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"read error: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @ReadThread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ReadThread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.pollfd], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %3, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %4, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  store i32 1, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %21 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 16
  %22 = load i8*, i8** @POLLIN, align 8
  %23 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %24 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 16
  br label %25

25:                                               ; preds = %111, %55, %39, %1
  %26 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @poll(%struct.pollfd* %26, i32 %27, i32 -1)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @EINTR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = load i64, i64* @errno, align 8
  %37 = call i32 @vlc_strerror_c(i64 %36)
  %38 = call i32 @msg_Err(%struct.TYPE_9__* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %30
  br label %25

40:                                               ; preds = %25
  %41 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %42 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %111

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_11__* @block_Alloc(i32 %48)
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %8, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = icmp eq %struct.TYPE_11__* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = load i64, i64* @errno, align 8
  %58 = call i32 @vlc_strerror_c(i64 %57)
  %59 = call i32 @msg_Err(%struct.TYPE_9__* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @v4l2_read(i32 %60, i32* null, i32 0)
  br label %25

62:                                               ; preds = %45
  %63 = call i32 (...) @vlc_tick_now()
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = call i32 (...) @vlc_savecancel()
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @v4l2_read(i32 %76, i32* %79, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %105

86:                                               ; preds = %62
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @es_out_SetPCR(i32 %92, i32 %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %104 = call i32 @es_out_Send(i32 %99, i32 %102, %struct.TYPE_11__* %103)
  br label %108

105:                                              ; preds = %62
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %107 = call i32 @block_Release(%struct.TYPE_11__* %106)
  br label %108

108:                                              ; preds = %105, %86
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @vlc_restorecancel(i32 %109)
  br label %111

111:                                              ; preds = %108, %40
  br label %25
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i64) #1

declare dso_local %struct.TYPE_11__* @block_Alloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @v4l2_read(i32, i32*, i32) #1

declare dso_local i32 @vlc_tick_now(...) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @es_out_SetPCR(i32, i32) #1

declare dso_local i32 @es_out_Send(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_11__*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
