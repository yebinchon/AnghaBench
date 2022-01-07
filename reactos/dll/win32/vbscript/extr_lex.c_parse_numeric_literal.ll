; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_lex.c_parse_numeric_literal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_lex.c_parse_numeric_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@TRUE = common dso_local global i64 0, align 8
@MAXLONGLONG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Invalid numeric literal\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@tDouble = common dso_local global i32 0, align 4
@tShort = common dso_local global i32 0, align 4
@tLong = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8**)* @parse_numeric_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_numeric_literal(%struct.TYPE_3__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %14 = load i64, i64* @TRUE, align 8
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 48
  br i1 %20, label %21, label %52

21:                                               ; preds = %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp sle i32 48, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sle i32 %35, 57
  br i1 %36, label %52, label %37

37:                                               ; preds = %29, %21
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 46
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %47, align 8
  %50 = load i8, i8* %48, align 1
  %51 = sext i8 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %348

52:                                               ; preds = %37, %29, %2
  br label %53

53:                                               ; preds = %93, %52
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ult i8* %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @isdigitW(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %61, %53
  %69 = phi i1 [ false, %53 ], [ %67, %61 ]
  br i1 %69, label %70, label %94

70:                                               ; preds = %68
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %71, 10
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %74, align 8
  %77 = load i8, i8* %75, align 1
  %78 = sext i8 %77 to i32
  %79 = add nsw i32 %72, %78
  %80 = sub nsw i32 %79, 48
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @MAXLONGLONG, align 4
  %83 = sdiv i32 %82, 10
  %84 = icmp sgt i32 %81, %83
  br i1 %84, label %88, label %85

85:                                               ; preds = %70
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85, %70
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %94

91:                                               ; preds = %85
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %91
  br label %53

94:                                               ; preds = %88, %68
  br label %95

95:                                               ; preds = %112, %94
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ult i8* %98, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %95
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i8, i8* %106, align 1
  %108 = call i64 @isdigitW(i8 signext %107)
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %103, %95
  %111 = phi i1 [ false, %95 ], [ %109, %103 ]
  br i1 %111, label %112, label %119

112:                                              ; preds = %110
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %116, align 8
  br label %95

119:                                              ; preds = %110
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 46
  br i1 %125, label %126, label %196

126:                                              ; preds = %119
  %127 = load i64, i64* @FALSE, align 8
  store i64 %127, i64* %6, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %129, align 8
  br label %132

132:                                              ; preds = %168, %126
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ult i8* %135, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %132
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i8, i8* %143, align 1
  %145 = call i64 @isdigitW(i8 signext %144)
  %146 = icmp ne i64 %145, 0
  br label %147

147:                                              ; preds = %140, %132
  %148 = phi i1 [ false, %132 ], [ %146, %140 ]
  br i1 %148, label %149, label %172

149:                                              ; preds = %147
  %150 = load i32, i32* %7, align 4
  %151 = mul nsw i32 %150, 10
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %153, align 8
  %156 = load i8, i8* %154, align 1
  %157 = sext i8 %156 to i32
  %158 = add nsw i32 %151, %157
  %159 = sub nsw i32 %158, 48
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @MAXLONGLONG, align 4
  %162 = sdiv i32 %161, 10
  %163 = icmp sgt i32 %160, %162
  br i1 %163, label %167, label %164

164:                                              ; preds = %149
  %165 = load i32, i32* %8, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164, %149
  br label %172

168:                                              ; preds = %164
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %9, align 4
  br label %132

172:                                              ; preds = %167, %147
  br label %173

173:                                              ; preds = %190, %172
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ult i8* %176, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %173
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i8, i8* %184, align 1
  %186 = call i64 @isdigitW(i8 signext %185)
  %187 = icmp ne i64 %186, 0
  br label %188

188:                                              ; preds = %181, %173
  %189 = phi i1 [ false, %173 ], [ %187, %181 ]
  br i1 %189, label %190, label %195

190:                                              ; preds = %188
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %192, align 8
  br label %173

195:                                              ; preds = %188
  br label %196

196:                                              ; preds = %195, %119
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 101
  br i1 %202, label %210, label %203

203:                                              ; preds = %196
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 69
  br i1 %209, label %210, label %298

210:                                              ; preds = %203, %196
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %212, align 8
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 45
  br i1 %217, label %218, label %223

218:                                              ; preds = %210
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %220, align 8
  store i32 -1, i32* %12, align 4
  br label %223

223:                                              ; preds = %218, %210
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = load i8, i8* %226, align 1
  %228 = call i64 @isdigitW(i8 signext %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %223
  %231 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %348

232:                                              ; preds = %223
  %233 = load i64, i64* @FALSE, align 8
  store i64 %233, i64* %6, align 8
  br label %234

234:                                              ; preds = %285, %232
  %235 = load i32, i32* %11, align 4
  %236 = mul nsw i32 %235, 10
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %238, align 8
  %241 = load i8, i8* %239, align 1
  %242 = sext i8 %241 to i32
  %243 = add nsw i32 %236, %242
  %244 = sub nsw i32 %243, 48
  store i32 %244, i32* %11, align 4
  %245 = load i32, i32* %12, align 4
  %246 = icmp eq i32 %245, -1
  br i1 %246, label %247, label %273

247:                                              ; preds = %234
  %248 = load i32, i32* %11, align 4
  %249 = sub nsw i32 0, %248
  %250 = load i32, i32* %9, align 4
  %251 = add nsw i32 %249, %250
  %252 = load i32, i32* @INT_MAX, align 4
  %253 = sdiv i32 %252, 100
  %254 = sub nsw i32 0, %253
  %255 = icmp slt i32 %251, %254
  br i1 %255, label %256, label %273

256:                                              ; preds = %247
  br label %257

257:                                              ; preds = %264, %256
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  %261 = load i8, i8* %260, align 1
  %262 = call i64 @isdigitW(i8 signext %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %257
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %266, align 8
  br label %257

269:                                              ; preds = %257
  %270 = load i8**, i8*** %5, align 8
  %271 = bitcast i8** %270 to double*
  store double 0.000000e+00, double* %271, align 8
  %272 = load i32, i32* @tDouble, align 4
  store i32 %272, i32* %3, align 4
  br label %348

273:                                              ; preds = %247, %234
  %274 = load i32, i32* %12, align 4
  %275 = load i32, i32* %11, align 4
  %276 = mul nsw i32 %274, %275
  %277 = load i32, i32* %9, align 4
  %278 = add nsw i32 %276, %277
  %279 = load i32, i32* @INT_MAX, align 4
  %280 = sdiv i32 %279, 100
  %281 = icmp sgt i32 %278, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %273
  %283 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %348

284:                                              ; preds = %273
  br label %285

285:                                              ; preds = %284
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = load i8, i8* %288, align 1
  %290 = call i64 @isdigitW(i8 signext %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %234, label %292

292:                                              ; preds = %285
  %293 = load i32, i32* %12, align 4
  %294 = load i32, i32* %11, align 4
  %295 = mul nsw i32 %293, %294
  %296 = load i32, i32* %9, align 4
  %297 = add nsw i32 %296, %295
  store i32 %297, i32* %9, align 4
  br label %298

298:                                              ; preds = %292, %203
  %299 = load i64, i64* %6, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %321

301:                                              ; preds = %298
  %302 = load i32, i32* %7, align 4
  %303 = load i32, i32* %7, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %321

305:                                              ; preds = %301
  %306 = load i32, i32* %7, align 4
  store i32 %306, i32* %13, align 4
  %307 = load i32, i32* %13, align 4
  %308 = load i8**, i8*** %5, align 8
  %309 = bitcast i8** %308 to i32*
  store i32 %307, i32* %309, align 4
  %310 = load i32, i32* %13, align 4
  %311 = trunc i32 %310 to i16
  %312 = sext i16 %311 to i32
  %313 = load i32, i32* %13, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %305
  %316 = load i32, i32* @tShort, align 4
  br label %319

317:                                              ; preds = %305
  %318 = load i32, i32* @tLong, align 4
  br label %319

319:                                              ; preds = %317, %315
  %320 = phi i32 [ %316, %315 ], [ %318, %317 ]
  store i32 %320, i32* %3, align 4
  br label %348

321:                                              ; preds = %301, %298
  %322 = load i32, i32* %9, align 4
  %323 = icmp sge i32 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %321
  %325 = load i32, i32* %7, align 4
  %326 = load i32, i32* %9, align 4
  %327 = call i32 @pow(i32 10, i32 %326)
  %328 = mul nsw i32 %325, %327
  br label %335

329:                                              ; preds = %321
  %330 = load i32, i32* %7, align 4
  %331 = load i32, i32* %9, align 4
  %332 = sub nsw i32 0, %331
  %333 = call i32 @pow(i32 10, i32 %332)
  %334 = sdiv i32 %330, %333
  br label %335

335:                                              ; preds = %329, %324
  %336 = phi i32 [ %328, %324 ], [ %334, %329 ]
  %337 = sitofp i32 %336 to double
  store double %337, double* %10, align 8
  %338 = load double, double* %10, align 8
  %339 = call i64 @isinf(double %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %335
  %342 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %348

343:                                              ; preds = %335
  %344 = load double, double* %10, align 8
  %345 = load i8**, i8*** %5, align 8
  %346 = bitcast i8** %345 to double*
  store double %344, double* %346, align 8
  %347 = load i32, i32* @tDouble, align 4
  store i32 %347, i32* %3, align 4
  br label %348

348:                                              ; preds = %343, %341, %319, %282, %269, %230, %45
  %349 = load i32, i32* %3, align 4
  ret i32 %349
}

declare dso_local i64 @isdigitW(i8 signext) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @pow(i32, i32) #1

declare dso_local i64 @isinf(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
