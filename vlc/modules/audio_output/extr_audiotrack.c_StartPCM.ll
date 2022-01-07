; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_StartPCM.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_StartPCM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }

@jfields = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@getNativeOutputSampleRate = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@AOUT_CHANS_7_1 = common dso_local global i32 0, align 4
@AOUT_CHANS_5_1 = common dso_local global i32 0, align 4
@AOUT_CHAN_LEFT = common dso_local global i32 0, align 4
@AOUT_CHANS_STEREO = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"FL32 configuration failed, fallback to S16N PCM\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"5.1 or 7.1 configuration failed, fallback to Stereo\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@AOUT_CHAN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*, i32)* @StartPCM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StartPCM(i32* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %8, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @jfields, i32 0, i32 2, i32 0), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* @getNativeOutputSampleRate, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @jfields, i32 0, i32 1, i32 0), align 8
  %22 = call i32 @JNI_AT_CALL_STATIC_INT(i32 %20, i32 %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 4
  br label %35

26:                                               ; preds = %3
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @VLC_CLIP(i32 %30, i32 4000, i32 48000)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %19
  br label %36

36:                                               ; preds = %160, %35
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %56 [
    i32 128, label %41
    i32 129, label %43
    i32 130, label %45
  ]

41:                                               ; preds = %36
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @jfields, i32 0, i32 0, i32 0), align 8
  store i32 %42, i32* %10, align 4
  br label %61

43:                                               ; preds = %36
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @jfields, i32 0, i32 0, i32 1), align 4
  store i32 %44, i32* %10, align 4
  br label %61

45:                                               ; preds = %36
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @jfields, i32 0, i32 0, i32 4), align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @jfields, i32 0, i32 0, i32 2), align 8
  store i32 %49, i32* %10, align 4
  br label %55

50:                                               ; preds = %45
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  store i32 129, i32* %53, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @jfields, i32 0, i32 0, i32 1), align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %50, %48
  br label %61

56:                                               ; preds = %36
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  store i32 129, i32* %59, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @jfields, i32 0, i32 0, i32 1), align 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %56, %55, %43, %41
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = call i32 @aout_FormatNbChannels(%struct.TYPE_19__* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %68, i32* %4, align 4
  br label %197

69:                                               ; preds = %61
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = call i64 @AOUT_FMT_LINEAR(%struct.TYPE_19__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @__MIN(i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %74, %69
  %79 = load i32, i32* %9, align 4
  %80 = icmp ugt i32 %79, 5
  br i1 %80, label %81, label %98

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = icmp ugt i32 %82, 7
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @jfields, i32 0, i32 0, i32 3), align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* @AOUT_CHANS_7_1, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  br label %97

92:                                               ; preds = %84, %81
  %93 = load i32, i32* @AOUT_CHANS_5_1, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  br label %97

97:                                               ; preds = %92, %87
  br label %113

98:                                               ; preds = %78
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  br label %112

106:                                              ; preds = %98
  %107 = load i8*, i8** @AOUT_CHANS_STEREO, align 8
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %106, %101
  br label %113

113:                                              ; preds = %112, %97
  %114 = load i32*, i32** %5, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @AudioTrack_Create(i32* %114, %struct.TYPE_16__* %115, i32 %119, i32 %120, i32 %124)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %159

128:                                              ; preds = %113
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 130
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %136 = call i32 @msg_Warn(%struct.TYPE_16__* %135, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  store i32 129, i32* %139, align 4
  br label %158

140:                                              ; preds = %128
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @AOUT_CHANS_5_1, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %140
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %150 = call i32 @msg_Warn(%struct.TYPE_16__* %149, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %151 = load i8*, i8** @AOUT_CHANS_STEREO, align 8
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 4
  br label %157

156:                                              ; preds = %140
  br label %163

157:                                              ; preds = %148
  br label %158

158:                                              ; preds = %157, %134
  br label %159

159:                                              ; preds = %158, %113
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %36, label %163

163:                                              ; preds = %160, %156
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @VLC_SUCCESS, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %4, align 4
  br label %197

169:                                              ; preds = %163
  %170 = load i32, i32* @AOUT_CHAN_MAX, align 4
  %171 = zext i32 %170 to i64
  %172 = call i8* @llvm.stacksave()
  store i8* %172, i8** %12, align 8
  %173 = alloca i32, i64 %171, align 16
  store i64 %171, i64* %13, align 8
  %174 = mul nuw i64 4, %171
  %175 = trunc i64 %174 to i32
  %176 = call i32 @memset(i32* %173, i32 0, i32 %175)
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @AudioTrack_GetChanOrder(i32 %180, i32* %173)
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @aout_CheckChannelReorder(i32* null, i32* %173, i32 %185, i32 %188)
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 4
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  %194 = call i32 @aout_FormatPrepare(%struct.TYPE_19__* %193)
  %195 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %195, i32* %4, align 4
  %196 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %196)
  br label %197

197:                                              ; preds = %169, %167, %67
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @JNI_AT_CALL_STATIC_INT(i32, i32) #1

declare dso_local i32 @VLC_CLIP(i32, i32, i32) #1

declare dso_local i32 @aout_FormatNbChannels(%struct.TYPE_19__*) #1

declare dso_local i64 @AOUT_FMT_LINEAR(%struct.TYPE_19__*) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local i32 @AudioTrack_Create(i32*, %struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_16__*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @AudioTrack_GetChanOrder(i32, i32*) #1

declare dso_local i32 @aout_CheckChannelReorder(i32*, i32*, i32, i32) #1

declare dso_local i32 @aout_FormatPrepare(%struct.TYPE_19__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
