; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_PlayAudio.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_PlayAudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i64, i32, i32, i32*, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i64 }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"non-dated audio buffer received\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@PREROLL_NONE = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"end of audio preroll\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"discarded audio buffer\00", align 1
@AOUT_DEC_CHANGED = common dso_local global i32 0, align 4
@AOUT_DEC_FAILED = common dso_local global i32 0, align 4
@RELOAD_DECODER_AOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.decoder_owner*, %struct.TYPE_5__*)* @ModuleThread_PlayAudio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ModuleThread_PlayAudio(%struct.decoder_owner* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.decoder_owner*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.decoder_owner* %0, %struct.decoder_owner** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %11 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %10, i32 0, i32 7
  store i32* %11, i32** %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VLC_TICK_INVALID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @msg_Warn(i32* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = call i32 @block_Release(%struct.TYPE_5__* %24)
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %3, align 4
  br label %130

27:                                               ; preds = %2
  %28 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %29 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %28, i32 0, i32 4
  %30 = call i32 @vlc_mutex_lock(i32* %29)
  %31 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %32 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PREROLL_NONE, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %27
  %40 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %41 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %49 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %48, i32 0, i32 4
  %50 = call i32 @vlc_mutex_unlock(i32* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = call i32 @block_Release(%struct.TYPE_5__* %51)
  %53 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %53, i32* %3, align 4
  br label %130

54:                                               ; preds = %39, %27
  %55 = load i64, i64* @PREROLL_NONE, align 8
  %56 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %57 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %59 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %58, i32 0, i32 4
  %60 = call i32 @vlc_mutex_unlock(i32* %59)
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %54
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @msg_Dbg(i32* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %68 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %73 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @aout_DecFlush(i32* %74)
  br label %76

76:                                               ; preds = %71, %64
  br label %77

77:                                               ; preds = %76, %54
  %78 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %79 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %78, i32 0, i32 4
  %80 = call i32 @vlc_mutex_lock(i32* %79)
  %81 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %82 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %87 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %86, i32 0, i32 1
  store i32 1, i32* %87, align 8
  %88 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %89 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %88, i32 0, i32 5
  %90 = call i32 @vlc_cond_signal(i32* %89)
  br label %91

91:                                               ; preds = %85, %77
  %92 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %93 = call i32 @DecoderWaitUnblock(%struct.decoder_owner* %92)
  %94 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %95 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %94, i32 0, i32 4
  %96 = call i32 @vlc_mutex_unlock(i32* %95)
  %97 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %98 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %8, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %91
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @msg_Dbg(i32* %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = call i32 @block_Release(%struct.TYPE_5__* %105)
  %107 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %107, i32* %3, align 4
  br label %130

108:                                              ; preds = %91
  %109 = load i32*, i32** %8, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = call i32 @aout_DecPlay(i32* %109, %struct.TYPE_5__* %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @AOUT_DEC_CHANGED, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %117 = call i32 @RequestReload(%struct.decoder_owner* %116)
  br label %128

118:                                              ; preds = %108
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @AOUT_DEC_FAILED, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %124 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %123, i32 0, i32 2
  %125 = load i32, i32* @RELOAD_DECODER_AOUT, align 4
  %126 = call i32 @atomic_store(i32* %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %118
  br label %128

128:                                              ; preds = %127, %115
  %129 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %102, %47, %21
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @block_Release(%struct.TYPE_5__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i32 @aout_DecFlush(i32*) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @DecoderWaitUnblock(%struct.decoder_owner*) #1

declare dso_local i32 @aout_DecPlay(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @RequestReload(%struct.decoder_owner*) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
