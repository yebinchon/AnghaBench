; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_epg.c_vout_FillRightPanel.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_epg.c_vout_FillRightPanel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { float, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i64, %struct.TYPE_13__*, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i64, float, i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_14__* }

@EPGOSD_TEXTSIZE_NAME = common dso_local global i32 0, align 4
@EPGOSD_TEXTSIZE_PROG = common dso_local global i32 0, align 4
@EPGOSD_TEXTSIZE_NTWK = common dso_local global i32 0, align 4
@RGB_COLOR1 = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_TOP = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__**)* @vout_FillRightPanel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vout_FillRightPanel(%struct.TYPE_15__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_14__** %7) #0 {
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__**, align 8
  %17 = alloca float, align 4
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.TYPE_14__** %7, %struct.TYPE_14__*** %16, align 8
  store float 0.000000e+00, float* %17, align 4
  %22 = load i32, i32* %15, align 4
  %23 = call i32 @VLC_UNUSED(i32 %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @EPGOSD_TEXTSIZE_NAME, align 4
  %33 = mul nsw i32 %31, %32
  %34 = call %struct.TYPE_14__* @vout_OSDEpgText(i8* %28, i32 %29, i32 %30, i32 %33, i32 16777215)
  %35 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %35, align 8
  %36 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = icmp ne %struct.TYPE_14__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %8
  %40 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  store %struct.TYPE_14__** %42, %struct.TYPE_14__*** %16, align 8
  br label %43

43:                                               ; preds = %39, %8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %19, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = icmp ne %struct.TYPE_13__* %53, null
  br i1 %54, label %70, label %55

55:                                               ; preds = %43
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %67, i64 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %18, align 8
  br label %70

70:                                               ; preds = %62, %55, %43
  store i64 0, i64* %20, align 8
  br label %71

71:                                               ; preds = %104, %70
  %72 = load i64, i64* %20, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %72, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %71
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %83, align 8
  %85 = load i64, i64* %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %84, i64 %85
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %79
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %98, align 8
  %100 = load i64, i64* %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %99, i64 %100
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  store %struct.TYPE_13__* %102, %struct.TYPE_13__** %19, align 8
  br label %107

103:                                              ; preds = %79
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %20, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %20, align 8
  br label %71

107:                                              ; preds = %94, %71
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %109 = icmp ne %struct.TYPE_13__* %108, null
  br i1 %109, label %110, label %135

110:                                              ; preds = %107
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @OSDEPG_ROW(i32 2)
  %116 = mul nsw i32 %114, %115
  %117 = add nsw i32 %113, %116
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @EPGOSD_TEXTSIZE_PROG, align 4
  %120 = mul nsw i32 %118, %119
  %121 = call %struct.TYPE_14__* @vout_OSDEpgEvent(%struct.TYPE_13__* %111, i32 %112, i32 %117, i32 %120)
  %122 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  store %struct.TYPE_14__* %121, %struct.TYPE_14__** %122, align 8
  %123 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @vout_OSDRegionConstrain(%struct.TYPE_14__* %124, i32 %125, i32 0)
  %127 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = icmp ne %struct.TYPE_14__* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %110
  %131 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  store %struct.TYPE_14__** %133, %struct.TYPE_14__*** %16, align 8
  br label %134

134:                                              ; preds = %130, %110
  br label %135

135:                                              ; preds = %134, %107
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %137 = icmp ne %struct.TYPE_13__* %136, null
  br i1 %137, label %138, label %163

138:                                              ; preds = %135
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @OSDEPG_ROW(i32 5)
  %144 = mul nsw i32 %142, %143
  %145 = add nsw i32 %141, %144
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* @EPGOSD_TEXTSIZE_PROG, align 4
  %148 = mul nsw i32 %146, %147
  %149 = call %struct.TYPE_14__* @vout_OSDEpgEvent(%struct.TYPE_13__* %139, i32 %140, i32 %145, i32 %148)
  %150 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  store %struct.TYPE_14__* %149, %struct.TYPE_14__** %150, align 8
  %151 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @vout_OSDRegionConstrain(%struct.TYPE_14__* %152, i32 %153, i32 0)
  %155 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = icmp ne %struct.TYPE_14__* %156, null
  br i1 %157, label %158, label %162

158:                                              ; preds = %138
  %159 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  store %struct.TYPE_14__** %161, %struct.TYPE_14__*** %16, align 8
  br label %162

162:                                              ; preds = %158, %138
  br label %163

163:                                              ; preds = %162, %135
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load float, float* %165, align 8
  %167 = fcmp une float %166, 0.000000e+00
  br i1 %167, label %168, label %189

168:                                              ; preds = %163
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load float, float* %170, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = load float, float* %177, align 8
  %179 = fsub float %171, %178
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = sitofp i64 %186 to float
  %188 = fdiv float %179, %187
  store float %188, float* %17, align 4
  br label %189

189:                                              ; preds = %168, %163
  %190 = load i32, i32* %10, align 4
  %191 = sitofp i32 %190 to double
  %192 = load i32, i32* %12, align 4
  %193 = sitofp i32 %192 to double
  %194 = fmul double %193, 5.000000e-02
  %195 = fadd double %191, %194
  %196 = fptosi double %195 to i32
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %13, align 4
  %199 = call i32 @OSDEPG_ROW(i32 9)
  %200 = mul nsw i32 %198, %199
  %201 = add nsw i32 %197, %200
  %202 = load i32, i32* %12, align 4
  %203 = sitofp i32 %202 to double
  %204 = fmul double %203, 9.000000e-01
  %205 = fptosi double %204 to i32
  %206 = load i32, i32* %13, align 4
  %207 = call i32 @OSDEPG_ROWS(i32 1)
  %208 = mul nsw i32 %206, %207
  %209 = load float, float* %17, align 4
  %210 = call %struct.TYPE_14__* @vout_OSDEpgSlider(i32 %196, i32 %201, i32 %205, i32 %208, float %209)
  %211 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  store %struct.TYPE_14__* %210, %struct.TYPE_14__** %211, align 8
  %212 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = icmp ne %struct.TYPE_14__* %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %189
  %216 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 1
  store %struct.TYPE_14__** %218, %struct.TYPE_14__*** %16, align 8
  br label %219

219:                                              ; preds = %215, %189
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = load float, float* %221, align 8
  %223 = fcmp une float %222, 0.000000e+00
  br i1 %223, label %224, label %262

224:                                              ; preds = %219
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 0
  %227 = load float, float* %226, align 8
  %228 = call i8* @vout_OSDPrintTime(float %227)
  store i8* %228, i8** %21, align 8
  %229 = load i8*, i8** %21, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %261

231:                                              ; preds = %224
  %232 = load i8*, i8** %21, align 8
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* %13, align 4
  %236 = call i32 @OSDEPG_ROW(i32 0)
  %237 = mul nsw i32 %235, %236
  %238 = add nsw i32 %234, %237
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* @EPGOSD_TEXTSIZE_NTWK, align 4
  %241 = mul nsw i32 %239, %240
  %242 = load i32, i32* @RGB_COLOR1, align 4
  %243 = call %struct.TYPE_14__* @vout_OSDEpgText(i8* %232, i32 %233, i32 %238, i32 %241, i32 %242)
  %244 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  store %struct.TYPE_14__* %243, %struct.TYPE_14__** %244, align 8
  %245 = load i8*, i8** %21, align 8
  %246 = call i32 @free(i8* %245)
  %247 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %247, align 8
  %249 = icmp ne %struct.TYPE_14__* %248, null
  br i1 %249, label %250, label %260

250:                                              ; preds = %231
  %251 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %252 = load i32, i32* @SUBPICTURE_ALIGN_RIGHT, align 4
  %253 = or i32 %251, %252
  %254 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  store i32 %253, i32* %256, align 8
  %257 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 1
  store %struct.TYPE_14__** %259, %struct.TYPE_14__*** %16, align 8
  br label %260

260:                                              ; preds = %250, %231
  br label %261

261:                                              ; preds = %260, %224
  br label %262

262:                                              ; preds = %261, %219
  ret void
}

declare dso_local i32 @VLC_UNUSED(i32) #1

declare dso_local %struct.TYPE_14__* @vout_OSDEpgText(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @vout_OSDEpgEvent(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @OSDEPG_ROW(i32) #1

declare dso_local i32 @vout_OSDRegionConstrain(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @vout_OSDEpgSlider(i32, i32, i32, i32, float) #1

declare dso_local i32 @OSDEPG_ROWS(i32) #1

declare dso_local i8* @vout_OSDPrintTime(float) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
