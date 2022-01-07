; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_PaintLine.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_PaintLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i64, i64, i64, i32, %struct.TYPE_13__, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_11__* }

@ES_MULTILINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"line=%d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ES_RIGHT = common dso_local global i32 0, align 4
@ES_CENTER = common dso_local global i32 0, align 4
@EF_FOCUSED = common dso_local global i32 0, align 4
@ES_NOHIDESEL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, i64, i64)* @EDIT_PaintLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_PaintLine(%struct.TYPE_12__* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ES_MULTILINE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = call i64 @get_vertical_line_count(%struct.TYPE_12__* %29)
  store i64 %30, i64* %17, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %50, label %36

36:                                               ; preds = %28
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %17, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp sgt i64 %37, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %36, %28
  br label %307

51:                                               ; preds = %44
  br label %57

52:                                               ; preds = %4
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %307

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %51
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @EDIT_UpdateUniscribeData(%struct.TYPE_12__* %60, i32 %61, i64 %62)
  store i64 %63, i64* %16, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @EDIT_EM_LineIndex(%struct.TYPE_12__* %65, i64 %66)
  %68 = load i32, i32* @FALSE, align 4
  %69 = call i32 @EDIT_EM_PosFromChar(%struct.TYPE_12__* %64, i64 %67, i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i64 @LOWORD(i32 %70)
  %72 = trunc i64 %71 to i16
  %73 = sext i16 %72 to i64
  store i64 %73, i64* %13, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i64 @HIWORD(i32 %74)
  %76 = trunc i64 %75 to i16
  %77 = sext i16 %76 to i64
  store i64 %77, i64* %14, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ES_MULTILINE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %174

84:                                               ; preds = %57
  %85 = load i64, i64* %7, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %18, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 0, %89
  store i64 %90, i64* %13, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ES_RIGHT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %84
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ES_CENTER, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %166

104:                                              ; preds = %97, %84
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** %19, align 8
  br label %108

108:                                              ; preds = %116, %104
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %110 = icmp ne %struct.TYPE_11__* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* %18, align 4
  %113 = icmp ne i32 %112, 0
  br label %114

114:                                              ; preds = %111, %108
  %115 = phi i1 [ false, %108 ], [ %113, %111 ]
  br i1 %115, label %116, label %122

116:                                              ; preds = %114
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  store %struct.TYPE_11__* %119, %struct.TYPE_11__** %19, align 8
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %18, align 4
  br label %108

122:                                              ; preds = %114
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %126, %130
  store i32 %131, i32* %20, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %21, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @ES_RIGHT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %122
  %142 = load i32, i32* %20, align 4
  %143 = sext i32 %142 to i64
  %144 = load i32, i32* %21, align 4
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %13, align 8
  %147 = sub nsw i64 %145, %146
  %148 = sub nsw i64 %143, %147
  store i64 %148, i64* %13, align 8
  br label %165

149:                                              ; preds = %122
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @ES_CENTER, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %149
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* %21, align 4
  %159 = sub nsw i32 %157, %158
  %160 = sdiv i32 %159, 2
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* %13, align 8
  %163 = add nsw i64 %162, %161
  store i64 %163, i64* %13, align 8
  br label %164

164:                                              ; preds = %156, %149
  br label %165

165:                                              ; preds = %164, %141
  br label %166

166:                                              ; preds = %165, %97
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = load i64, i64* %13, align 8
  %173 = add nsw i64 %172, %171
  store i64 %173, i64* %13, align 8
  br label %174

174:                                              ; preds = %166, %57
  %175 = load i64, i64* %8, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %212

177:                                              ; preds = %174
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %179 = load i64, i64* %7, align 8
  %180 = call i64 @EDIT_EM_LineIndex(%struct.TYPE_12__* %178, i64 %179)
  store i64 %180, i64* %11, align 8
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %182 = load i64, i64* %11, align 8
  %183 = call i64 @EDIT_EM_LineLength(%struct.TYPE_12__* %181, i64 %182)
  store i64 %183, i64* %12, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = call i64 @min(i64 %186, i64 %189)
  store i64 %190, i64* %9, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 5
  %196 = load i64, i64* %195, align 8
  %197 = call i64 @max(i64 %193, i64 %196)
  store i64 %197, i64* %10, align 8
  %198 = load i64, i64* %11, align 8
  %199 = load i64, i64* %12, align 8
  %200 = add nsw i64 %198, %199
  %201 = load i64, i64* %11, align 8
  %202 = load i64, i64* %9, align 8
  %203 = call i64 @max(i64 %201, i64 %202)
  %204 = call i64 @min(i64 %200, i64 %203)
  store i64 %204, i64* %9, align 8
  %205 = load i64, i64* %11, align 8
  %206 = load i64, i64* %12, align 8
  %207 = add nsw i64 %205, %206
  %208 = load i64, i64* %11, align 8
  %209 = load i64, i64* %10, align 8
  %210 = call i64 @max(i64 %208, i64 %209)
  %211 = call i64 @min(i64 %207, i64 %210)
  store i64 %211, i64* %10, align 8
  br label %212

212:                                              ; preds = %177, %174
  %213 = load i64, i64* %16, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %229

215:                                              ; preds = %212
  %216 = load i64, i64* %16, align 8
  %217 = load i64, i64* %13, align 8
  %218 = load i64, i64* %14, align 8
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 7
  %221 = load i64, i64* %9, align 8
  %222 = load i64, i64* %11, align 8
  %223 = sub nsw i64 %221, %222
  %224 = load i64, i64* %10, align 8
  %225 = load i64, i64* %11, align 8
  %226 = sub nsw i64 %224, %225
  %227 = load i32, i32* @FALSE, align 4
  %228 = call i32 @ScriptStringOut(i64 %216, i64 %217, i64 %218, i32 0, %struct.TYPE_13__* %220, i64 %223, i64 %226, i32 %227)
  br label %307

229:                                              ; preds = %212
  %230 = load i64, i64* %8, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %295

232:                                              ; preds = %229
  %233 = load i64, i64* %9, align 8
  %234 = load i64, i64* %10, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %295

236:                                              ; preds = %232
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @EF_FOCUSED, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %250, label %243

243:                                              ; preds = %236
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @ES_NOHIDESEL, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %295

250:                                              ; preds = %243, %236
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %252 = load i32, i32* %6, align 4
  %253 = load i64, i64* %13, align 8
  %254 = load i64, i64* %14, align 8
  %255 = load i64, i64* %7, align 8
  %256 = load i64, i64* %9, align 8
  %257 = load i64, i64* %11, align 8
  %258 = sub nsw i64 %256, %257
  %259 = load i32, i32* @FALSE, align 4
  %260 = call i64 @EDIT_PaintText(%struct.TYPE_12__* %251, i32 %252, i64 %253, i64 %254, i64 %255, i64 0, i64 %258, i32 %259)
  %261 = load i64, i64* %13, align 8
  %262 = add nsw i64 %261, %260
  store i64 %262, i64* %13, align 8
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %264 = load i32, i32* %6, align 4
  %265 = load i64, i64* %13, align 8
  %266 = load i64, i64* %14, align 8
  %267 = load i64, i64* %7, align 8
  %268 = load i64, i64* %9, align 8
  %269 = load i64, i64* %11, align 8
  %270 = sub nsw i64 %268, %269
  %271 = load i64, i64* %10, align 8
  %272 = load i64, i64* %9, align 8
  %273 = sub nsw i64 %271, %272
  %274 = load i32, i32* @TRUE, align 4
  %275 = call i64 @EDIT_PaintText(%struct.TYPE_12__* %263, i32 %264, i64 %265, i64 %266, i64 %267, i64 %270, i64 %273, i32 %274)
  %276 = load i64, i64* %13, align 8
  %277 = add nsw i64 %276, %275
  store i64 %277, i64* %13, align 8
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %279 = load i32, i32* %6, align 4
  %280 = load i64, i64* %13, align 8
  %281 = load i64, i64* %14, align 8
  %282 = load i64, i64* %7, align 8
  %283 = load i64, i64* %10, align 8
  %284 = load i64, i64* %11, align 8
  %285 = sub nsw i64 %283, %284
  %286 = load i64, i64* %11, align 8
  %287 = load i64, i64* %12, align 8
  %288 = add nsw i64 %286, %287
  %289 = load i64, i64* %10, align 8
  %290 = sub nsw i64 %288, %289
  %291 = load i32, i32* @FALSE, align 4
  %292 = call i64 @EDIT_PaintText(%struct.TYPE_12__* %278, i32 %279, i64 %280, i64 %281, i64 %282, i64 %285, i64 %290, i32 %291)
  %293 = load i64, i64* %13, align 8
  %294 = add nsw i64 %293, %292
  store i64 %294, i64* %13, align 8
  br label %306

295:                                              ; preds = %243, %232, %229
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %297 = load i32, i32* %6, align 4
  %298 = load i64, i64* %13, align 8
  %299 = load i64, i64* %14, align 8
  %300 = load i64, i64* %7, align 8
  %301 = load i64, i64* %12, align 8
  %302 = load i32, i32* @FALSE, align 4
  %303 = call i64 @EDIT_PaintText(%struct.TYPE_12__* %296, i32 %297, i64 %298, i64 %299, i64 %300, i64 0, i64 %301, i32 %302)
  %304 = load i64, i64* %13, align 8
  %305 = add nsw i64 %304, %303
  store i64 %305, i64* %13, align 8
  br label %306

306:                                              ; preds = %295, %250
  br label %307

307:                                              ; preds = %50, %55, %306, %215
  ret void
}

declare dso_local i64 @get_vertical_line_count(%struct.TYPE_12__*) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i64 @EDIT_UpdateUniscribeData(%struct.TYPE_12__*, i32, i64) #1

declare dso_local i32 @EDIT_EM_PosFromChar(%struct.TYPE_12__*, i64, i32) #1

declare dso_local i64 @EDIT_EM_LineIndex(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i64 @EDIT_EM_LineLength(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @ScriptStringOut(i64, i64, i64, i32, %struct.TYPE_13__*, i64, i64, i32) #1

declare dso_local i64 @EDIT_PaintText(%struct.TYPE_12__*, i32, i64, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
