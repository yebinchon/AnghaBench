; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/v4l2/extr_demux.c_UserPtrThread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/v4l2/extr_demux.c_UserPtrThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.pollfd = type { i32, i32 }
%struct.v4l2_buffer = type { i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i8*, i32, i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@V4L2_MEMORY_USERPTR = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"poll error: %s\00", align 1
@VIDIOC_DQBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot dequeue buffer: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @UserPtrThread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @UserPtrThread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.pollfd], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_buffer, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %3, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %4, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  store i32 1, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %21 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 16
  %22 = load i32, i32* @POLLIN, align 4
  %23 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %24 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = call i32 (...) @vlc_savecancel()
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %78, %71, %1
  %27 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %9, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %9, i32 0, i32 1
  %29 = bitcast %struct.TYPE_11__* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 8, i1 false)
  %30 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %9, i32 0, i32 2
  %31 = load i32, i32* @V4L2_MEMORY_USERPTR, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %9, i32 0, i32 3
  %33 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  store i32 %33, i32* %32, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = call i32 @VLC_OBJECT(%struct.TYPE_12__* %34)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_14__* @UserPtrQueue(i32 %35, i32 %36, i32 %39)
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %10, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %42 = icmp eq %struct.TYPE_14__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %120

44:                                               ; preds = %26
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @vlc_restorecancel(i32 %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %48 = call i32 @block_cleanup_push(%struct.TYPE_14__* %47)
  br label %49

49:                                               ; preds = %63, %44
  %50 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @poll(%struct.pollfd* %50, i32 %51, i32 -1)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @EINTR, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = load i64, i64* @errno, align 8
  %61 = call i32 @vlc_strerror_c(i64 %60)
  %62 = call i32 @msg_Err(%struct.TYPE_12__* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %58, %54
  br label %49

64:                                               ; preds = %49
  %65 = call i32 (...) @vlc_cleanup_pop()
  %66 = call i32 (...) @vlc_savecancel()
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @VIDIOC_DQBUF, align 4
  %69 = call i64 @v4l2_ioctl(i32 %67, i32 %68, %struct.v4l2_buffer* %9)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = load i64, i64* @errno, align 8
  %74 = call i32 @vlc_strerror_c(i64 %73)
  %75 = call i32 @msg_Err(%struct.TYPE_12__* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = call i32 @block_Release(%struct.TYPE_14__* %76)
  br label %26

78:                                               ; preds = %64
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %9, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = icmp eq i8* %81, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %9, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = call i32 @GetBufferPTS(%struct.v4l2_buffer* %9)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  store i32 %93, i32* %97, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @es_out_SetPCR(i32 %107, i32 %110)
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %119 = call i32 @es_out_Send(i32 %114, i32 %117, %struct.TYPE_14__* %118)
  br label %26

120:                                              ; preds = %43
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @vlc_restorecancel(i32 %121)
  ret i8* null
}

declare dso_local i32 @vlc_savecancel(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_14__* @UserPtrQueue(i32, i32, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_12__*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

declare dso_local i32 @block_cleanup_push(%struct.TYPE_14__*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i64) #1

declare dso_local i32 @vlc_cleanup_pop(...) #1

declare dso_local i64 @v4l2_ioctl(i32, i32, %struct.v4l2_buffer*) #1

declare dso_local i32 @block_Release(%struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GetBufferPTS(%struct.v4l2_buffer*) #1

declare dso_local i32 @es_out_SetPCR(i32, i32) #1

declare dso_local i32 @es_out_Send(i32, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
