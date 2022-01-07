; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_PlayVideo.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_PlayVideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i64, i32, i32, i32, i64, i32, i32, i64, i32, i32*, i32 }
%struct.TYPE_5__ = type { i64, i32, i64 }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"non-dated video buffer received\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@PREROLL_NONE = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"end of video preroll\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Received first picture\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.decoder_owner*, %struct.TYPE_5__*)* @ModuleThread_PlayVideo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ModuleThread_PlayVideo(%struct.decoder_owner* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.decoder_owner*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.decoder_owner* %0, %struct.decoder_owner** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %10 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %9, i32 0, i32 10
  store i32* %10, i32** %6, align 8
  %11 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %12 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %11, i32 0, i32 9
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VLC_TICK_INVALID, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @msg_Warn(i32* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = call i32 @picture_Release(%struct.TYPE_5__* %22)
  %24 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %24, i32* %3, align 4
  br label %155

25:                                               ; preds = %2
  %26 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %27 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %26, i32 0, i32 6
  %28 = call i32 @vlc_mutex_lock(i32* %27)
  %29 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %30 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PREROLL_NONE, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %25
  %38 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %39 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %47 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %46, i32 0, i32 6
  %48 = call i32 @vlc_mutex_unlock(i32* %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = call i32 @picture_Release(%struct.TYPE_5__* %49)
  %51 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %51, i32* %3, align 4
  br label %155

52:                                               ; preds = %37, %25
  %53 = load i64, i64* @PREROLL_NONE, align 8
  %54 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %55 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @msg_Dbg(i32* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @vout_FlushAll(i32* %65)
  br label %67

67:                                               ; preds = %64, %59
  br label %68

68:                                               ; preds = %67, %52
  %69 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %70 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %75 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %73
  %79 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %80 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %79, i32 0, i32 2
  store i32 1, i32* %80, align 4
  %81 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %82 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %81, i32 0, i32 8
  %83 = call i32 @vlc_cond_signal(i32* %82)
  br label %84

84:                                               ; preds = %78, %73, %68
  %85 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %86 = call i32 @DecoderWaitUnblock(%struct.decoder_owner* %85)
  %87 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %88 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %84
  %92 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %93 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @assert(i32 %94)
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @msg_Dbg(i32* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %98 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %99 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %98, i32 0, i32 1
  store i32 0, i32* %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i32 1, i32* %101, align 8
  br label %102

102:                                              ; preds = %91, %84
  %103 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %104 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %103, i32 0, i32 6
  %105 = call i32 @vlc_mutex_unlock(i32* %104)
  %106 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %107 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @vlc_fifo_Lock(i32 %108)
  %110 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %111 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %102
  %116 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %117 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i64 @likely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %115
  %124 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %125 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, -1
  store i64 %127, i64* %125, align 8
  br label %128

128:                                              ; preds = %123, %115, %102
  %129 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %130 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @vlc_fifo_Unlock(i32 %131)
  %133 = load i32*, i32** %7, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %137 = call i32 @picture_Release(%struct.TYPE_5__* %136)
  %138 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %138, i32* %3, align 4
  br label %155

139:                                              ; preds = %128
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load i32*, i32** %7, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @vout_Flush(i32* %145, i64 %148)
  br label %150

150:                                              ; preds = %144, %139
  %151 = load i32*, i32** %7, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = call i32 @vout_PutPicture(i32* %151, %struct.TYPE_5__* %152)
  %154 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %150, %135, %45, %19
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_5__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i32 @vout_FlushAll(i32*) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @DecoderWaitUnblock(%struct.decoder_owner*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_fifo_Lock(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vlc_fifo_Unlock(i32) #1

declare dso_local i32 @vout_Flush(i32*, i64) #1

declare dso_local i32 @vout_PutPicture(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
