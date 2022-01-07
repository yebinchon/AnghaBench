; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderThread_ProcessInput.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderThread_ProcessInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i64, %struct.TYPE_15__*, i32*, i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32, i32, %struct.TYPE_16__* (%struct.TYPE_15__*, %struct.TYPE_16__**)* }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_16__* }

@RELOAD_NO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Reloading the decoder module%s\00", align 1
@RELOAD_DECODER_AOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c" and the audio output\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@BLOCK_FLAG_CORE_PRIVATE_RELOADED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"restarting module due to input format change\00", align 1
@RELOAD_DECODER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decoder_owner*, %struct.TYPE_16__*)* @DecoderThread_ProcessInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecoderThread_ProcessInput(%struct.decoder_owner* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.decoder_owner*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__**, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  store %struct.decoder_owner* %0, %struct.decoder_owner** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %12 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %13 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %12, i32 0, i32 6
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %5, align 8
  %14 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %15 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %164

19:                                               ; preds = %2
  %20 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %21 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %20, i32 0, i32 5
  %22 = load i32, i32* @RELOAD_NO_REQUEST, align 4
  %23 = call i32 @atomic_exchange(i32* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RELOAD_DECODER_AOUT, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @msg_Warn(%struct.TYPE_15__* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @DecoderThread_Reload(%struct.decoder_owner* %33, i32 0, i32* %35, i32 %36)
  %38 = load i64, i64* @VLC_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %164

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %19
  %43 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %44 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %43, i32 0, i32 1
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = icmp ne %struct.TYPE_15__* %45, null
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %7, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = icmp ne %struct.TYPE_16__* %48, null
  br i1 %49, label %50, label %76

50:                                               ; preds = %42
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %164

56:                                               ; preds = %50
  %57 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %58 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %57, i32 0, i32 3
  %59 = call i32 @vlc_mutex_lock(i32* %58)
  %60 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %61 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %60, i32 0, i32 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = call i32 @DecoderUpdatePreroll(i32* %61, %struct.TYPE_16__* %62)
  %64 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %65 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %64, i32 0, i32 3
  %66 = call i32 @vlc_mutex_unlock(i32* %65)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @BLOCK_FLAG_CORE_PRIVATE_RELOADED, align 4
  %71 = and i32 %69, %70
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %74, %56
  br label %76

76:                                               ; preds = %75, %42
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %159

79:                                               ; preds = %76
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = icmp ne %struct.TYPE_16__* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %84

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %82
  %85 = phi %struct.TYPE_16__** [ %4, %82 ], [ null, %83 ]
  store %struct.TYPE_16__** %85, %struct.TYPE_16__*** %9, align 8
  %86 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %87 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %86, i32 0, i32 1
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  store %struct.TYPE_15__* %88, %struct.TYPE_15__** %10, align 8
  br label %89

89:                                               ; preds = %151, %84
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_16__* (%struct.TYPE_15__*, %struct.TYPE_16__**)*, %struct.TYPE_16__* (%struct.TYPE_15__*, %struct.TYPE_16__**)** %91, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %94 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %95 = call %struct.TYPE_16__* %92(%struct.TYPE_15__* %93, %struct.TYPE_16__** %94)
  store %struct.TYPE_16__* %95, %struct.TYPE_16__** %8, align 8
  %96 = icmp ne %struct.TYPE_16__* %95, null
  br i1 %96, label %97, label %152

97:                                               ; preds = %89
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = call i32 @es_format_IsSimilar(i32* %99, i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %97
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %106 = call i32 @msg_Dbg(%struct.TYPE_15__* %105, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %107 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %108 = call i32 @DecoderThread_DecodeBlock(%struct.decoder_owner* %107, %struct.TYPE_16__* null)
  %109 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i32, i32* @RELOAD_DECODER, align 4
  %113 = call i64 @DecoderThread_Reload(%struct.decoder_owner* %109, i32 0, i32* %111, i32 %112)
  %114 = load i64, i64* @VLC_SUCCESS, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %104
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %118 = call i32 @block_ChainRelease(%struct.TYPE_16__* %117)
  br label %170

119:                                              ; preds = %104
  br label %120

120:                                              ; preds = %119, %97
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %128 = call i32 @PacketizerGetCc(%struct.decoder_owner* %126, %struct.TYPE_15__* %127)
  br label %129

129:                                              ; preds = %125, %120
  br label %130

130:                                              ; preds = %149, %129
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %132 = icmp ne %struct.TYPE_16__* %131, null
  br i1 %132, label %133, label %151

133:                                              ; preds = %130
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  store %struct.TYPE_16__* %136, %struct.TYPE_16__** %11, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %138, align 8
  %139 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %141 = call i32 @DecoderThread_DecodeBlock(%struct.decoder_owner* %139, %struct.TYPE_16__* %140)
  %142 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %143 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %133
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %148 = call i32 @block_ChainRelease(%struct.TYPE_16__* %147)
  br label %170

149:                                              ; preds = %133
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %150, %struct.TYPE_16__** %8, align 8
  br label %130

151:                                              ; preds = %130
  br label %89

152:                                              ; preds = %89
  %153 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %154 = icmp ne %struct.TYPE_16__** %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %157 = call i32 @DecoderThread_DecodeBlock(%struct.decoder_owner* %156, %struct.TYPE_16__* null)
  br label %158

158:                                              ; preds = %155, %152
  br label %163

159:                                              ; preds = %76
  %160 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %162 = call i32 @DecoderThread_DecodeBlock(%struct.decoder_owner* %160, %struct.TYPE_16__* %161)
  br label %163

163:                                              ; preds = %159, %158
  br label %170

164:                                              ; preds = %55, %40, %18
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %166 = icmp ne %struct.TYPE_16__* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %169 = call i32 @block_Release(%struct.TYPE_16__* %168)
  br label %170

170:                                              ; preds = %116, %146, %163, %167, %164
  ret void
}

declare dso_local i32 @atomic_exchange(i32*, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_15__*, i8*, i8*) #1

declare dso_local i64 @DecoderThread_Reload(%struct.decoder_owner*, i32, i32*, i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @DecoderUpdatePreroll(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @es_format_IsSimilar(i32*, i32*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @DecoderThread_DecodeBlock(%struct.decoder_owner*, %struct.TYPE_16__*) #1

declare dso_local i32 @block_ChainRelease(%struct.TYPE_16__*) #1

declare dso_local i32 @PacketizerGetCc(%struct.decoder_owner*, %struct.TYPE_15__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
