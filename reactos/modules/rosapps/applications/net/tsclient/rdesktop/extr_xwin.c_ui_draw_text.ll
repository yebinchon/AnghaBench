; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_draw_text.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_draw_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32* }

@MIX_OPAQUE = common dso_local global i32 0, align 4
@FillStippled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Skipping short 0xff command:\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Skipping short 0xfe command:\00", align 1
@TEXT2_IMPLICIT_X = common dso_local global i32 0, align 4
@TEXT2_VERTICAL = common dso_local global i32 0, align 4
@FillSolid = common dso_local global i32 0, align 4
@sw = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_draw_text(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32* %15, i32 %16, i32 %17, i32* %18, i32 %19) #0 {
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %21, align 8
  store i32 %1, i32* %22, align 4
  store i32 %2, i32* %23, align 4
  store i32 %3, i32* %24, align 4
  store i32 %4, i32* %25, align 4
  store i32 %5, i32* %26, align 4
  store i32 %6, i32* %27, align 4
  store i32 %7, i32* %28, align 4
  store i32 %8, i32* %29, align 4
  store i32 %9, i32* %30, align 4
  store i32 %10, i32* %31, align 4
  store i32 %11, i32* %32, align 4
  store i32 %12, i32* %33, align 4
  store i32 %13, i32* %34, align 4
  store i32 %14, i32* %35, align 4
  store i32* %15, i32** %36, align 8
  store i32 %16, i32* %37, align 4
  store i32 %17, i32* %38, align 4
  store i32* %18, i32** %39, align 8
  store i32 %19, i32* %40, align 4
  %48 = load i32, i32* %37, align 4
  %49 = call i32 @SET_FOREGROUND(i32 %48)
  %50 = load i32, i32* %32, align 4
  %51 = load i32, i32* %34, align 4
  %52 = add nsw i32 %50, %51
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %20
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %32, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %34, align 4
  br label %63

63:                                               ; preds = %57, %20
  %64 = load i32, i32* %34, align 4
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %32, align 4
  %68 = load i32, i32* %33, align 4
  %69 = load i32, i32* %34, align 4
  %70 = load i32, i32* %35, align 4
  %71 = call i32 @FILL_RECTANGLE_BACKSTORE(i32 %67, i32 %68, i32 %69, i32 %70)
  br label %83

72:                                               ; preds = %63
  %73 = load i32, i32* %25, align 4
  %74 = load i32, i32* @MIX_OPAQUE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, i32* %28, align 4
  %78 = load i32, i32* %29, align 4
  %79 = load i32, i32* %30, align 4
  %80 = load i32, i32* %31, align 4
  %81 = call i32 @FILL_RECTANGLE_BACKSTORE(i32 %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %72
  br label %83

83:                                               ; preds = %82, %66
  %84 = load i32, i32* %38, align 4
  %85 = call i32 @SET_FOREGROUND(i32 %84)
  %86 = load i32, i32* %37, align 4
  %87 = call i32 @SET_BACKGROUND(i32 %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @FillStippled, align 4
  %96 = call i32 @XSetFillStyle(i32 %90, i32 %94, i32 %95)
  store i32 0, i32* %42, align 4
  br label %97

97:                                               ; preds = %278, %83
  %98 = load i32, i32* %42, align 4
  %99 = load i32, i32* %40, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %279

101:                                              ; preds = %97
  %102 = load i32*, i32** %39, align 8
  %103 = load i32, i32* %42, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %272 [
    i32 255, label %107
    i32 254, label %157
  ]

107:                                              ; preds = %101
  %108 = load i32, i32* %42, align 4
  %109 = add nsw i32 %108, 3
  %110 = load i32, i32* %40, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %132

112:                                              ; preds = %107
  %113 = call i32 @warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %43, align 4
  br label %114

114:                                              ; preds = %126, %112
  %115 = load i32, i32* %43, align 4
  %116 = load i32, i32* %40, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %114
  %119 = load i32, i32* @stderr, align 4
  %120 = load i32*, i32** %39, align 8
  %121 = load i32, i32* %43, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %118
  %127 = load i32, i32* %43, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %43, align 4
  br label %114

129:                                              ; preds = %114
  %130 = load i32, i32* @stderr, align 4
  %131 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %40, align 4
  store i32 0, i32* %42, align 4
  br label %278

132:                                              ; preds = %107
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %134 = load i32*, i32** %39, align 8
  %135 = load i32, i32* %42, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %39, align 8
  %141 = load i32*, i32** %39, align 8
  %142 = load i32, i32* %42, align 4
  %143 = add nsw i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @cache_put_text(%struct.TYPE_10__* %133, i32 %139, i32* %140, i32 %146)
  %148 = load i32, i32* %42, align 4
  %149 = add nsw i32 %148, 3
  store i32 %149, i32* %42, align 4
  %150 = load i32, i32* %42, align 4
  %151 = load i32, i32* %40, align 4
  %152 = sub nsw i32 %151, %150
  store i32 %152, i32* %40, align 4
  %153 = load i32*, i32** %39, align 8
  %154 = load i32, i32* %42, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32* %156, i32** %39, align 8
  store i32 0, i32* %42, align 4
  br label %278

157:                                              ; preds = %101
  %158 = load i32, i32* %42, align 4
  %159 = add nsw i32 %158, 2
  %160 = load i32, i32* %40, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %182

162:                                              ; preds = %157
  %163 = call i32 @warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %43, align 4
  br label %164

164:                                              ; preds = %176, %162
  %165 = load i32, i32* %43, align 4
  %166 = load i32, i32* %40, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %164
  %169 = load i32, i32* @stderr, align 4
  %170 = load i32*, i32** %39, align 8
  %171 = load i32, i32* %43, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %168
  %177 = load i32, i32* %43, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %43, align 4
  br label %164

179:                                              ; preds = %164
  %180 = load i32, i32* @stderr, align 4
  %181 = call i32 (i32, i8*, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %40, align 4
  store i32 0, i32* %42, align 4
  br label %278

182:                                              ; preds = %157
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %184 = load i32*, i32** %39, align 8
  %185 = load i32, i32* %42, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call %struct.TYPE_11__* @cache_get_text(%struct.TYPE_10__* %183, i32 %189)
  store %struct.TYPE_11__* %190, %struct.TYPE_11__** %47, align 8
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %253

195:                                              ; preds = %182
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %236

202:                                              ; preds = %195
  %203 = load i32, i32* %23, align 4
  %204 = load i32, i32* @TEXT2_IMPLICIT_X, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %236, label %207

207:                                              ; preds = %202
  %208 = load i32, i32* %42, align 4
  %209 = add nsw i32 %208, 2
  %210 = load i32, i32* %40, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %236

212:                                              ; preds = %207
  %213 = load i32, i32* %23, align 4
  %214 = load i32, i32* @TEXT2_VERTICAL, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %212
  %218 = load i32*, i32** %39, align 8
  %219 = load i32, i32* %42, align 4
  %220 = add nsw i32 %219, 2
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %218, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %27, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* %27, align 4
  br label %235

226:                                              ; preds = %212
  %227 = load i32*, i32** %39, align 8
  %228 = load i32, i32* %42, align 4
  %229 = add nsw i32 %228, 2
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %227, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %26, align 4
  %234 = add nsw i32 %233, %232
  store i32 %234, i32* %26, align 4
  br label %235

235:                                              ; preds = %226, %217
  br label %236

236:                                              ; preds = %235, %207, %202, %195
  store i32 0, i32* %43, align 4
  br label %237

237:                                              ; preds = %249, %236
  %238 = load i32, i32* %43, align 4
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp slt i32 %238, %241
  br i1 %242, label %243, label %252

243:                                              ; preds = %237
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %43, align 4
  %248 = call i32 @DO_GLYPH(i32* %246, i32 %247)
  br label %249

249:                                              ; preds = %243
  %250 = load i32, i32* %43, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %43, align 4
  br label %237

252:                                              ; preds = %237
  br label %253

253:                                              ; preds = %252, %182
  %254 = load i32, i32* %42, align 4
  %255 = add nsw i32 %254, 2
  %256 = load i32, i32* %40, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = load i32, i32* %42, align 4
  %260 = add nsw i32 %259, 3
  store i32 %260, i32* %42, align 4
  br label %264

261:                                              ; preds = %253
  %262 = load i32, i32* %42, align 4
  %263 = add nsw i32 %262, 2
  store i32 %263, i32* %42, align 4
  br label %264

264:                                              ; preds = %261, %258
  %265 = load i32, i32* %42, align 4
  %266 = load i32, i32* %40, align 4
  %267 = sub nsw i32 %266, %265
  store i32 %267, i32* %40, align 4
  %268 = load i32*, i32** %39, align 8
  %269 = load i32, i32* %42, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  store i32* %271, i32** %39, align 8
  store i32 0, i32* %42, align 4
  br label %278

272:                                              ; preds = %101
  %273 = load i32*, i32** %39, align 8
  %274 = load i32, i32* %42, align 4
  %275 = call i32 @DO_GLYPH(i32* %273, i32 %274)
  %276 = load i32, i32* %42, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %42, align 4
  br label %278

278:                                              ; preds = %272, %264, %179, %132, %129
  br label %97

279:                                              ; preds = %97
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @FillSolid, align 4
  %288 = call i32 @XSetFillStyle(i32 %282, i32 %286, i32 %287)
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 4
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %405

293:                                              ; preds = %279
  %294 = load i32, i32* %34, align 4
  %295 = icmp sgt i32 %294, 1
  br i1 %295, label %296, label %350

296:                                              ; preds = %293
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* %32, align 4
  %312 = load i32, i32* %33, align 4
  %313 = load i32, i32* %34, align 4
  %314 = load i32, i32* %35, align 4
  %315 = load i32, i32* %32, align 4
  %316 = load i32, i32* %33, align 4
  %317 = call i32 @XCopyArea(i32 %299, i32 %303, i32 %306, i32 %310, i32 %311, i32 %312, i32 %313, i32 %314, i32 %315, i32 %316)
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sw, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %32, align 4
  %333 = load i32, i32* %33, align 4
  %334 = load i32, i32* %34, align 4
  %335 = load i32, i32* %35, align 4
  %336 = load i32, i32* %32, align 4
  %337 = sext i32 %336 to i64
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sw, align 8
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = sub nsw i64 %337, %340
  %342 = load i32, i32* %33, align 4
  %343 = sext i32 %342 to i64
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sw, align 8
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = sub nsw i64 %343, %346
  %348 = trunc i64 %347 to i32
  %349 = call i32 @ON_ALL_SEAMLESS_WINDOWS(i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @XCopyArea, i32 %348)
  br label %404

350:                                              ; preds = %293
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* %28, align 4
  %366 = load i32, i32* %29, align 4
  %367 = load i32, i32* %30, align 4
  %368 = load i32, i32* %31, align 4
  %369 = load i32, i32* %28, align 4
  %370 = load i32, i32* %29, align 4
  %371 = call i32 @XCopyArea(i32 %353, i32 %357, i32 %360, i32 %364, i32 %365, i32 %366, i32 %367, i32 %368, i32 %369, i32 %370)
  %372 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %376 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sw, align 8
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* %28, align 4
  %387 = load i32, i32* %29, align 4
  %388 = load i32, i32* %30, align 4
  %389 = load i32, i32* %31, align 4
  %390 = load i32, i32* %28, align 4
  %391 = sext i32 %390 to i64
  %392 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sw, align 8
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 1
  %394 = load i64, i64* %393, align 8
  %395 = sub nsw i64 %391, %394
  %396 = load i32, i32* %29, align 4
  %397 = sext i32 %396 to i64
  %398 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sw, align 8
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = sub nsw i64 %397, %400
  %402 = trunc i64 %401 to i32
  %403 = call i32 @ON_ALL_SEAMLESS_WINDOWS(i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @XCopyArea, i32 %402)
  br label %404

404:                                              ; preds = %350, %296
  br label %405

405:                                              ; preds = %404, %279
  ret void
}

declare dso_local i32 @SET_FOREGROUND(i32) #1

declare dso_local i32 @FILL_RECTANGLE_BACKSTORE(i32, i32, i32, i32) #1

declare dso_local i32 @SET_BACKGROUND(i32) #1

declare dso_local i32 @XSetFillStyle(i32, i32, i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @cache_put_text(%struct.TYPE_10__*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_11__* @cache_get_text(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @DO_GLYPH(i32*, i32) #1

declare dso_local i32 @XCopyArea(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ON_ALL_SEAMLESS_WINDOWS(i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
