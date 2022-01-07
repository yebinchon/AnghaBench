; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-function.c_load_exponential_func.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-function.c_load_exponential_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64**, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32*, i8** }

@.str = private unnamed_addr constant [45 x i8] c"exponential functions have at most one input\00", align 1
@N = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"exponential function input domain includes illegal negative input values\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"exponential function input domain includes illegal input value zero\00", align 1
@C0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"wrong number of C0 constants for exponential function\00", align 1
@C1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"wrong number of C1 constants for exponential function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i32*)* @load_exponential_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_exponential_func(i32* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @fz_warn(i32* %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @N, align 4
  %24 = call i32 @PDF_NAME(i32 %23)
  %25 = call i32* @pdf_dict_get(i32* %21, i32* %22, i32 %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @pdf_to_real(i32* %26, i32* %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %37, %42
  br i1 %43, label %44, label %81

44:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %77, %44
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %45
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64**, i64*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64*, i64** %54, i64 %56
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %51
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64**, i64*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64*, i64** %65, i64 %67
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %62, %51
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @fz_warn(i32* %74, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %62
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %45

80:                                               ; preds = %45
  br label %148

81:                                               ; preds = %18
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %147

88:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %143, %88
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %146

95:                                               ; preds = %89
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i64**, i64*** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64*, i64** %98, i64 %100
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %139, label %106

106:                                              ; preds = %95
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i64**, i64*** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64*, i64** %109, i64 %111
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %139, label %117

117:                                              ; preds = %106
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i64**, i64*** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64*, i64** %120, i64 %122
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %117
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i64**, i64*** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64*, i64** %131, i64 %133
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %128, %106, %95
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @fz_warn(i32* %140, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %128, %117
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %89

146:                                              ; preds = %89
  br label %147

147:                                              ; preds = %146, %81
  br label %148

148:                                              ; preds = %147, %80
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %172, %148
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %175

155:                                              ; preds = %149
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  %160 = load i8**, i8*** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  store i8* null, i8** %163, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 1, i32* %171, align 4
  br label %172

172:                                              ; preds = %155
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %149

175:                                              ; preds = %149
  %176 = load i32*, i32** %4, align 8
  %177 = load i32*, i32** %6, align 8
  %178 = load i32, i32* @C0, align 4
  %179 = call i32 @PDF_NAME(i32 %178)
  %180 = call i32* @pdf_dict_get(i32* %176, i32* %177, i32 %179)
  store i32* %180, i32** %7, align 8
  %181 = load i32*, i32** %4, align 8
  %182 = load i32*, i32** %7, align 8
  %183 = call i64 @pdf_is_array(i32* %181, i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %223

185:                                              ; preds = %175
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32*, i32** %4, align 8
  %190 = load i32*, i32** %7, align 8
  %191 = call i32 @pdf_array_len(i32* %189, i32* %190)
  %192 = call i32 @fz_mini(i32 %188, i32 %191)
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %193, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %185
  %199 = load i32*, i32** %4, align 8
  %200 = call i32 @fz_warn(i32* %199, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %201

201:                                              ; preds = %198, %185
  store i32 0, i32* %8, align 4
  br label %202

202:                                              ; preds = %219, %201
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %9, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %222

206:                                              ; preds = %202
  %207 = load i32*, i32** %4, align 8
  %208 = load i32*, i32** %7, align 8
  %209 = load i32, i32* %8, align 4
  %210 = call i8* @pdf_array_get_real(i32* %207, i32* %208, i32 %209)
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 2
  %215 = load i8**, i8*** %214, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  store i8* %210, i8** %218, align 8
  br label %219

219:                                              ; preds = %206
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %202

222:                                              ; preds = %202
  br label %223

223:                                              ; preds = %222, %175
  %224 = load i32*, i32** %4, align 8
  %225 = load i32*, i32** %6, align 8
  %226 = load i32, i32* @C1, align 4
  %227 = call i32 @PDF_NAME(i32 %226)
  %228 = call i32* @pdf_dict_get(i32* %224, i32* %225, i32 %227)
  store i32* %228, i32** %7, align 8
  %229 = load i32*, i32** %4, align 8
  %230 = load i32*, i32** %7, align 8
  %231 = call i64 @pdf_is_array(i32* %229, i32* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %272

233:                                              ; preds = %223
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load i32*, i32** %4, align 8
  %238 = load i32*, i32** %7, align 8
  %239 = call i32 @pdf_array_len(i32* %237, i32* %238)
  %240 = call i32 @fz_mini(i32 %236, i32 %239)
  store i32 %240, i32* %10, align 4
  %241 = load i32, i32* %10, align 4
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %241, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %233
  %247 = load i32*, i32** %4, align 8
  %248 = call i32 @fz_warn(i32* %247, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %249

249:                                              ; preds = %246, %233
  store i32 0, i32* %8, align 4
  br label %250

250:                                              ; preds = %268, %249
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* %10, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %271

254:                                              ; preds = %250
  %255 = load i32*, i32** %4, align 8
  %256 = load i32*, i32** %7, align 8
  %257 = load i32, i32* %8, align 4
  %258 = call i8* @pdf_array_get_real(i32* %255, i32* %256, i32 %257)
  %259 = ptrtoint i8* %258 to i32
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %8, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  store i32 %259, i32* %267, align 4
  br label %268

268:                                              ; preds = %254
  %269 = load i32, i32* %8, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %8, align 4
  br label %250

271:                                              ; preds = %250
  br label %272

272:                                              ; preds = %271, %223
  ret void
}

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_to_real(i32*, i32*) #1

declare dso_local i64 @pdf_is_array(i32*, i32*) #1

declare dso_local i32 @fz_mini(i32, i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i8* @pdf_array_get_real(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
