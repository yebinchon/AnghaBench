; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_objcmp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_objcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_26__** }
%struct.TYPE_22__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_26__*, %struct.TYPE_26__* }

@PDF_FALSE = common dso_local global %struct.TYPE_26__* null, align 8
@PDF_LIMIT = common dso_local global %struct.TYPE_26__* null, align 8
@PDF_NAME_LIST = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdf_objcmp(i32* %0, %struct.TYPE_26__* %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  %9 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %11 = icmp eq %struct.TYPE_26__* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %367

13:                                               ; preds = %3
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** @PDF_FALSE, align 8
  %16 = icmp ule %struct.TYPE_26__* %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** @PDF_FALSE, align 8
  %20 = icmp ule %struct.TYPE_26__* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13
  store i32 1, i32* %4, align 4
  br label %367

22:                                               ; preds = %17
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** @PDF_LIMIT, align 8
  %25 = icmp ult %struct.TYPE_26__* %23, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** @PDF_LIMIT, align 8
  %29 = icmp ult %struct.TYPE_26__* %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %33 = icmp ne %struct.TYPE_26__* %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %4, align 4
  br label %367

35:                                               ; preds = %26
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 130
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %367

41:                                               ; preds = %35
  %42 = load i32*, i32** @PDF_NAME_LIST, align 8
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %44 = ptrtoint %struct.TYPE_26__* %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %48 = call %struct.TYPE_21__* @NAME(%struct.TYPE_26__* %47)
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strcmp(i32 %46, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %367

52:                                               ; preds = %22
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** @PDF_LIMIT, align 8
  %55 = icmp ult %struct.TYPE_26__* %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 130
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 1, i32* %4, align 4
  br label %367

62:                                               ; preds = %56
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %64 = call %struct.TYPE_21__* @NAME(%struct.TYPE_26__* %63)
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** @PDF_NAME_LIST, align 8
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %69 = ptrtoint %struct.TYPE_26__* %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strcmp(i32 %66, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %367

73:                                               ; preds = %52
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i32 1, i32* %4, align 4
  br label %367

82:                                               ; preds = %73
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  switch i64 %85, label %366 [
    i64 131, label %86
    i64 129, label %98
    i64 128, label %125
    i64 130, label %193
    i64 132, label %203
    i64 134, label %233
    i64 133, label %287
  ]

86:                                               ; preds = %82
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %88 = call %struct.TYPE_20__* @NUM(%struct.TYPE_26__* %87)
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %93 = call %struct.TYPE_20__* @NUM(%struct.TYPE_26__* %92)
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %91, %96
  store i32 %97, i32* %4, align 4
  br label %367

98:                                               ; preds = %82
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %100 = call %struct.TYPE_20__* @NUM(%struct.TYPE_26__* %99)
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %105 = call %struct.TYPE_20__* @NUM(%struct.TYPE_26__* %104)
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %103, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  store i32 -1, i32* %4, align 4
  br label %367

111:                                              ; preds = %98
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %113 = call %struct.TYPE_20__* @NUM(%struct.TYPE_26__* %112)
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %118 = call %struct.TYPE_20__* @NUM(%struct.TYPE_26__* %117)
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %116, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  store i32 1, i32* %4, align 4
  br label %367

124:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %367

125:                                              ; preds = %82
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %127 = call %struct.TYPE_27__* @STRING(%struct.TYPE_26__* %126)
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %131 = call %struct.TYPE_27__* @STRING(%struct.TYPE_26__* %130)
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %129, %133
  br i1 %134, label %135, label %152

135:                                              ; preds = %125
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %137 = call %struct.TYPE_27__* @STRING(%struct.TYPE_26__* %136)
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %141 = call %struct.TYPE_27__* @STRING(%struct.TYPE_26__* %140)
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %145 = call %struct.TYPE_27__* @STRING(%struct.TYPE_26__* %144)
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @memcmp(i32 %139, i32 %143, i32 %147)
  %149 = icmp sle i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %135
  store i32 -1, i32* %4, align 4
  br label %367

151:                                              ; preds = %135
  store i32 1, i32* %4, align 4
  br label %367

152:                                              ; preds = %125
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %154 = call %struct.TYPE_27__* @STRING(%struct.TYPE_26__* %153)
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %158 = call %struct.TYPE_27__* @STRING(%struct.TYPE_26__* %157)
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp sgt i32 %156, %160
  br i1 %161, label %162, label %179

162:                                              ; preds = %152
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %164 = call %struct.TYPE_27__* @STRING(%struct.TYPE_26__* %163)
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %168 = call %struct.TYPE_27__* @STRING(%struct.TYPE_26__* %167)
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %172 = call %struct.TYPE_27__* @STRING(%struct.TYPE_26__* %171)
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @memcmp(i32 %166, i32 %170, i32 %174)
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %162
  store i32 1, i32* %4, align 4
  br label %367

178:                                              ; preds = %162
  store i32 -1, i32* %4, align 4
  br label %367

179:                                              ; preds = %152
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %181 = call %struct.TYPE_27__* @STRING(%struct.TYPE_26__* %180)
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %185 = call %struct.TYPE_27__* @STRING(%struct.TYPE_26__* %184)
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %189 = call %struct.TYPE_27__* @STRING(%struct.TYPE_26__* %188)
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @memcmp(i32 %183, i32 %187, i32 %191)
  store i32 %192, i32* %4, align 4
  br label %367

193:                                              ; preds = %82
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %195 = call %struct.TYPE_21__* @NAME(%struct.TYPE_26__* %194)
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %199 = call %struct.TYPE_21__* @NAME(%struct.TYPE_26__* %198)
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @strcmp(i32 %197, i32 %201)
  store i32 %202, i32* %4, align 4
  br label %367

203:                                              ; preds = %82
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %205 = call %struct.TYPE_28__* @REF(%struct.TYPE_26__* %204)
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %209 = call %struct.TYPE_28__* @REF(%struct.TYPE_26__* %208)
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %207, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %203
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %215 = call %struct.TYPE_28__* @REF(%struct.TYPE_26__* %214)
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %219 = call %struct.TYPE_28__* @REF(%struct.TYPE_26__* %218)
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %217, %221
  store i32 %222, i32* %4, align 4
  br label %367

223:                                              ; preds = %203
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %225 = call %struct.TYPE_28__* @REF(%struct.TYPE_26__* %224)
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %229 = call %struct.TYPE_28__* @REF(%struct.TYPE_26__* %228)
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = sub nsw i32 %227, %231
  store i32 %232, i32* %4, align 4
  br label %367

233:                                              ; preds = %82
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %235 = call %struct.TYPE_23__* @ARRAY(%struct.TYPE_26__* %234)
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %239 = call %struct.TYPE_23__* @ARRAY(%struct.TYPE_26__* %238)
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %237, %241
  br i1 %242, label %243, label %253

243:                                              ; preds = %233
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %245 = call %struct.TYPE_23__* @ARRAY(%struct.TYPE_26__* %244)
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %249 = call %struct.TYPE_23__* @ARRAY(%struct.TYPE_26__* %248)
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = sub nsw i32 %247, %251
  store i32 %252, i32* %4, align 4
  br label %367

253:                                              ; preds = %233
  store i32 0, i32* %8, align 4
  br label %254

254:                                              ; preds = %283, %253
  %255 = load i32, i32* %8, align 4
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %257 = call %struct.TYPE_23__* @ARRAY(%struct.TYPE_26__* %256)
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp slt i32 %255, %259
  br i1 %260, label %261, label %286

261:                                              ; preds = %254
  %262 = load i32*, i32** %5, align 8
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %264 = call %struct.TYPE_23__* @ARRAY(%struct.TYPE_26__* %263)
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %265, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %266, i64 %268
  %270 = load %struct.TYPE_26__*, %struct.TYPE_26__** %269, align 8
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %272 = call %struct.TYPE_23__* @ARRAY(%struct.TYPE_26__* %271)
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %273, align 8
  %275 = load i32, i32* %8, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %274, i64 %276
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %277, align 8
  %279 = call i32 @pdf_objcmp(i32* %262, %struct.TYPE_26__* %270, %struct.TYPE_26__* %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %261
  store i32 1, i32* %4, align 4
  br label %367

282:                                              ; preds = %261
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %8, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %8, align 4
  br label %254

286:                                              ; preds = %254
  store i32 0, i32* %4, align 4
  br label %367

287:                                              ; preds = %82
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %289 = call %struct.TYPE_22__* @DICT(%struct.TYPE_26__* %288)
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %293 = call %struct.TYPE_22__* @DICT(%struct.TYPE_26__* %292)
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp ne i32 %291, %295
  br i1 %296, label %297, label %307

297:                                              ; preds = %287
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %299 = call %struct.TYPE_22__* @DICT(%struct.TYPE_26__* %298)
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %303 = call %struct.TYPE_22__* @DICT(%struct.TYPE_26__* %302)
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = sub nsw i32 %301, %305
  store i32 %306, i32* %4, align 4
  br label %367

307:                                              ; preds = %287
  store i32 0, i32* %8, align 4
  br label %308

308:                                              ; preds = %362, %307
  %309 = load i32, i32* %8, align 4
  %310 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %311 = call %struct.TYPE_22__* @DICT(%struct.TYPE_26__* %310)
  %312 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = icmp slt i32 %309, %313
  br i1 %314, label %315, label %365

315:                                              ; preds = %308
  %316 = load i32*, i32** %5, align 8
  %317 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %318 = call %struct.TYPE_22__* @DICT(%struct.TYPE_26__* %317)
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 1
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %319, align 8
  %321 = load i32, i32* %8, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_26__*, %struct.TYPE_26__** %324, align 8
  %326 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %327 = call %struct.TYPE_22__* @DICT(%struct.TYPE_26__* %326)
  %328 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_25__*, %struct.TYPE_25__** %328, align 8
  %330 = load i32, i32* %8, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_26__*, %struct.TYPE_26__** %333, align 8
  %335 = call i32 @pdf_objcmp(i32* %316, %struct.TYPE_26__* %325, %struct.TYPE_26__* %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %315
  store i32 1, i32* %4, align 4
  br label %367

338:                                              ; preds = %315
  %339 = load i32*, i32** %5, align 8
  %340 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %341 = call %struct.TYPE_22__* @DICT(%struct.TYPE_26__* %340)
  %342 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_25__*, %struct.TYPE_25__** %342, align 8
  %344 = load i32, i32* %8, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %346, i32 0, i32 0
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %347, align 8
  %349 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %350 = call %struct.TYPE_22__* @DICT(%struct.TYPE_26__* %349)
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 1
  %352 = load %struct.TYPE_25__*, %struct.TYPE_25__** %351, align 8
  %353 = load i32, i32* %8, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_26__*, %struct.TYPE_26__** %356, align 8
  %358 = call i32 @pdf_objcmp(i32* %339, %struct.TYPE_26__* %348, %struct.TYPE_26__* %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %338
  store i32 1, i32* %4, align 4
  br label %367

361:                                              ; preds = %338
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %8, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %8, align 4
  br label %308

365:                                              ; preds = %308
  store i32 0, i32* %4, align 4
  br label %367

366:                                              ; preds = %82
  store i32 1, i32* %4, align 4
  br label %367

367:                                              ; preds = %366, %365, %360, %337, %297, %286, %281, %243, %223, %213, %193, %179, %178, %177, %151, %150, %124, %123, %110, %86, %81, %62, %61, %41, %40, %30, %21, %12
  %368 = load i32, i32* %4, align 4
  ret i32 %368
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local %struct.TYPE_21__* @NAME(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_20__* @NUM(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_27__* @STRING(%struct.TYPE_26__*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local %struct.TYPE_28__* @REF(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_23__* @ARRAY(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_22__* @DICT(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
