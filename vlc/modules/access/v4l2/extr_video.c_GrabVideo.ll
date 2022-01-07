; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/v4l2/extr_video.c_GrabVideo.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/v4l2/extr_video.c_GrabVideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.buffer_t = type { i32 }
%struct.v4l2_buffer = type { i64, i32, i32, i32 }

@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VIDIOC_DQBUF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"dequeue error: %s\00", align 1
@VIDIOC_QBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"queue error: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @GrabVideo(i32* %0, i32 %1, %struct.buffer_t* noalias %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_t*, align 8
  %8 = alloca %struct.v4l2_buffer, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_t* %2, %struct.buffer_t** %7, align 8
  %10 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 1
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 2
  %13 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 3
  %15 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  store i32 %15, i32* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @VIDIOC_DQBUF, align 4
  %18 = call i64 @v4l2_ioctl(i32 %16, i32 %17, %struct.v4l2_buffer* %8)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load i32, i32* @errno, align 4
  switch i32 %21, label %24 [
    i32 129, label %22
    i32 128, label %23
  ]

22:                                               ; preds = %20
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %70

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %20, %23
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @vlc_strerror_c(i32 %26)
  %28 = call i32 @msg_Err(i32* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %27)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %70

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.TYPE_5__* @block_Alloc(i32 %31)
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %9, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = icmp eq %struct.TYPE_5__* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %70

39:                                               ; preds = %29
  %40 = call i32 @GetBufferPTS(%struct.v4l2_buffer* %8)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i32 %40, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.buffer_t*, %struct.buffer_t** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %48, i64 %50
  %52 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @memcpy(i32 %47, i32 %53, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @VIDIOC_QBUF, align 4
  %59 = call i64 @v4l2_ioctl(i32 %57, i32 %58, %struct.v4l2_buffer* %8)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %39
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @errno, align 4
  %64 = call i32 @vlc_strerror_c(i32 %63)
  %65 = call i32 @msg_Err(i32* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %67 = call i32 @block_Release(%struct.TYPE_5__* %66)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %70

68:                                               ; preds = %39
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %4, align 8
  br label %70

70:                                               ; preds = %68, %61, %38, %24, %22
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %71
}

declare dso_local i64 @v4l2_ioctl(i32, i32, %struct.v4l2_buffer*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local %struct.TYPE_5__* @block_Alloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @GetBufferPTS(%struct.v4l2_buffer*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
