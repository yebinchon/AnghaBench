; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_algo_ivtc.c_IVTCCadenceDetectAlgoVektor.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_algo_ivtc.c_IVTCCadenceDetectAlgoVektor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_7__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32*, i32*, i32*, i32*, i64* }

@pi_detected_pos_to_bitmask = common dso_local global i32* null, align 8
@CADENCE_POS_PROGRESSIVE = common dso_local global i64 0, align 8
@IVTC_LATEST = common dso_local global i64 0, align 8
@CADENCE_POS_TFF_EAB = common dso_local global i64 0, align 8
@CADENCE_POS_BFF_BCD = common dso_local global i64 0, align 8
@CADENCE_POS_TFF_ABC = common dso_local global i64 0, align 8
@CADENCE_POS_BFF_CDE = common dso_local global i64 0, align 8
@CADENCE_POS_TFF_BCD = common dso_local global i64 0, align 8
@CADENCE_POS_BFF_EAB = common dso_local global i64 0, align 8
@CADENCE_POS_TFF_CDE = common dso_local global i64 0, align 8
@CADENCE_POS_BFF_ABC = common dso_local global i64 0, align 8
@VEKTOR_CADENCE_POS_TFF = common dso_local global i32 0, align 4
@VEKTOR_CADENCE_POS_BFF = common dso_local global i32 0, align 4
@VEKTOR_CADENCE_POS_TFF_HIGH = common dso_local global i32 0, align 4
@VEKTOR_CADENCE_POS_BFF_HIGH = common dso_local global i32 0, align 4
@VEKTOR_CADENCE_POS_ALL = common dso_local global i32 0, align 4
@VEKTOR_CADENCE_POS_TFF_LOW = common dso_local global i32 0, align 4
@VEKTOR_CADENCE_POS_BFF_LOW = common dso_local global i32 0, align 4
@CADENCE_POS_INVALID = common dso_local global i64 0, align 8
@NUM_CADENCE_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @IVTCCadenceDetectAlgoVektor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IVTCCadenceDetectAlgoVektor(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %3, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %4, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %29, i64 2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %5, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  store i32 0, i32* %6, align 4
  %36 = load i32*, i32** @pi_detected_pos_to_bitmask, align 8
  %37 = load i64, i64* @CADENCE_POS_PROGRESSIVE, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @IVTC_LATEST, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @IVTC_LATEST, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @IVTC_LATEST, align 8
  %58 = sub i64 %57, 1
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @IVTC_LATEST, align 8
  %65 = sub i64 %64, 1
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %1
  %71 = load i32*, i32** @pi_detected_pos_to_bitmask, align 8
  %72 = load i64, i64* @CADENCE_POS_TFF_EAB, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32*, i32** @pi_detected_pos_to_bitmask, align 8
  %78 = load i64, i64* @CADENCE_POS_BFF_BCD, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %70, %1
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = load i32*, i32** @pi_detected_pos_to_bitmask, align 8
  %88 = load i64, i64* @CADENCE_POS_TFF_ABC, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i32*, i32** @pi_detected_pos_to_bitmask, align 8
  %94 = load i64, i64* @CADENCE_POS_BFF_CDE, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %86, %83
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load i32*, i32** @pi_detected_pos_to_bitmask, align 8
  %104 = load i64, i64* @CADENCE_POS_TFF_BCD, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %6, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %6, align 4
  %109 = load i32*, i32** @pi_detected_pos_to_bitmask, align 8
  %110 = load i64, i64* @CADENCE_POS_BFF_EAB, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %6, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %102, %99
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %115
  %119 = load i32*, i32** @pi_detected_pos_to_bitmask, align 8
  %120 = load i64, i64* @CADENCE_POS_TFF_CDE, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %6, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %6, align 4
  %125 = load i32*, i32** @pi_detected_pos_to_bitmask, align 8
  %126 = load i64, i64* @CADENCE_POS_BFF_ABC, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %6, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %118, %115
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i32, i32* @VEKTOR_CADENCE_POS_TFF, align 4
  %139 = load i32, i32* %6, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %6, align 4
  br label %145

141:                                              ; preds = %131
  %142 = load i32, i32* @VEKTOR_CADENCE_POS_BFF, align 4
  %143 = load i32, i32* %6, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %141, %137
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* @IVTC_LATEST, align 8
  %150 = sub i64 %149, 1
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @VEKTOR_CADENCE_POS_TFF_HIGH, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %145
  store i32 1, i32* %13, align 4
  br label %158

158:                                              ; preds = %157, %145
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @VEKTOR_CADENCE_POS_BFF_HIGH, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  store i32 1, i32* %14, align 4
  br label %164

164:                                              ; preds = %163, %158
  %165 = load i32, i32* %12, align 4
  %166 = shl i32 %165, 1
  %167 = load i32, i32* @VEKTOR_CADENCE_POS_ALL, align 4
  %168 = and i32 %166, %167
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %164
  %172 = load i32, i32* @VEKTOR_CADENCE_POS_TFF_LOW, align 4
  %173 = load i32, i32* %12, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %12, align 4
  br label %175

175:                                              ; preds = %171, %164
  %176 = load i32, i32* %14, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load i32, i32* @VEKTOR_CADENCE_POS_BFF_LOW, align 4
  %180 = load i32, i32* %12, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %12, align 4
  br label %182

182:                                              ; preds = %178, %175
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* %12, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %12, align 4
  %190 = and i32 %188, %189
  store i32 %190, i32* %6, align 4
  br label %193

191:                                              ; preds = %182
  %192 = load i32, i32* @VEKTOR_CADENCE_POS_ALL, align 4
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %191, %187
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* @IVTC_LATEST, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  store i32 %194, i32* %199, align 4
  %200 = load i64, i64* @CADENCE_POS_INVALID, align 8
  store i64 %200, i64* %15, align 8
  %201 = load i32, i32* %6, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %226

203:                                              ; preds = %193
  store i32 0, i32* %16, align 4
  br label %204

204:                                              ; preds = %222, %203
  %205 = load i32, i32* %16, align 4
  %206 = load i32, i32* @NUM_CADENCE_POS, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %225

208:                                              ; preds = %204
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* %6, align 4
  %211 = load i32*, i32** @pi_detected_pos_to_bitmask, align 8
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = and i32 %210, %215
  %217 = icmp eq i32 %209, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %208
  %219 = load i32, i32* %16, align 4
  %220 = sext i32 %219 to i64
  store i64 %220, i64* %15, align 8
  br label %225

221:                                              ; preds = %208
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %16, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %16, align 4
  br label %204

225:                                              ; preds = %218, %204
  br label %226

226:                                              ; preds = %225, %193
  %227 = load i64, i64* %15, align 8
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 4
  %230 = load i64*, i64** %229, align 8
  %231 = load i64, i64* @IVTC_LATEST, align 8
  %232 = getelementptr inbounds i64, i64* %230, i64 %231
  store i64 %227, i64* %232, align 8
  %233 = load i64, i64* %15, align 8
  %234 = load i64, i64* @CADENCE_POS_INVALID, align 8
  %235 = icmp ne i64 %233, %234
  %236 = zext i1 %235 to i32
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 3
  %239 = load i32*, i32** %238, align 8
  %240 = load i64, i64* @IVTC_LATEST, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32 %236, i32* %241, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
