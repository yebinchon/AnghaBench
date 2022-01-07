; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_get_string_subst.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_get_string_subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_file = type { i32, i32, %struct.field*, %struct.section** }
%struct.field = type { i8* }
%struct.section = type { i32, %struct.line*, i32 }
%struct.line = type { i32, i64, i32 }

@get_string_subst.percent = internal constant i8 37, align 1
@__const.get_string_subst.StringLangId = private unnamed_addr constant [13 x i8] c"Strings.\00\00\00\00\00", align 1
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_ILANGUAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.inf_file*, i8*, i32*, i64)* @get_string_subst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_string_subst(%struct.inf_file* %0, i8* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inf_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.section*, align 8
  %11 = alloca %struct.line*, align 8
  %12 = alloca %struct.field*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [13 x i8], align 1
  %20 = alloca [5 x i32], align 16
  store %struct.inf_file* %0, %struct.inf_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* null, i8** %18, align 8
  %21 = bitcast [13 x i8]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.get_string_subst.StringLangId, i32 0, i32 0), i64 13, i1 false)
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  store i32 1, i32* %26, align 4
  store i8* @get_string_subst.percent, i8** %5, align 8
  br label %397

27:                                               ; preds = %4
  %28 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %29 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %333

33:                                               ; preds = %27
  %34 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %35 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %34, i32 0, i32 3
  %36 = load %struct.section**, %struct.section*** %35, align 8
  %37 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %38 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.section*, %struct.section** %36, i64 %40
  %42 = load %struct.section*, %struct.section** %41, align 8
  store %struct.section* %42, %struct.section** %10, align 8
  store i32 0, i32* %14, align 4
  %43 = load %struct.section*, %struct.section** %10, align 8
  %44 = getelementptr inbounds %struct.section, %struct.section* %43, i32 0, i32 1
  %45 = load %struct.line*, %struct.line** %44, align 8
  store %struct.line* %45, %struct.line** %11, align 8
  br label %46

46:                                               ; preds = %94, %33
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.section*, %struct.section** %10, align 8
  %49 = getelementptr inbounds %struct.section, %struct.section* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %99

52:                                               ; preds = %46
  %53 = load %struct.line*, %struct.line** %11, align 8
  %54 = getelementptr inbounds %struct.line, %struct.line* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %94

58:                                               ; preds = %52
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %61 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %60, i32 0, i32 2
  %62 = load %struct.field*, %struct.field** %61, align 8
  %63 = load %struct.line*, %struct.line** %11, align 8
  %64 = getelementptr inbounds %struct.line, %struct.line* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.field, %struct.field* %62, i64 %66
  %68 = getelementptr inbounds %struct.field, %struct.field* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @strncmpiW(i8* %59, i8* %69, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  br label %94

75:                                               ; preds = %58
  %76 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %77 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %76, i32 0, i32 2
  %78 = load %struct.field*, %struct.field** %77, align 8
  %79 = load %struct.line*, %struct.line** %11, align 8
  %80 = getelementptr inbounds %struct.line, %struct.line* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.field, %struct.field* %78, i64 %82
  %84 = getelementptr inbounds %struct.field, %struct.field* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %86, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %75
  br label %99

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93, %74, %57
  %95 = load i32, i32* %14, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %14, align 4
  %97 = load %struct.line*, %struct.line** %11, align 8
  %98 = getelementptr inbounds %struct.line, %struct.line* %97, i32 1
  store %struct.line* %98, %struct.line** %11, align 8
  br label %46

99:                                               ; preds = %92, %46
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.section*, %struct.section** %10, align 8
  %102 = getelementptr inbounds %struct.section, %struct.section* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %110, label %105

105:                                              ; preds = %99
  %106 = load %struct.line*, %struct.line** %11, align 8
  %107 = getelementptr inbounds %struct.line, %struct.line* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %105, %99
  br label %333

111:                                              ; preds = %105
  %112 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %113 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %112, i32 0, i32 2
  %114 = load %struct.field*, %struct.field** %113, align 8
  %115 = load %struct.line*, %struct.line** %11, align 8
  %116 = getelementptr inbounds %struct.line, %struct.line* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.field, %struct.field* %114, i64 %117
  store %struct.field* %118, %struct.field** %12, align 8
  %119 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %120 = load i32, i32* @LOCALE_ILANGUAGE, align 4
  %121 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 0
  %122 = call i32 @GetLocaleInfo(i32 %119, i32 %120, i32* %121, i32 5)
  %123 = getelementptr inbounds [13 x i8], [13 x i8]* %19, i64 0, i64 0
  %124 = getelementptr inbounds i8, i8* %123, i64 8
  %125 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 0
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  %127 = call i32 @strcpyW(i8* %124, i32* %126)
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %220, %111
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %131 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ult i32 %129, %132
  br i1 %133, label %134, label %223

134:                                              ; preds = %128
  %135 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %136 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %135, i32 0, i32 3
  %137 = load %struct.section**, %struct.section*** %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.section*, %struct.section** %137, i64 %139
  %141 = load %struct.section*, %struct.section** %140, align 8
  %142 = getelementptr inbounds %struct.section, %struct.section* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds [13 x i8], [13 x i8]* %19, i64 0, i64 0
  %145 = call i32 @strcmpiW(i32 %143, i8* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %219, label %147

147:                                              ; preds = %134
  %148 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %149 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %148, i32 0, i32 3
  %150 = load %struct.section**, %struct.section*** %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.section*, %struct.section** %150, i64 %152
  %154 = load %struct.section*, %struct.section** %153, align 8
  store %struct.section* %154, %struct.section** %10, align 8
  store i32 0, i32* %14, align 4
  %155 = load %struct.section*, %struct.section** %10, align 8
  %156 = getelementptr inbounds %struct.section, %struct.section* %155, i32 0, i32 1
  %157 = load %struct.line*, %struct.line** %156, align 8
  store %struct.line* %157, %struct.line** %11, align 8
  br label %158

158:                                              ; preds = %213, %147
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.section*, %struct.section** %10, align 8
  %161 = getelementptr inbounds %struct.section, %struct.section* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp ult i32 %159, %162
  br i1 %163, label %164, label %218

164:                                              ; preds = %158
  %165 = load %struct.line*, %struct.line** %11, align 8
  %166 = getelementptr inbounds %struct.line, %struct.line* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %213

170:                                              ; preds = %164
  %171 = load i8*, i8** %7, align 8
  %172 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %173 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %172, i32 0, i32 2
  %174 = load %struct.field*, %struct.field** %173, align 8
  %175 = load %struct.line*, %struct.line** %11, align 8
  %176 = getelementptr inbounds %struct.line, %struct.line* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.field, %struct.field* %174, i64 %178
  %180 = getelementptr inbounds %struct.field, %struct.field* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @strncmpiW(i8* %171, i8* %181, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %170
  br label %213

187:                                              ; preds = %170
  %188 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %189 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %188, i32 0, i32 2
  %190 = load %struct.field*, %struct.field** %189, align 8
  %191 = load %struct.line*, %struct.line** %11, align 8
  %192 = getelementptr inbounds %struct.line, %struct.line* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.field, %struct.field* %190, i64 %194
  %196 = getelementptr inbounds %struct.field, %struct.field* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = load i32*, i32** %8, align 8
  %199 = load i32, i32* %198, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %197, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = icmp ne i8 %202, 0
  br i1 %203, label %212, label %204

204:                                              ; preds = %187
  %205 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %206 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %205, i32 0, i32 2
  %207 = load %struct.field*, %struct.field** %206, align 8
  %208 = load %struct.line*, %struct.line** %11, align 8
  %209 = getelementptr inbounds %struct.line, %struct.line* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.field, %struct.field* %207, i64 %210
  store %struct.field* %211, %struct.field** %12, align 8
  br label %218

212:                                              ; preds = %187
  br label %213

213:                                              ; preds = %212, %186, %169
  %214 = load i32, i32* %14, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %14, align 4
  %216 = load %struct.line*, %struct.line** %11, align 8
  %217 = getelementptr inbounds %struct.line, %struct.line* %216, i32 1
  store %struct.line* %217, %struct.line** %11, align 8
  br label %158

218:                                              ; preds = %204, %158
  br label %219

219:                                              ; preds = %218, %134
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %13, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %13, align 4
  br label %128

223:                                              ; preds = %128
  %224 = getelementptr inbounds [13 x i8], [13 x i8]* %19, i64 0, i64 0
  %225 = getelementptr inbounds i8, i8* %224, i64 8
  %226 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 0
  %227 = call i32 @strcpyW(i8* %225, i32* %226)
  store i32 0, i32* %13, align 4
  br label %228

228:                                              ; preds = %320, %223
  %229 = load i32, i32* %13, align 4
  %230 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %231 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp ult i32 %229, %232
  br i1 %233, label %234, label %323

234:                                              ; preds = %228
  %235 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %236 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %235, i32 0, i32 3
  %237 = load %struct.section**, %struct.section*** %236, align 8
  %238 = load i32, i32* %13, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.section*, %struct.section** %237, i64 %239
  %241 = load %struct.section*, %struct.section** %240, align 8
  %242 = getelementptr inbounds %struct.section, %struct.section* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = getelementptr inbounds [13 x i8], [13 x i8]* %19, i64 0, i64 0
  %245 = call i32 @strcmpiW(i32 %243, i8* %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %319, label %247

247:                                              ; preds = %234
  %248 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %249 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %248, i32 0, i32 3
  %250 = load %struct.section**, %struct.section*** %249, align 8
  %251 = load i32, i32* %13, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds %struct.section*, %struct.section** %250, i64 %252
  %254 = load %struct.section*, %struct.section** %253, align 8
  store %struct.section* %254, %struct.section** %10, align 8
  store i32 0, i32* %14, align 4
  %255 = load %struct.section*, %struct.section** %10, align 8
  %256 = getelementptr inbounds %struct.section, %struct.section* %255, i32 0, i32 1
  %257 = load %struct.line*, %struct.line** %256, align 8
  store %struct.line* %257, %struct.line** %11, align 8
  br label %258

258:                                              ; preds = %313, %247
  %259 = load i32, i32* %14, align 4
  %260 = load %struct.section*, %struct.section** %10, align 8
  %261 = getelementptr inbounds %struct.section, %struct.section* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = icmp ult i32 %259, %262
  br i1 %263, label %264, label %318

264:                                              ; preds = %258
  %265 = load %struct.line*, %struct.line** %11, align 8
  %266 = getelementptr inbounds %struct.line, %struct.line* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp eq i32 %267, -1
  br i1 %268, label %269, label %270

269:                                              ; preds = %264
  br label %313

270:                                              ; preds = %264
  %271 = load i8*, i8** %7, align 8
  %272 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %273 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %272, i32 0, i32 2
  %274 = load %struct.field*, %struct.field** %273, align 8
  %275 = load %struct.line*, %struct.line** %11, align 8
  %276 = getelementptr inbounds %struct.line, %struct.line* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.field, %struct.field* %274, i64 %278
  %280 = getelementptr inbounds %struct.field, %struct.field* %279, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = load i32*, i32** %8, align 8
  %283 = load i32, i32* %282, align 4
  %284 = call i64 @strncmpiW(i8* %271, i8* %281, i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %270
  br label %313

287:                                              ; preds = %270
  %288 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %289 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %288, i32 0, i32 2
  %290 = load %struct.field*, %struct.field** %289, align 8
  %291 = load %struct.line*, %struct.line** %11, align 8
  %292 = getelementptr inbounds %struct.line, %struct.line* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.field, %struct.field* %290, i64 %294
  %296 = getelementptr inbounds %struct.field, %struct.field* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = load i32*, i32** %8, align 8
  %299 = load i32, i32* %298, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %297, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = icmp ne i8 %302, 0
  br i1 %303, label %312, label %304

304:                                              ; preds = %287
  %305 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %306 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %305, i32 0, i32 2
  %307 = load %struct.field*, %struct.field** %306, align 8
  %308 = load %struct.line*, %struct.line** %11, align 8
  %309 = getelementptr inbounds %struct.line, %struct.line* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = getelementptr inbounds %struct.field, %struct.field* %307, i64 %310
  store %struct.field* %311, %struct.field** %12, align 8
  br label %318

312:                                              ; preds = %287
  br label %313

313:                                              ; preds = %312, %286, %269
  %314 = load i32, i32* %14, align 4
  %315 = add i32 %314, 1
  store i32 %315, i32* %14, align 4
  %316 = load %struct.line*, %struct.line** %11, align 8
  %317 = getelementptr inbounds %struct.line, %struct.line* %316, i32 1
  store %struct.line* %317, %struct.line** %11, align 8
  br label %258

318:                                              ; preds = %304, %258
  br label %319

319:                                              ; preds = %318, %234
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %13, align 4
  %322 = add i32 %321, 1
  store i32 %322, i32* %13, align 4
  br label %228

323:                                              ; preds = %228
  %324 = load %struct.field*, %struct.field** %12, align 8
  %325 = getelementptr inbounds %struct.field, %struct.field* %324, i32 0, i32 0
  %326 = load i8*, i8** %325, align 8
  %327 = call i32 @strlenW(i8* %326)
  %328 = load i32*, i32** %8, align 8
  store i32 %327, i32* %328, align 4
  %329 = load %struct.field*, %struct.field** %12, align 8
  %330 = getelementptr inbounds %struct.field, %struct.field* %329, i32 0, i32 0
  %331 = load i8*, i8** %330, align 8
  store i8* %331, i8** %18, align 8
  %332 = load i8*, i8** %18, align 8
  store i8* %332, i8** %5, align 8
  br label %397

333:                                              ; preds = %110, %32
  %334 = call i32 (...) @GetProcessHeap()
  %335 = load i32*, i32** %8, align 8
  %336 = load i32, i32* %335, align 4
  %337 = add i32 %336, 1
  %338 = zext i32 %337 to i64
  %339 = mul i64 %338, 1
  %340 = trunc i64 %339 to i32
  %341 = call i8* @HeapAlloc(i32 %334, i32 0, i32 %340)
  store i8* %341, i8** %16, align 8
  %342 = icmp ne i8* %341, null
  br i1 %342, label %343, label %396

343:                                              ; preds = %333
  %344 = load i8*, i8** %16, align 8
  %345 = load i8*, i8** %7, align 8
  %346 = load i32*, i32** %8, align 8
  %347 = load i32, i32* %346, align 4
  %348 = zext i32 %347 to i64
  %349 = mul i64 %348, 1
  %350 = trunc i64 %349 to i32
  %351 = call i32 @memcpy(i8* %344, i8* %345, i32 %350)
  %352 = load i8*, i8** %16, align 8
  %353 = load i32*, i32** %8, align 8
  %354 = load i32, i32* %353, align 4
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds i8, i8* %352, i64 %355
  store i8 0, i8* %356, align 1
  %357 = load i8*, i8** %16, align 8
  %358 = call i32 @strtolW(i8* %357, i8** %17, i32 10)
  store i32 %358, i32* %15, align 4
  %359 = load i8*, i8** %17, align 8
  %360 = load i8, i8* %359, align 1
  %361 = icmp ne i8 %360, 0
  br i1 %361, label %367, label %362

362:                                              ; preds = %343
  %363 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %364 = load i32, i32* %15, align 4
  %365 = load i32*, i32** %8, align 8
  %366 = call i8* @get_dirid_subst(%struct.inf_file* %363, i32 %364, i32* %365)
  store i8* %366, i8** %18, align 8
  br label %367

367:                                              ; preds = %362, %343
  %368 = load i64, i64* %9, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %391

370:                                              ; preds = %367
  %371 = load i8*, i8** %18, align 8
  %372 = icmp ne i8* %371, null
  br i1 %372, label %373, label %391

373:                                              ; preds = %370
  %374 = load i32*, i32** %8, align 8
  %375 = load i32, i32* %374, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %391

377:                                              ; preds = %373
  %378 = load i8*, i8** %18, align 8
  %379 = load i32*, i32** %8, align 8
  %380 = load i32, i32* %379, align 4
  %381 = sub i32 %380, 1
  %382 = zext i32 %381 to i64
  %383 = getelementptr inbounds i8, i8* %378, i64 %382
  %384 = load i8, i8* %383, align 1
  %385 = sext i8 %384 to i32
  %386 = icmp eq i32 %385, 92
  br i1 %386, label %387, label %391

387:                                              ; preds = %377
  %388 = load i32*, i32** %8, align 8
  %389 = load i32, i32* %388, align 4
  %390 = sub i32 %389, 1
  store i32 %390, i32* %388, align 4
  br label %391

391:                                              ; preds = %387, %377, %373, %370, %367
  %392 = call i32 (...) @GetProcessHeap()
  %393 = load i8*, i8** %16, align 8
  %394 = call i32 @HeapFree(i32 %392, i32 0, i8* %393)
  %395 = load i8*, i8** %18, align 8
  store i8* %395, i8** %5, align 8
  br label %397

396:                                              ; preds = %333
  store i8* null, i8** %5, align 8
  br label %397

397:                                              ; preds = %396, %391, %323, %25
  %398 = load i8*, i8** %5, align 8
  ret i8* %398
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strncmpiW(i8*, i8*, i32) #2

declare dso_local i32 @GetLocaleInfo(i32, i32, i32*, i32) #2

declare dso_local i32 @strcpyW(i8*, i32*) #2

declare dso_local i32 @strcmpiW(i32, i8*) #2

declare dso_local i32 @strlenW(i8*) #2

declare dso_local i8* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @strtolW(i8*, i8**, i32) #2

declare dso_local i8* @get_dirid_subst(%struct.inf_file*, i32, i32*) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
