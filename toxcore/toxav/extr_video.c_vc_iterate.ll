; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_video.c_vc_iterate.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_video.c_vc_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 (i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32)* }
%struct.RTPMessage = type { i32, i32 }
%struct.TYPE_8__ = type { i32*, i64*, i32, i32 }

@MAX_DECODE_TIME_US = common dso_local global i32 0, align 4
@VPX_CODEC_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error decoding video: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc_iterate(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.RTPMessage*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = icmp ne %struct.TYPE_9__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %130

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pthread_mutex_lock(i32 %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = bitcast %struct.RTPMessage** %3 to i8**
  %19 = call i64 @rb_read(i32 %17, i8** %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %125

21:                                               ; preds = %10
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pthread_mutex_unlock(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.RTPMessage*, %struct.RTPMessage** %3, align 8
  %30 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.RTPMessage*, %struct.RTPMessage** %3, align 8
  %33 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MAX_DECODE_TIME_US, align 4
  %36 = call i32 @vpx_codec_decode(i32 %28, i32 %31, i32 %34, i32* null, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load %struct.RTPMessage*, %struct.RTPMessage** %3, align 8
  %38 = call i32 @free(%struct.RTPMessage* %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @VPX_CODEC_OK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %21
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @vpx_codec_err_to_string(i32 %43)
  %45 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %124

46:                                               ; preds = %21
  store i32* null, i32** %5, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.TYPE_8__* @vpx_codec_get_frame(i32 %49, i32** %5)
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %6, align 8
  br label %51

51:                                               ; preds = %118, %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = icmp ne %struct.TYPE_8__* %52, null
  br i1 %53, label %54, label %123

54:                                               ; preds = %51
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32 (i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32)** %57, align 8
  %59 = icmp ne i32 (i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32)* %58, null
  br i1 %59, label %60, label %115

60:                                               ; preds = %54
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32 (i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32)** %63, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 2
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i32*
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 %64(i32 %67, i32 %70, i32 %73, i32 %76, i32* %82, i32* %88, i32* %94, i32 %99, i32 %104, i32 %109, i32 %113)
  br label %115

115:                                              ; preds = %60, %54
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %117 = call i32 @vpx_img_free(%struct.TYPE_8__* %116)
  br label %118

118:                                              ; preds = %115
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = call %struct.TYPE_8__* @vpx_codec_get_frame(i32 %121, i32** %5)
  store %struct.TYPE_8__* %122, %struct.TYPE_8__** %6, align 8
  br label %51

123:                                              ; preds = %51
  br label %124

124:                                              ; preds = %123, %42
  br label %130

125:                                              ; preds = %10
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @pthread_mutex_unlock(i32 %128)
  br label %130

130:                                              ; preds = %125, %124, %9
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32) #1

declare dso_local i64 @rb_read(i32, i8**) #1

declare dso_local i32 @pthread_mutex_unlock(i32) #1

declare dso_local i32 @vpx_codec_decode(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @free(%struct.RTPMessage*) #1

declare dso_local i32 @LOGGER_ERROR(i8*, i32) #1

declare dso_local i32 @vpx_codec_err_to_string(i32) #1

declare dso_local %struct.TYPE_8__* @vpx_codec_get_frame(i32, i32**) #1

declare dso_local i32 @vpx_img_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
