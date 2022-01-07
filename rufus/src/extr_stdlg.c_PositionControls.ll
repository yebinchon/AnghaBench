; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdlg.c_PositionControls.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdlg.c_PositionControls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@IDS_UPDATE_FREQUENCY_TXT = common dso_local global i32 0, align 4
@IDS_INCLUDE_BETAS_TXT = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@update_settings_reposition_ids = common dso_local global i32* null, align 8
@IDC_UPDATE_FREQUENCY = common dso_local global i32 0, align 4
@MSG_013 = common dso_local global i32 0, align 4
@MSG_030 = common dso_local global i32 0, align 4
@MSG_014 = common dso_local global i32 0, align 4
@MSG_015 = common dso_local global i32 0, align 4
@MSG_016 = common dso_local global i32 0, align 4
@MSG_008 = common dso_local global i32 0, align 4
@MSG_009 = common dso_local global i32 0, align 4
@ddw = common dso_local global i32 0, align 4
@IDC_CHECK_NOW = common dso_local global i32 0, align 4
@cbw = common dso_local global i32 0, align 4
@IDCANCEL = common dso_local global i32 0, align 4
@GW_HWNDPREV = common dso_local global i32 0, align 4
@ddbh = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @PositionControls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PositionControls(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca %struct.TYPE_5__, align 4
  %12 = alloca %struct.TYPE_5__, align 4
  %13 = alloca %struct.TYPE_5__, align 4
  %14 = alloca %struct.TYPE_5__, align 4
  store i32* %0, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @IDS_UPDATE_FREQUENCY_TXT, align 4
  %17 = call i32* @GetDlgItem(i32* %15, i32 %16)
  %18 = call i32 @GetWindowRect(i32* %17, %struct.TYPE_4__* %3)
  %19 = load i32*, i32** %2, align 8
  %20 = bitcast %struct.TYPE_4__* %3 to i32*
  %21 = call i32 @MapWindowPoints(i32* null, i32* %19, i32* %20, i32 2)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %23, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @IDS_UPDATE_FREQUENCY_TXT, align 4
  %29 = call i32 @GetTextWidth(i32* %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @IDS_INCLUDE_BETAS_TXT, align 4
  %35 = call i32 @GetTextWidth(i32* %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  %38 = call i32 @max(i32 %32, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %93

41:                                               ; preds = %1
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @GetWindowRect(i32* %42, %struct.TYPE_4__* %3)
  %44 = load i32*, i32** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %46, %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %49, %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %53, %56
  %58 = load i32, i32* @SWP_NOMOVE, align 4
  %59 = load i32, i32* @SWP_NOZORDER, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @SetWindowPos(i32* %44, i32* null, i32 -1, i32 -1, i32 %51, i64 %57, i32 %60)
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %89, %41
  %63 = load i32, i32* %6, align 4
  %64 = load i32*, i32** @update_settings_reposition_ids, align 8
  %65 = call i32 @ARRAYSIZE(i32* %64)
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %62
  %68 = load i32*, i32** %2, align 8
  %69 = load i32*, i32** @update_settings_reposition_ids, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 4
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %79

77:                                               ; preds = %67
  %78 = load i32, i32* %8, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = phi i32 [ 0, %76 ], [ %78, %77 ]
  %81 = load i32, i32* %6, align 4
  %82 = icmp sge i32 %81, 4
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4
  br label %86

86:                                               ; preds = %84, %83
  %87 = phi i32 [ 0, %83 ], [ %85, %84 ]
  %88 = call i32 @Reposition(i32* %68, i32 %73, i32 %80, i32 %87)
  br label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %62

92:                                               ; preds = %62
  br label %93

93:                                               ; preds = %92, %1
  %94 = load i32*, i32** %2, align 8
  %95 = load i32, i32* @IDC_UPDATE_FREQUENCY, align 4
  %96 = call i32* @GetDlgItem(i32* %94, i32 %95)
  store i32* %96, i32** %4, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @GetWindowRect(i32* %97, %struct.TYPE_4__* %3)
  %99 = load i32*, i32** %2, align 8
  %100 = bitcast %struct.TYPE_4__* %3 to i32*
  %101 = call i32 @MapWindowPoints(i32* null, i32* %99, i32* %100, i32 2)
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %103, %105
  store i32 %106, i32* %7, align 4
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* @MSG_013, align 4
  %109 = call i32 (i32, ...) @lmprintf(i32 %108)
  %110 = call i32 @GetTextSize(i32* %107, i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* @MSG_030, align 4
  %117 = load i32, i32* @MSG_014, align 4
  %118 = call i32 (i32, ...) @lmprintf(i32 %117)
  %119 = call i32 (i32, ...) @lmprintf(i32 %116, i32 %118)
  %120 = call i32 @GetTextSize(i32* %115, i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %120, i32* %121, align 4
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @max(i32 %114, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* @MSG_015, align 4
  %128 = call i32 (i32, ...) @lmprintf(i32 %127)
  %129 = call i32 @GetTextSize(i32* %126, i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @max(i32 %125, i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* @MSG_016, align 4
  %137 = call i32 (i32, ...) @lmprintf(i32 %136)
  %138 = call i32 @GetTextSize(i32* %135, i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %138, i32* %139, align 4
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @max(i32 %134, i32 %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* @MSG_008, align 4
  %146 = call i32 (i32, ...) @lmprintf(i32 %145)
  %147 = call i32 @GetTextSize(i32* %144, i32 %146)
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %147, i32* %148, align 4
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @max(i32 %143, i32 %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32*, i32** %4, align 8
  %154 = load i32, i32* @MSG_009, align 4
  %155 = call i32 (i32, ...) @lmprintf(i32 %154)
  %156 = call i32 @GetTextSize(i32* %153, i32 %155)
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %156, i32* %157, align 4
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @max(i32 %152, i32 %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @ddw, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load i32, i32* %8, align 4
  %165 = sub nsw i32 %164, %163
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %227

168:                                              ; preds = %93
  %169 = load i32*, i32** %2, align 8
  %170 = call i32 @GetWindowRect(i32* %169, %struct.TYPE_4__* %3)
  %171 = load i32*, i32** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %173, %175
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %176, %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = sub nsw i64 %180, %183
  %185 = load i32, i32* @SWP_NOMOVE, align 4
  %186 = load i32, i32* @SWP_NOZORDER, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @SetWindowPos(i32* %171, i32* null, i32 -1, i32 -1, i32 %178, i64 %184, i32 %187)
  store i32 0, i32* %6, align 4
  br label %189

189:                                              ; preds = %223, %168
  %190 = load i32, i32* %6, align 4
  %191 = load i32*, i32** @update_settings_reposition_ids, align 8
  %192 = call i32 @ARRAYSIZE(i32* %191)
  %193 = icmp slt i32 %190, %192
  br i1 %193, label %194, label %226

194:                                              ; preds = %189
  %195 = load i32, i32* %6, align 4
  %196 = icmp sge i32 %195, 2
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = load i32, i32* %6, align 4
  %199 = icmp sle i32 %198, 3
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  br label %223

201:                                              ; preds = %197, %194
  %202 = load i32*, i32** %2, align 8
  %203 = load i32*, i32** @update_settings_reposition_ids, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %6, align 4
  %209 = icmp slt i32 %208, 6
  br i1 %209, label %210, label %211

210:                                              ; preds = %201
  br label %213

211:                                              ; preds = %201
  %212 = load i32, i32* %8, align 4
  br label %213

213:                                              ; preds = %211, %210
  %214 = phi i32 [ 0, %210 ], [ %212, %211 ]
  %215 = load i32, i32* %6, align 4
  %216 = icmp sge i32 %215, 6
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  br label %220

218:                                              ; preds = %213
  %219 = load i32, i32* %8, align 4
  br label %220

220:                                              ; preds = %218, %217
  %221 = phi i32 [ 0, %217 ], [ %219, %218 ]
  %222 = call i32 @Reposition(i32* %202, i32 %207, i32 %214, i32 %221)
  br label %223

223:                                              ; preds = %220, %200
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %6, align 4
  br label %189

226:                                              ; preds = %189
  br label %227

227:                                              ; preds = %226, %93
  %228 = load i32*, i32** %2, align 8
  %229 = load i32, i32* @IDC_CHECK_NOW, align 4
  %230 = call i32* @GetDlgItem(i32* %228, i32 %229)
  %231 = call i32 @GetWindowRect(i32* %230, %struct.TYPE_4__* %3)
  %232 = load i32*, i32** %2, align 8
  %233 = bitcast %struct.TYPE_4__* %3 to i32*
  %234 = call i32 @MapWindowPoints(i32* null, i32* %232, i32* %233, i32 2)
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = sub nsw i32 %236, %238
  store i32 %239, i32* %7, align 4
  %240 = load i32*, i32** %2, align 8
  %241 = load i32, i32* @IDC_CHECK_NOW, align 4
  %242 = call i32 @GetTextWidth(i32* %240, i32 %241)
  %243 = load i32, i32* %7, align 4
  %244 = sub nsw i32 %242, %243
  %245 = load i32, i32* @cbw, align 4
  %246 = add nsw i32 %244, %245
  store i32 %246, i32* %8, align 4
  %247 = load i32, i32* %8, align 4
  %248 = load i32*, i32** %2, align 8
  %249 = load i32, i32* @IDCANCEL, align 4
  %250 = call i32 @GetTextWidth(i32* %248, i32 %249)
  %251 = load i32, i32* %7, align 4
  %252 = sub nsw i32 %250, %251
  %253 = load i32, i32* @cbw, align 4
  %254 = add nsw i32 %252, %253
  %255 = call i32 @max(i32 %247, i32 %254)
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* %8, align 4
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %304

258:                                              ; preds = %227
  %259 = load i32*, i32** %2, align 8
  %260 = call i32 @GetWindowRect(i32* %259, %struct.TYPE_4__* %3)
  %261 = load i32*, i32** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = sub nsw i32 %263, %265
  %267 = load i32, i32* %8, align 4
  %268 = add nsw i32 %266, %267
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = sub nsw i64 %270, %273
  %275 = load i32, i32* @SWP_NOMOVE, align 4
  %276 = load i32, i32* @SWP_NOZORDER, align 4
  %277 = or i32 %275, %276
  %278 = call i32 @SetWindowPos(i32* %261, i32* null, i32 -1, i32 -1, i32 %268, i64 %274, i32 %277)
  store i32 0, i32* %6, align 4
  br label %279

279:                                              ; preds = %300, %258
  %280 = load i32, i32* %6, align 4
  %281 = load i32*, i32** @update_settings_reposition_ids, align 8
  %282 = call i32 @ARRAYSIZE(i32* %281)
  %283 = icmp slt i32 %280, %282
  br i1 %283, label %284, label %303

284:                                              ; preds = %279
  %285 = load i32, i32* %6, align 4
  %286 = icmp sge i32 %285, 1
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = load i32, i32* %6, align 4
  %289 = icmp sle i32 %288, 5
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  br label %300

291:                                              ; preds = %287, %284
  %292 = load i32*, i32** %2, align 8
  %293 = load i32*, i32** @update_settings_reposition_ids, align 8
  %294 = load i32, i32* %6, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %8, align 4
  %299 = call i32 @Reposition(i32* %292, i32 %297, i32 0, i32 %298)
  br label %300

300:                                              ; preds = %291, %290
  %301 = load i32, i32* %6, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %6, align 4
  br label %279

303:                                              ; preds = %279
  br label %304

304:                                              ; preds = %303, %227
  %305 = load i32*, i32** %2, align 8
  %306 = load i32, i32* @IDC_CHECK_NOW, align 4
  %307 = call i32* @GetDlgItem(i32* %305, i32 %306)
  store i32* %307, i32** %4, align 8
  %308 = load i32*, i32** %4, align 8
  %309 = call i32 @GetWindowRect(i32* %308, %struct.TYPE_4__* %3)
  %310 = load i32*, i32** %2, align 8
  %311 = bitcast %struct.TYPE_4__* %3 to i32*
  %312 = call i32 @MapWindowPoints(i32* null, i32* %310, i32* %311, i32 2)
  %313 = load i32*, i32** %4, align 8
  %314 = load i32, i32* @GW_HWNDPREV, align 4
  %315 = call i32* @GetNextWindow(i32* %313, i32 %314)
  store i32* %315, i32** %5, align 8
  %316 = load i32*, i32** %4, align 8
  %317 = load i32*, i32** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = sub nsw i32 %323, %325
  %327 = load i64, i64* @ddbh, align 8
  %328 = call i32 @SetWindowPos(i32* %316, i32* %317, i32 %319, i32 %321, i32 %326, i64 %327, i32 0)
  %329 = load i32*, i32** %2, align 8
  %330 = load i32, i32* @IDCANCEL, align 4
  %331 = call i32* @GetDlgItem(i32* %329, i32 %330)
  store i32* %331, i32** %4, align 8
  %332 = load i32*, i32** %4, align 8
  %333 = call i32 @GetWindowRect(i32* %332, %struct.TYPE_4__* %3)
  %334 = load i32*, i32** %2, align 8
  %335 = bitcast %struct.TYPE_4__* %3 to i32*
  %336 = call i32 @MapWindowPoints(i32* null, i32* %334, i32* %335, i32 2)
  %337 = load i32*, i32** %4, align 8
  %338 = load i32, i32* @GW_HWNDPREV, align 4
  %339 = call i32* @GetNextWindow(i32* %337, i32 %338)
  store i32* %339, i32** %5, align 8
  %340 = load i32*, i32** %4, align 8
  %341 = load i32*, i32** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = sub nsw i32 %347, %349
  %351 = load i64, i64* @ddbh, align 8
  %352 = call i32 @SetWindowPos(i32* %340, i32* %341, i32 %343, i32 %345, i32 %350, i64 %351, i32 0)
  ret void
}

declare dso_local i32 @GetWindowRect(i32*, %struct.TYPE_4__*) #1

declare dso_local i32* @GetDlgItem(i32*, i32) #1

declare dso_local i32 @MapWindowPoints(i32*, i32*, i32*, i32) #1

declare dso_local i32 @GetTextWidth(i32*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @SetWindowPos(i32*, i32*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @Reposition(i32*, i32, i32, i32) #1

declare dso_local i32 @GetTextSize(i32*, i32) #1

declare dso_local i32 @lmprintf(i32, ...) #1

declare dso_local i32* @GetNextWindow(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
