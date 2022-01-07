; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_EM_ReplaceSel.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_EM_ReplaceSel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, i64, i64, i64, i32, i64, i32, i8*, i64, i64, i64, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"%s, can_undo %d, send_update %d\0A\00", align 1
@EN_MAXTEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"deleting stuff.\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"inserting stuff (tl %d, strl %d, selstart %d (%s), text %s)\0A\00", align 1
@ES_UPPERCASE = common dso_local global i32 0, align 4
@ES_LOWERCASE = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@ES_AUTOVSCROLL = common dso_local global i32 0, align 4
@ES_AUTOHSCROLL = common dso_local global i32 0, align 4
@ES_RIGHT = common dso_local global i32 0, align 4
@ES_CENTER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EF_MODIFIED = common dso_local global i32 0, align 4
@EF_UPDATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EN_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i64, i8*, i64, i64)* @EDIT_EM_ReplaceSel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_EM_ReplaceSel(%struct.TYPE_20__* %0, i64 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @strlenW(i8* %26)
  store i64 %27, i64* %11, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = call i64 @get_text_length(%struct.TYPE_20__* %28)
  store i64 %29, i64* %12, align 8
  store i64 0, i64* %19, align 8
  store i8* null, i8** %20, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = call i32 @debugstr_w(i64 %31)
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %33, i64 %34)
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %14, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %15, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %43 = call i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_20__* %42)
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* %15, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %5
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %771

51:                                               ; preds = %47, %5
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %15, align 8
  %54 = call i32 @ORDER_UINT(i64 %52, i64 %53)
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %14, align 8
  %58 = sub nsw i64 %56, %57
  %59 = sub nsw i64 %55, %58
  %60 = load i64, i64* %11, align 8
  %61 = add nsw i64 %59, %60
  store i64 %61, i64* %17, align 8
  %62 = load i64, i64* %17, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %51
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %51
  %68 = load i64, i64* %10, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %103

70:                                               ; preds = %67
  %71 = load i64, i64* %17, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %71, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %70
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %78 = load i32, i32* @EN_MAXTEXT, align 4
  %79 = call i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_20__* %77, i32 %78)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %14, align 8
  %86 = sub nsw i64 %84, %85
  %87 = sub nsw i64 %83, %86
  %88 = icmp slt i64 %82, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  store i64 0, i64* %11, align 8
  br label %102

90:                                               ; preds = %76
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* %14, align 8
  %98 = sub nsw i64 %96, %97
  %99 = sub nsw i64 %95, %98
  %100 = sub nsw i64 %94, %99
  %101 = call i64 @min(i64 %91, i64 %100)
  store i64 %101, i64* %11, align 8
  br label %102

102:                                              ; preds = %90, %89
  br label %103

103:                                              ; preds = %102, %70, %67
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* %14, align 8
  %108 = sub nsw i64 %106, %107
  %109 = sub nsw i64 %105, %108
  %110 = load i64, i64* %11, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @EDIT_MakeFit(%struct.TYPE_20__* %104, i64 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %103
  br label %771

115:                                              ; preds = %103
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %14, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %159

119:                                              ; preds = %115
  %120 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i64, i64* %15, align 8
  %122 = load i64, i64* %14, align 8
  %123 = sub nsw i64 %121, %122
  store i64 %123, i64* %21, align 8
  %124 = call i32 (...) @GetProcessHeap()
  %125 = load i64, i64* %21, align 8
  %126 = add nsw i64 %125, 1
  %127 = mul i64 %126, 4
  %128 = call i8* @HeapAlloc(i32 %124, i32 0, i64 %127)
  store i8* %128, i8** %20, align 8
  %129 = load i8*, i8** %20, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %119
  br label %771

132:                                              ; preds = %119
  %133 = load i8*, i8** %20, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %14, align 8
  %138 = add nsw i64 %136, %137
  %139 = inttoptr i64 %138 to i8*
  %140 = load i64, i64* %21, align 8
  %141 = mul i64 %140, 4
  %142 = call i32 @memcpy(i8* %133, i8* %139, i64 %141)
  %143 = load i8*, i8** %20, align 8
  %144 = load i64, i64* %21, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8 0, i8* %145, align 1
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %14, align 8
  %150 = add nsw i64 %148, %149
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %15, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @strcpyW(i64 %150, i64 %155)
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %158 = call i32 @text_buffer_changed(%struct.TYPE_20__* %157)
  br label %159

159:                                              ; preds = %132, %115
  %160 = load i64, i64* %11, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %252

162:                                              ; preds = %159
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %164 = call i64 @get_text_length(%struct.TYPE_20__* %163)
  store i64 %164, i64* %12, align 8
  %165 = load i64, i64* %12, align 8
  %166 = load i64, i64* %11, align 8
  %167 = load i64, i64* %14, align 8
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %14, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @debugstr_w(i64 %172)
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @debugstr_w(i64 %176)
  %178 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i64 %165, i64 %166, i64 %167, i32 %173, i32 %177)
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %12, align 8
  %183 = add nsw i64 %181, %182
  %184 = inttoptr i64 %183 to i8*
  store i8* %184, i8** %18, align 8
  br label %185

185:                                              ; preds = %201, %162
  %186 = load i8*, i8** %18, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %14, align 8
  %191 = add nsw i64 %189, %190
  %192 = inttoptr i64 %191 to i8*
  %193 = icmp uge i8* %186, %192
  br i1 %193, label %194, label %204

194:                                              ; preds = %185
  %195 = load i8*, i8** %18, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 0
  %197 = load i8, i8* %196, align 1
  %198 = load i8*, i8** %18, align 8
  %199 = load i64, i64* %11, align 8
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8 %197, i8* %200, align 1
  br label %201

201:                                              ; preds = %194
  %202 = load i8*, i8** %18, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 -1
  store i8* %203, i8** %18, align 8
  br label %185

204:                                              ; preds = %185
  store i64 0, i64* %16, align 8
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %14, align 8
  %209 = add nsw i64 %207, %208
  %210 = inttoptr i64 %209 to i8*
  store i8* %210, i8** %18, align 8
  br label %211

211:                                              ; preds = %223, %204
  %212 = load i64, i64* %16, align 8
  %213 = load i64, i64* %11, align 8
  %214 = icmp slt i64 %212, %213
  br i1 %214, label %215, label %226

215:                                              ; preds = %211
  %216 = load i8*, i8** %8, align 8
  %217 = load i64, i64* %16, align 8
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = load i8*, i8** %18, align 8
  %221 = load i64, i64* %16, align 8
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  store i8 %219, i8* %222, align 1
  br label %223

223:                                              ; preds = %215
  %224 = load i64, i64* %16, align 8
  %225 = add nsw i64 %224, 1
  store i64 %225, i64* %16, align 8
  br label %211

226:                                              ; preds = %211
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @ES_UPPERCASE, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %226
  %234 = load i8*, i8** %18, align 8
  %235 = load i64, i64* %11, align 8
  %236 = call i32 @CharUpperBuffW(i8* %234, i64 %235)
  br label %249

237:                                              ; preds = %226
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @ES_LOWERCASE, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %237
  %245 = load i8*, i8** %18, align 8
  %246 = load i64, i64* %11, align 8
  %247 = call i32 @CharLowerBuffW(i8* %245, i64 %246)
  br label %248

248:                                              ; preds = %244, %237
  br label %249

249:                                              ; preds = %248, %233
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %251 = call i32 @text_buffer_changed(%struct.TYPE_20__* %250)
  br label %252

252:                                              ; preds = %249, %159
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @ES_MULTILINE, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %372

259:                                              ; preds = %252
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = call i64 @min(i64 %262, i64 %265)
  store i64 %266, i64* %22, align 8
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %268 = call i64 @get_vertical_line_count(%struct.TYPE_20__* %267)
  store i64 %268, i64* %23, align 8
  %269 = call i64 @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i64 %269, i64* %19, align 8
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %271 = load i64, i64* %22, align 8
  %272 = load i64, i64* %22, align 8
  %273 = load i64, i64* %11, align 8
  %274 = add nsw i64 %272, %273
  %275 = load i64, i64* %11, align 8
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = sub nsw i64 %278, %281
  %283 = call i64 @abs(i64 %282)
  %284 = sub nsw i64 %275, %283
  %285 = load i64, i64* %19, align 8
  %286 = call i32 @EDIT_BuildLineDefs_ML(%struct.TYPE_20__* %270, i64 %271, i64 %274, i64 %284, i64 %285)
  %287 = load i64, i64* %10, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %371

289:                                              ; preds = %259
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %371, label %296

296:                                              ; preds = %289
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 6
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* %23, align 8
  %301 = icmp sgt i64 %299, %300
  br i1 %301, label %302, label %371

302:                                              ; preds = %296
  %303 = load i64, i64* %11, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %319

305:                                              ; preds = %302
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i32 0, i32 4
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* %15, align 8
  %310 = add nsw i64 %308, %309
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 4
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* %15, align 8
  %315 = add nsw i64 %313, %314
  %316 = load i64, i64* %11, align 8
  %317 = add nsw i64 %315, %316
  %318 = call i32 @strcpyW(i64 %310, i64 %317)
  br label %319

319:                                              ; preds = %305, %302
  %320 = load i64, i64* %15, align 8
  %321 = load i64, i64* %14, align 8
  %322 = icmp ne i64 %320, %321
  br i1 %322, label %323, label %348

323:                                              ; preds = %319
  store i64 0, i64* %16, align 8
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 4
  %326 = load i64, i64* %325, align 8
  %327 = inttoptr i64 %326 to i8*
  store i8* %327, i8** %18, align 8
  br label %328

328:                                              ; preds = %344, %323
  %329 = load i64, i64* %16, align 8
  %330 = load i64, i64* %15, align 8
  %331 = load i64, i64* %14, align 8
  %332 = sub nsw i64 %330, %331
  %333 = icmp slt i64 %329, %332
  br i1 %333, label %334, label %347

334:                                              ; preds = %328
  %335 = load i8*, i8** %20, align 8
  %336 = load i64, i64* %16, align 8
  %337 = getelementptr inbounds i8, i8* %335, i64 %336
  %338 = load i8, i8* %337, align 1
  %339 = load i8*, i8** %18, align 8
  %340 = load i64, i64* %16, align 8
  %341 = load i64, i64* %14, align 8
  %342 = add nsw i64 %340, %341
  %343 = getelementptr inbounds i8, i8* %339, i64 %342
  store i8 %338, i8* %343, align 1
  br label %344

344:                                              ; preds = %334
  %345 = load i64, i64* %16, align 8
  %346 = add nsw i64 %345, 1
  store i64 %346, i64* %16, align 8
  br label %328

347:                                              ; preds = %328
  br label %348

348:                                              ; preds = %347, %319
  %349 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %350 = call i32 @text_buffer_changed(%struct.TYPE_20__* %349)
  %351 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %352 = load i64, i64* %14, align 8
  %353 = load i64, i64* %15, align 8
  %354 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = sub nsw i64 %356, %359
  %361 = call i64 @abs(i64 %360)
  %362 = load i64, i64* %11, align 8
  %363 = sub nsw i64 %361, %362
  %364 = load i64, i64* %19, align 8
  %365 = call i32 @EDIT_BuildLineDefs_ML(%struct.TYPE_20__* %351, i64 %352, i64 %353, i64 %363, i64 %364)
  store i64 0, i64* %11, align 8
  %366 = load i64, i64* %14, align 8
  store i64 %366, i64* %15, align 8
  %367 = call i64 @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i64 %367, i64* %19, align 8
  %368 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %369 = load i32, i32* @EN_MAXTEXT, align 4
  %370 = call i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_20__* %368, i32 %369)
  br label %371

371:                                              ; preds = %348, %296, %289, %259
  br label %448

372:                                              ; preds = %252
  %373 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %374 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %373, i32 0, i32 13
  %375 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %378 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %377, i32 0, i32 13
  %379 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = sub nsw i64 %376, %380
  store i64 %381, i64* %24, align 8
  %382 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %383 = call i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_20__* %382)
  %384 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %385 = call i32 @EDIT_CalcLineWidth_SL(%struct.TYPE_20__* %384)
  %386 = load i64, i64* %10, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %447

388:                                              ; preds = %372
  %389 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %389, i32 0, i32 5
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %447, label %395

395:                                              ; preds = %388
  %396 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %396, i32 0, i32 2
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* %24, align 8
  %400 = icmp sgt i64 %398, %399
  br i1 %400, label %401, label %447

401:                                              ; preds = %395
  br label %402

402:                                              ; preds = %416, %401
  %403 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %403, i32 0, i32 2
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* %24, align 8
  %407 = icmp sgt i64 %405, %406
  br i1 %407, label %408, label %414

408:                                              ; preds = %402
  %409 = load i64, i64* %14, align 8
  %410 = load i64, i64* %11, align 8
  %411 = add nsw i64 %409, %410
  %412 = load i64, i64* %14, align 8
  %413 = icmp sge i64 %411, %412
  br label %414

414:                                              ; preds = %408, %402
  %415 = phi i1 [ false, %402 ], [ %413, %408 ]
  br i1 %415, label %416, label %441

416:                                              ; preds = %414
  %417 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %417, i32 0, i32 4
  %419 = load i64, i64* %418, align 8
  %420 = load i64, i64* %14, align 8
  %421 = add nsw i64 %419, %420
  %422 = load i64, i64* %11, align 8
  %423 = add nsw i64 %421, %422
  %424 = sub nsw i64 %423, 1
  %425 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %425, i32 0, i32 4
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* %14, align 8
  %429 = add nsw i64 %427, %428
  %430 = load i64, i64* %11, align 8
  %431 = add nsw i64 %429, %430
  %432 = call i32 @strcpyW(i64 %424, i64 %431)
  %433 = load i64, i64* %11, align 8
  %434 = add nsw i64 %433, -1
  store i64 %434, i64* %11, align 8
  %435 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %436 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %435, i32 0, i32 7
  store i32 -1, i32* %436, align 8
  %437 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %438 = call i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_20__* %437)
  %439 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %440 = call i32 @EDIT_CalcLineWidth_SL(%struct.TYPE_20__* %439)
  br label %402

441:                                              ; preds = %414
  %442 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %443 = call i32 @text_buffer_changed(%struct.TYPE_20__* %442)
  %444 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %445 = load i32, i32* @EN_MAXTEXT, align 4
  %446 = call i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_20__* %444, i32 %445)
  br label %447

447:                                              ; preds = %441, %395, %388, %372
  br label %448

448:                                              ; preds = %447, %371
  %449 = load i64, i64* %15, align 8
  %450 = load i64, i64* %14, align 8
  %451 = icmp ne i64 %449, %450
  br i1 %451, label %452, label %612

452:                                              ; preds = %448
  %453 = load i64, i64* %7, align 8
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %608

455:                                              ; preds = %452
  %456 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %456, i32 0, i32 8
  %458 = load i8*, i8** %457, align 8
  %459 = call i64 @strlenW(i8* %458)
  store i64 %459, i64* %13, align 8
  %460 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %461 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %460, i32 0, i32 9
  %462 = load i64, i64* %461, align 8
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %505, label %464

464:                                              ; preds = %455
  %465 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %466 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %465, i32 0, i32 8
  %467 = load i8*, i8** %466, align 8
  %468 = load i8, i8* %467, align 1
  %469 = sext i8 %468 to i32
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %505

471:                                              ; preds = %464
  %472 = load i64, i64* %14, align 8
  %473 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %473, i32 0, i32 10
  %475 = load i64, i64* %474, align 8
  %476 = icmp eq i64 %472, %475
  br i1 %476, label %477, label %505

477:                                              ; preds = %471
  %478 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %479 = load i64, i64* %13, align 8
  %480 = load i64, i64* %15, align 8
  %481 = add nsw i64 %479, %480
  %482 = load i64, i64* %14, align 8
  %483 = sub nsw i64 %481, %482
  %484 = call i32 @EDIT_MakeUndoFit(%struct.TYPE_20__* %478, i64 %483)
  %485 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %486 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %485, i32 0, i32 8
  %487 = load i8*, i8** %486, align 8
  %488 = load i64, i64* %13, align 8
  %489 = getelementptr inbounds i8, i8* %487, i64 %488
  %490 = load i8*, i8** %20, align 8
  %491 = load i64, i64* %15, align 8
  %492 = load i64, i64* %14, align 8
  %493 = sub nsw i64 %491, %492
  %494 = mul i64 %493, 4
  %495 = call i32 @memcpy(i8* %489, i8* %490, i64 %494)
  %496 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %497 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %496, i32 0, i32 8
  %498 = load i8*, i8** %497, align 8
  %499 = load i64, i64* %13, align 8
  %500 = getelementptr inbounds i8, i8* %498, i64 %499
  %501 = load i64, i64* %15, align 8
  %502 = load i64, i64* %14, align 8
  %503 = sub nsw i64 %501, %502
  %504 = getelementptr inbounds i8, i8* %500, i64 %503
  store i8 0, i8* %504, align 1
  br label %605

505:                                              ; preds = %471, %464, %455
  %506 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %507 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %506, i32 0, i32 9
  %508 = load i64, i64* %507, align 8
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %579, label %510

510:                                              ; preds = %505
  %511 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %512 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %511, i32 0, i32 8
  %513 = load i8*, i8** %512, align 8
  %514 = load i8, i8* %513, align 1
  %515 = sext i8 %514 to i32
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %579

517:                                              ; preds = %510
  %518 = load i64, i64* %15, align 8
  %519 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %520 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %519, i32 0, i32 10
  %521 = load i64, i64* %520, align 8
  %522 = icmp eq i64 %518, %521
  br i1 %522, label %523, label %579

523:                                              ; preds = %517
  %524 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %525 = load i64, i64* %13, align 8
  %526 = load i64, i64* %15, align 8
  %527 = add nsw i64 %525, %526
  %528 = load i64, i64* %14, align 8
  %529 = sub nsw i64 %527, %528
  %530 = call i32 @EDIT_MakeUndoFit(%struct.TYPE_20__* %524, i64 %529)
  %531 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %532 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %531, i32 0, i32 8
  %533 = load i8*, i8** %532, align 8
  %534 = load i64, i64* %13, align 8
  %535 = getelementptr inbounds i8, i8* %533, i64 %534
  store i8* %535, i8** %18, align 8
  br label %536

536:                                              ; preds = %551, %523
  %537 = load i8*, i8** %18, align 8
  %538 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %539 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %538, i32 0, i32 8
  %540 = load i8*, i8** %539, align 8
  %541 = icmp uge i8* %537, %540
  br i1 %541, label %542, label %554

542:                                              ; preds = %536
  %543 = load i8*, i8** %18, align 8
  %544 = getelementptr inbounds i8, i8* %543, i64 0
  %545 = load i8, i8* %544, align 1
  %546 = load i8*, i8** %18, align 8
  %547 = load i64, i64* %15, align 8
  %548 = load i64, i64* %14, align 8
  %549 = sub nsw i64 %547, %548
  %550 = getelementptr inbounds i8, i8* %546, i64 %549
  store i8 %545, i8* %550, align 1
  br label %551

551:                                              ; preds = %542
  %552 = load i8*, i8** %18, align 8
  %553 = getelementptr inbounds i8, i8* %552, i32 -1
  store i8* %553, i8** %18, align 8
  br label %536

554:                                              ; preds = %536
  store i64 0, i64* %16, align 8
  %555 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %556 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %555, i32 0, i32 8
  %557 = load i8*, i8** %556, align 8
  store i8* %557, i8** %18, align 8
  br label %558

558:                                              ; preds = %572, %554
  %559 = load i64, i64* %16, align 8
  %560 = load i64, i64* %15, align 8
  %561 = load i64, i64* %14, align 8
  %562 = sub nsw i64 %560, %561
  %563 = icmp slt i64 %559, %562
  br i1 %563, label %564, label %575

564:                                              ; preds = %558
  %565 = load i8*, i8** %20, align 8
  %566 = load i64, i64* %16, align 8
  %567 = getelementptr inbounds i8, i8* %565, i64 %566
  %568 = load i8, i8* %567, align 1
  %569 = load i8*, i8** %18, align 8
  %570 = load i64, i64* %16, align 8
  %571 = getelementptr inbounds i8, i8* %569, i64 %570
  store i8 %568, i8* %571, align 1
  br label %572

572:                                              ; preds = %564
  %573 = load i64, i64* %16, align 8
  %574 = add nsw i64 %573, 1
  store i64 %574, i64* %16, align 8
  br label %558

575:                                              ; preds = %558
  %576 = load i64, i64* %14, align 8
  %577 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %578 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %577, i32 0, i32 10
  store i64 %576, i64* %578, align 8
  br label %604

579:                                              ; preds = %517, %510, %505
  %580 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %581 = load i64, i64* %15, align 8
  %582 = load i64, i64* %14, align 8
  %583 = sub nsw i64 %581, %582
  %584 = call i32 @EDIT_MakeUndoFit(%struct.TYPE_20__* %580, i64 %583)
  %585 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %586 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %585, i32 0, i32 8
  %587 = load i8*, i8** %586, align 8
  %588 = load i8*, i8** %20, align 8
  %589 = load i64, i64* %15, align 8
  %590 = load i64, i64* %14, align 8
  %591 = sub nsw i64 %589, %590
  %592 = mul i64 %591, 4
  %593 = call i32 @memcpy(i8* %587, i8* %588, i64 %592)
  %594 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %595 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %594, i32 0, i32 8
  %596 = load i8*, i8** %595, align 8
  %597 = load i64, i64* %15, align 8
  %598 = load i64, i64* %14, align 8
  %599 = sub nsw i64 %597, %598
  %600 = getelementptr inbounds i8, i8* %596, i64 %599
  store i8 0, i8* %600, align 1
  %601 = load i64, i64* %14, align 8
  %602 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %603 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %602, i32 0, i32 10
  store i64 %601, i64* %603, align 8
  br label %604

604:                                              ; preds = %579, %575
  br label %605

605:                                              ; preds = %604, %477
  %606 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %607 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %606, i32 0, i32 9
  store i64 0, i64* %607, align 8
  br label %611

608:                                              ; preds = %452
  %609 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %610 = call i32 @EDIT_EM_EmptyUndoBuffer(%struct.TYPE_20__* %609)
  br label %611

611:                                              ; preds = %608, %605
  br label %612

612:                                              ; preds = %611, %448
  %613 = load i64, i64* %11, align 8
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %615, label %660

615:                                              ; preds = %612
  %616 = load i64, i64* %7, align 8
  %617 = icmp ne i64 %616, 0
  br i1 %617, label %618, label %656

618:                                              ; preds = %615
  %619 = load i64, i64* %14, align 8
  %620 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %621 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %620, i32 0, i32 10
  %622 = load i64, i64* %621, align 8
  %623 = icmp eq i64 %619, %622
  br i1 %623, label %639, label %624

624:                                              ; preds = %618
  %625 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %626 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %625, i32 0, i32 9
  %627 = load i64, i64* %626, align 8
  %628 = icmp ne i64 %627, 0
  br i1 %628, label %629, label %645

629:                                              ; preds = %624
  %630 = load i64, i64* %14, align 8
  %631 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %632 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %631, i32 0, i32 10
  %633 = load i64, i64* %632, align 8
  %634 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %635 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %634, i32 0, i32 9
  %636 = load i64, i64* %635, align 8
  %637 = add nsw i64 %633, %636
  %638 = icmp eq i64 %630, %637
  br i1 %638, label %639, label %645

639:                                              ; preds = %629, %618
  %640 = load i64, i64* %11, align 8
  %641 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %642 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %641, i32 0, i32 9
  %643 = load i64, i64* %642, align 8
  %644 = add nsw i64 %643, %640
  store i64 %644, i64* %642, align 8
  br label %655

645:                                              ; preds = %629, %624
  %646 = load i64, i64* %14, align 8
  %647 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %648 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %647, i32 0, i32 10
  store i64 %646, i64* %648, align 8
  %649 = load i64, i64* %11, align 8
  %650 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %651 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %650, i32 0, i32 9
  store i64 %649, i64* %651, align 8
  %652 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %653 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %652, i32 0, i32 8
  %654 = load i8*, i8** %653, align 8
  store i8 0, i8* %654, align 1
  br label %655

655:                                              ; preds = %645, %639
  br label %659

656:                                              ; preds = %615
  %657 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %658 = call i32 @EDIT_EM_EmptyUndoBuffer(%struct.TYPE_20__* %657)
  br label %659

659:                                              ; preds = %656, %655
  br label %660

660:                                              ; preds = %659, %612
  %661 = call i32 (...) @GetProcessHeap()
  %662 = load i8*, i8** %20, align 8
  %663 = call i32 @HeapFree(i32 %661, i32 0, i8* %662)
  %664 = load i64, i64* %11, align 8
  %665 = load i64, i64* %14, align 8
  %666 = add nsw i64 %665, %664
  store i64 %666, i64* %14, align 8
  %667 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %668 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %667, i32 0, i32 5
  %669 = load i32, i32* %668, align 8
  %670 = load i32, i32* @ES_RIGHT, align 4
  %671 = load i32, i32* @ES_CENTER, align 4
  %672 = or i32 %670, %671
  %673 = and i32 %669, %672
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %711

675:                                              ; preds = %660
  %676 = load i64, i64* %11, align 8
  %677 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %678 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %677, i32 0, i32 1
  %679 = load i64, i64* %678, align 8
  %680 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %681 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %680, i32 0, i32 0
  %682 = load i64, i64* %681, align 8
  %683 = sub nsw i64 %679, %682
  %684 = call i64 @abs(i64 %683)
  %685 = sub nsw i64 %676, %684
  store i64 %685, i64* %25, align 8
  %686 = load i64, i64* %25, align 8
  %687 = icmp slt i64 %686, 0
  br i1 %687, label %688, label %710

688:                                              ; preds = %675
  %689 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %690 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %689, i32 0, i32 11
  %691 = load i64, i64* %690, align 8
  %692 = icmp ne i64 %691, 0
  br i1 %692, label %693, label %710

693:                                              ; preds = %688
  %694 = load i64, i64* %25, align 8
  %695 = call i64 @abs(i64 %694)
  %696 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %697 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %696, i32 0, i32 11
  %698 = load i64, i64* %697, align 8
  %699 = icmp sgt i64 %695, %698
  br i1 %699, label %700, label %703

700:                                              ; preds = %693
  %701 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %702 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %701, i32 0, i32 11
  store i64 0, i64* %702, align 8
  br label %709

703:                                              ; preds = %693
  %704 = load i64, i64* %25, align 8
  %705 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %706 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %705, i32 0, i32 11
  %707 = load i64, i64* %706, align 8
  %708 = add nsw i64 %707, %704
  store i64 %708, i64* %706, align 8
  br label %709

709:                                              ; preds = %703, %700
  br label %710

710:                                              ; preds = %709, %688, %675
  br label %711

711:                                              ; preds = %710, %660
  %712 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %713 = load i64, i64* %14, align 8
  %714 = load i64, i64* %14, align 8
  %715 = load i32, i32* @FALSE, align 4
  %716 = call i32 @EDIT_EM_SetSel(%struct.TYPE_20__* %712, i64 %713, i64 %714, i32 %715)
  %717 = load i32, i32* @EF_MODIFIED, align 4
  %718 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %719 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %718, i32 0, i32 12
  %720 = load i32, i32* %719, align 8
  %721 = or i32 %720, %717
  store i32 %721, i32* %719, align 8
  %722 = load i64, i64* %9, align 8
  %723 = icmp ne i64 %722, 0
  br i1 %723, label %724, label %730

724:                                              ; preds = %711
  %725 = load i32, i32* @EF_UPDATE, align 4
  %726 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %727 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %726, i32 0, i32 12
  %728 = load i32, i32* %727, align 8
  %729 = or i32 %728, %725
  store i32 %729, i32* %727, align 8
  br label %730

730:                                              ; preds = %724, %711
  %731 = load i64, i64* %19, align 8
  %732 = icmp ne i64 %731, 0
  br i1 %732, label %733, label %740

733:                                              ; preds = %730
  %734 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %735 = load i64, i64* %19, align 8
  %736 = load i32, i32* @TRUE, align 4
  %737 = call i32 @EDIT_UpdateTextRegion(%struct.TYPE_20__* %734, i64 %735, i32 %736)
  %738 = load i64, i64* %19, align 8
  %739 = call i32 @DeleteObject(i64 %738)
  br label %744

740:                                              ; preds = %730
  %741 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %742 = load i32, i32* @TRUE, align 4
  %743 = call i32 @EDIT_UpdateText(%struct.TYPE_20__* %741, i32* null, i32 %742)
  br label %744

744:                                              ; preds = %740, %733
  %745 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %746 = call i32 @EDIT_EM_ScrollCaret(%struct.TYPE_20__* %745)
  %747 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %748 = call i32 @EDIT_UpdateScrollInfo(%struct.TYPE_20__* %747)
  %749 = load i64, i64* %9, align 8
  %750 = icmp ne i64 %749, 0
  br i1 %750, label %758, label %751

751:                                              ; preds = %744
  %752 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %753 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %752, i32 0, i32 12
  %754 = load i32, i32* %753, align 8
  %755 = load i32, i32* @EF_UPDATE, align 4
  %756 = and i32 %754, %755
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %758, label %768

758:                                              ; preds = %751, %744
  %759 = load i32, i32* @EF_UPDATE, align 4
  %760 = xor i32 %759, -1
  %761 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %762 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %761, i32 0, i32 12
  %763 = load i32, i32* %762, align 8
  %764 = and i32 %763, %760
  store i32 %764, i32* %762, align 8
  %765 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %766 = load i32, i32* @EN_CHANGE, align 4
  %767 = call i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_20__* %765, i32 %766)
  br label %768

768:                                              ; preds = %758, %751
  %769 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %770 = call i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_20__* %769)
  br label %771

771:                                              ; preds = %768, %131, %114, %50
  ret void
}

declare dso_local i64 @strlenW(i8*) #1

declare dso_local i64 @get_text_length(%struct.TYPE_20__*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_w(i64) #1

declare dso_local i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_20__*) #1

declare dso_local i32 @ORDER_UINT(i64, i64) #1

declare dso_local i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @EDIT_MakeFit(%struct.TYPE_20__*, i64) #1

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strcpyW(i64, i64) #1

declare dso_local i32 @text_buffer_changed(%struct.TYPE_20__*) #1

declare dso_local i32 @CharUpperBuffW(i8*, i64) #1

declare dso_local i32 @CharLowerBuffW(i8*, i64) #1

declare dso_local i64 @get_vertical_line_count(%struct.TYPE_20__*) #1

declare dso_local i64 @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @EDIT_BuildLineDefs_ML(%struct.TYPE_20__*, i64, i64, i64, i64) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @EDIT_CalcLineWidth_SL(%struct.TYPE_20__*) #1

declare dso_local i32 @EDIT_MakeUndoFit(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @EDIT_EM_EmptyUndoBuffer(%struct.TYPE_20__*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @EDIT_EM_SetSel(%struct.TYPE_20__*, i64, i64, i32) #1

declare dso_local i32 @EDIT_UpdateTextRegion(%struct.TYPE_20__*, i64, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @EDIT_UpdateText(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @EDIT_EM_ScrollCaret(%struct.TYPE_20__*) #1

declare dso_local i32 @EDIT_UpdateScrollInfo(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
