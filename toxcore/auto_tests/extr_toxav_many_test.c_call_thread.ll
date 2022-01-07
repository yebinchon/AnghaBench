; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_toxav_many_test.c_call_thread.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_toxav_many_test.c_call_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32*, i32* }

@TOXAV_ERR_CALL_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"toxav_call failed: %d\0A\00", align 1
@TOXAV_ERR_ANSWER_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"toxav_answer failed: %d\0A\00", align 1
@TOXAV_CALL_CONTROL_CANCEL = common dso_local global i32 0, align 4
@TOXAV_ERR_CALL_CONTROL_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"toxav_call_control failed: %d %p %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Closing thread\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @call_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [960 x %struct.TYPE_10__], align 16
  %12 = alloca [480000 x %struct.TYPE_10__], align 16
  %13 = alloca [240000 x %struct.TYPE_10__], align 16
  %14 = alloca [240000 x %struct.TYPE_10__], align 16
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_11__*
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %4, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_11__*
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %5, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_11__*
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %6, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_11__*
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %7, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_11__*
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = call i32 @memset(%struct.TYPE_10__* %37, i32 0, i32 4)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = call i32 @memset(%struct.TYPE_10__* %39, i32 0, i32 4)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @toxav_call(i32* %41, i32 %42, i32 48, i32 3000, i64* %9)
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @TOXAV_ERR_CALL_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %1
  %48 = load i64, i64* %9, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = call i32 @ck_assert(i32 0)
  br label %51

51:                                               ; preds = %47, %1
  br label %52

52:                                               ; preds = %58, %51
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @c_sleep(i32 10)
  br label %52

60:                                               ; preds = %52
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @toxav_answer(i32* %61, i32 0, i32 8, i32 500, i64* %10)
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @TOXAV_ERR_ANSWER_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i64, i64* %10, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  %69 = call i32 @ck_assert(i32 0)
  br label %70

70:                                               ; preds = %66, %60
  %71 = call i32 @c_sleep(i32 30)
  %72 = getelementptr inbounds [960 x %struct.TYPE_10__], [960 x %struct.TYPE_10__]* %11, i64 0, i64 0
  %73 = call i32 @memset(%struct.TYPE_10__* %72, i32 0, i32 3840)
  %74 = getelementptr inbounds [480000 x %struct.TYPE_10__], [480000 x %struct.TYPE_10__]* %12, i64 0, i64 0
  %75 = call i32 @memset(%struct.TYPE_10__* %74, i32 0, i32 1920000)
  %76 = getelementptr inbounds [240000 x %struct.TYPE_10__], [240000 x %struct.TYPE_10__]* %13, i64 0, i64 0
  %77 = call i32 @memset(%struct.TYPE_10__* %76, i32 0, i32 960000)
  %78 = getelementptr inbounds [240000 x %struct.TYPE_10__], [240000 x %struct.TYPE_10__]* %14, i64 0, i64 0
  %79 = call i32 @memset(%struct.TYPE_10__* %78, i32 0, i32 960000)
  %80 = call i32 @time(i32* null)
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %86, %70
  %82 = call i32 @time(i32* null)
  %83 = load i32, i32* %15, align 4
  %84 = sub nsw i32 %82, %83
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %86, label %110

86:                                               ; preds = %81
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @toxav_iterate(i32* %87)
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @toxav_iterate(i32* %89)
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = getelementptr inbounds [960 x %struct.TYPE_10__], [960 x %struct.TYPE_10__]* %11, i64 0, i64 0
  %94 = call i32 @toxav_audio_send_frame(i32* %91, i32 %92, %struct.TYPE_10__* %93, i32 960, i32 1, i32 48000, i32* null)
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds [960 x %struct.TYPE_10__], [960 x %struct.TYPE_10__]* %11, i64 0, i64 0
  %97 = call i32 @toxav_audio_send_frame(i32* %95, i32 0, %struct.TYPE_10__* %96, i32 960, i32 1, i32 48000, i32* null)
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* %8, align 4
  %100 = getelementptr inbounds [480000 x %struct.TYPE_10__], [480000 x %struct.TYPE_10__]* %12, i64 0, i64 0
  %101 = getelementptr inbounds [240000 x %struct.TYPE_10__], [240000 x %struct.TYPE_10__]* %13, i64 0, i64 0
  %102 = getelementptr inbounds [240000 x %struct.TYPE_10__], [240000 x %struct.TYPE_10__]* %14, i64 0, i64 0
  %103 = call i32 @toxav_video_send_frame(i32* %98, i32 %99, i32 800, i32 600, %struct.TYPE_10__* %100, %struct.TYPE_10__* %101, %struct.TYPE_10__* %102, i32* null)
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds [480000 x %struct.TYPE_10__], [480000 x %struct.TYPE_10__]* %12, i64 0, i64 0
  %106 = getelementptr inbounds [240000 x %struct.TYPE_10__], [240000 x %struct.TYPE_10__]* %13, i64 0, i64 0
  %107 = getelementptr inbounds [240000 x %struct.TYPE_10__], [240000 x %struct.TYPE_10__]* %14, i64 0, i64 0
  %108 = call i32 @toxav_video_send_frame(i32* %104, i32 0, i32 800, i32 600, %struct.TYPE_10__* %105, %struct.TYPE_10__* %106, %struct.TYPE_10__* %107, i32* null)
  %109 = call i32 @c_sleep(i32 10)
  br label %81

110:                                              ; preds = %81
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @TOXAV_CALL_CONTROL_CANCEL, align 4
  %114 = call i32 @toxav_call_control(i32* %111, i32 %112, i32 %113, i64* %16)
  %115 = load i64, i64* %16, align 8
  %116 = load i64, i64* @TOXAV_ERR_CALL_CONTROL_OK, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %110
  %119 = load i64, i64* %16, align 8
  %120 = load i32*, i32** %4, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %119, i32* %120, i32* %121)
  br label %123

123:                                              ; preds = %118, %110
  %124 = call i32 @c_sleep(i32 30)
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %126 = call i32 @pthread_exit(i32* null)
  %127 = load i8*, i8** %2, align 8
  ret i8* %127
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @toxav_call(i32*, i32, i32, i32, i64*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ck_assert(i32) #1

declare dso_local i32 @c_sleep(i32) #1

declare dso_local i32 @toxav_answer(i32*, i32, i32, i32, i64*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @toxav_iterate(i32*) #1

declare dso_local i32 @toxav_audio_send_frame(i32*, i32, %struct.TYPE_10__*, i32, i32, i32, i32*) #1

declare dso_local i32 @toxav_video_send_frame(i32*, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @toxav_call_control(i32*, i32, i32, i64*) #1

declare dso_local i32 @pthread_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
