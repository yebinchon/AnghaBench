; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_utils.c_GetAudioParameters.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_utils.c_GetAudioParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@OMX_ErrorNotImplemented = common dso_local global i64 0, align 8
@OMX_ErrorNone = common dso_local global i64 0, align 8
@OMX_AUDIO_ChannelModeStereo = common dso_local global i32 0, align 4
@OMX_ErrorBadParameter = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetAudioParameters(i32 %0, %struct.TYPE_18__* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 11
  %29 = bitcast %struct.TYPE_19__* %28 to i64*
  %30 = load i64, i64* %29, align 4
  %31 = call i32 @OMX_INIT_COMMON(i64 %30)
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 11
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @GetAudioParamFormatIndex(i32 %36)
  store i32 %37, i32* %26, align 4
  %38 = load i32, i32* %26, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %9
  %41 = load i64, i64* @OMX_ErrorNotImplemented, align 8
  store i64 %41, i64* %10, align 8
  br label %228

42:                                               ; preds = %9
  %43 = load i32, i32* %26, align 4
  %44 = call i32 @GetAudioParamSize(i32 %43)
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 11
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %26, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %51 = call i64 @OMX_GetParameter(i32 %48, i32 %49, %struct.TYPE_18__* %50)
  store i64 %51, i64* %25, align 8
  %52 = load i64, i64* %25, align 8
  %53 = load i64, i64* @OMX_ErrorNone, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i64, i64* %25, align 8
  store i64 %56, i64* %10, align 8
  br label %228

57:                                               ; preds = %42
  %58 = load i32, i32* %14, align 4
  switch i32 %58, label %194 [
    i32 131, label %59
    i32 136, label %59
    i32 138, label %72
    i32 137, label %85
    i32 135, label %94
    i32 134, label %99
    i32 133, label %104
    i32 139, label %109
    i32 132, label %130
    i32 129, label %151
    i32 128, label %164
    i32 130, label %181
  ]

59:                                               ; preds = %57, %57
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 10
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %20, align 4
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 10
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %21, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 10
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %23, align 4
  br label %196

72:                                               ; preds = %57
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 9
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %20, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 9
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %21, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 9
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %23, align 4
  br label %196

85:                                               ; preds = %57
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %20, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %22, align 4
  store i32 8000, i32* %21, align 4
  br label %196

94:                                               ; preds = %57
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %20, align 4
  br label %196

99:                                               ; preds = %57
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %20, align 4
  br label %196

104:                                              ; preds = %57
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %20, align 4
  br label %196

109:                                              ; preds = %57
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %20, align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %21, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %22, align 4
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @OMX_AUDIO_ChannelModeStereo, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 2, i32 1
  store i32 %129, i32* %20, align 4
  br label %196

130:                                              ; preds = %57
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %20, align 4
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %21, align 4
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %22, align 4
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @OMX_AUDIO_ChannelModeStereo, align 4
  %148 = icmp eq i32 %146, %147
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 2, i32 1
  store i32 %150, i32* %20, align 4
  br label %196

151:                                              ; preds = %57
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %20, align 4
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %22, align 4
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %21, align 4
  br label %196

164:                                              ; preds = %57
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %20, align 4
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %22, align 4
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %21, align 4
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %24, align 4
  br label %196

181:                                              ; preds = %57
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %20, align 4
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %21, align 4
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %23, align 4
  br label %196

194:                                              ; preds = %57
  %195 = load i64, i64* @OMX_ErrorBadParameter, align 8
  store i64 %195, i64* %10, align 8
  br label %228

196:                                              ; preds = %181, %164, %151, %130, %109, %104, %99, %94, %85, %72, %59
  %197 = load i32*, i32** %15, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, i32* %20, align 4
  %201 = load i32*, i32** %15, align 8
  store i32 %200, i32* %201, align 4
  br label %202

202:                                              ; preds = %199, %196
  %203 = load i32*, i32** %16, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i32, i32* %21, align 4
  %207 = load i32*, i32** %16, align 8
  store i32 %206, i32* %207, align 4
  br label %208

208:                                              ; preds = %205, %202
  %209 = load i32*, i32** %17, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load i32, i32* %22, align 4
  %213 = load i32*, i32** %17, align 8
  store i32 %212, i32* %213, align 4
  br label %214

214:                                              ; preds = %211, %208
  %215 = load i32*, i32** %18, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32, i32* %23, align 4
  %219 = load i32*, i32** %18, align 8
  store i32 %218, i32* %219, align 4
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i32*, i32** %19, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32, i32* %24, align 4
  %225 = load i32*, i32** %19, align 8
  store i32 %224, i32* %225, align 4
  br label %226

226:                                              ; preds = %223, %220
  %227 = load i64, i64* @OMX_ErrorNone, align 8
  store i64 %227, i64* %10, align 8
  br label %228

228:                                              ; preds = %226, %194, %55, %40
  %229 = load i64, i64* %10, align 8
  ret i64 %229
}

declare dso_local i32 @OMX_INIT_COMMON(i64) #1

declare dso_local i32 @GetAudioParamFormatIndex(i32) #1

declare dso_local i32 @GetAudioParamSize(i32) #1

declare dso_local i64 @OMX_GetParameter(i32, i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
