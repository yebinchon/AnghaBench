; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/v4l2/extr_demux.c_MmapThread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/v4l2/extr_demux.c_MmapThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32*, i32, i32, i32 }
%struct.pollfd = type { i32, i64, i8* }
%struct.TYPE_11__ = type { i32, i32 }

@POLLIN = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"poll error: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @MmapThread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @MmapThread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.pollfd], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %3, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %4, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  store i32 1, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 16
  %21 = load i8*, i8** @POLLIN, align 8
  %22 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %23 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 16
  br label %24

24:                                               ; preds = %81, %38, %1
  %25 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @poll(%struct.pollfd* %25, i32 %26, i32 -1)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EINTR, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = load i64, i64* @errno, align 8
  %36 = call i32 @vlc_strerror_c(i64 %35)
  %37 = call i32 @msg_Err(%struct.TYPE_9__* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %29
  br label %24

39:                                               ; preds = %24
  %40 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %41 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %81

44:                                               ; preds = %39
  %45 = call i32 (...) @vlc_savecancel()
  store i32 %45, i32* %8, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = call i32 @VLC_OBJECT(%struct.TYPE_9__* %46)
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.TYPE_11__* @GrabVideo(i32 %47, i32 %48, i32 %51)
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %9, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %54 = icmp ne %struct.TYPE_11__* %53, null
  br i1 %54, label %55, label %78

55:                                               ; preds = %44
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @es_out_SetPCR(i32 %65, i32 %68)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = call i32 @es_out_Send(i32 %72, i32 %75, %struct.TYPE_11__* %76)
  br label %78

78:                                               ; preds = %55, %44
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @vlc_restorecancel(i32 %79)
  br label %81

81:                                               ; preds = %78, %39
  br label %24
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i64) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local %struct.TYPE_11__* @GrabVideo(i32, i32, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_9__*) #1

declare dso_local i32 @es_out_SetPCR(i32, i32) #1

declare dso_local i32 @es_out_Send(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
