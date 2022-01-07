; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-device.c_pdf_dev_text_span.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-device.c_pdf_dev_text_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_21__*, %struct.TYPE_23__ }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%M Tm\0A[<\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c">%d<\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c">]TJ\0A%g %g Td\0A[<\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c">]TJ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_20__*)* @pdf_dev_text_span to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_dev_text_span(i32* %0, i32* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_23__, align 4
  %9 = alloca %struct.TYPE_23__, align 4
  %10 = alloca %struct.TYPE_23__, align 4
  %11 = alloca %struct.TYPE_23__, align 4
  %12 = alloca %struct.TYPE_23__, align 4
  %13 = alloca %struct.TYPE_23__, align 4
  %14 = alloca %struct.TYPE_22__, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_23__, align 4
  %20 = alloca %struct.TYPE_23__, align 4
  %21 = alloca %struct.TYPE_23__, align 4
  %22 = alloca %struct.TYPE_23__, align 4
  %23 = alloca %struct.TYPE_21__*, align 8
  %24 = alloca %struct.TYPE_22__, align 4
  %25 = alloca %struct.TYPE_23__, align 4
  %26 = alloca %struct.TYPE_22__, align 4
  %27 = alloca %struct.TYPE_23__, align 4
  %28 = alloca %struct.TYPE_23__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call %struct.TYPE_19__* @CURRENT_GSTATE(i32* %29)
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %7, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %311

36:                                               ; preds = %3
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 1, %39
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 1, %43
  %45 = call i64 @fz_scale(i32 %40, i32 %44)
  %46 = bitcast %struct.TYPE_23__* %19 to i64*
  store i64 %45, i64* %46, align 4
  %47 = bitcast %struct.TYPE_23__* %13 to i8*
  %48 = bitcast %struct.TYPE_23__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 8, i1 false)
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 4
  %51 = bitcast %struct.TYPE_23__* %8 to i8*
  %52 = bitcast %struct.TYPE_23__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 8 %52, i64 8, i1 false)
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = bitcast %struct.TYPE_23__* %13 to i64*
  %68 = load i64, i64* %67, align 4
  %69 = bitcast %struct.TYPE_23__* %8 to i64*
  %70 = load i64, i64* %69, align 4
  %71 = call i64 @fz_concat(i64 %68, i64 %70)
  %72 = bitcast %struct.TYPE_23__* %20 to i64*
  store i64 %71, i64* %72, align 4
  %73 = bitcast %struct.TYPE_23__* %9 to i8*
  %74 = bitcast %struct.TYPE_23__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 8, i1 false)
  %75 = bitcast %struct.TYPE_23__* %10 to i8*
  %76 = bitcast %struct.TYPE_23__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 8, i1 false)
  %77 = bitcast %struct.TYPE_23__* %9 to i64*
  %78 = load i64, i64* %77, align 4
  %79 = call i64 @fz_invert_matrix(i64 %78)
  %80 = bitcast %struct.TYPE_23__* %21 to i64*
  store i64 %79, i64* %80, align 4
  %81 = bitcast %struct.TYPE_23__* %12 to i8*
  %82 = bitcast %struct.TYPE_23__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 8, i1 false)
  %83 = bitcast %struct.TYPE_23__* %8 to i64*
  %84 = load i64, i64* %83, align 4
  %85 = call i64 @fz_invert_matrix(i64 %84)
  %86 = bitcast %struct.TYPE_23__* %22 to i64*
  store i64 %85, i64* %86, align 4
  %87 = bitcast %struct.TYPE_23__* %11 to i8*
  %88 = bitcast %struct.TYPE_23__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 8, i1 false)
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32*, i32, i8*, ...) @fz_append_printf(i32* %89, i32 %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_23__* %9)
  store i32 0, i32* %18, align 4
  br label %94

94:                                               ; preds = %302, %36
  %95 = load i32, i32* %18, align 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %305

100:                                              ; preds = %94
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %102, align 8
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i64 %105
  store %struct.TYPE_21__* %106, %struct.TYPE_21__** %23, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %302

112:                                              ; preds = %100
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %115, %117
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %122, %124
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  store i32 %125, i32* %126, align 4
  %127 = bitcast %struct.TYPE_22__* %14 to i64*
  %128 = load i64, i64* %127, align 4
  %129 = bitcast %struct.TYPE_23__* %11 to i64*
  %130 = load i64, i64* %129, align 4
  %131 = call i64 @fz_transform_vector(i64 %128, i64 %130)
  %132 = bitcast %struct.TYPE_22__* %24 to i64*
  store i64 %131, i64* %132, align 4
  %133 = bitcast %struct.TYPE_22__* %14 to i8*
  %134 = bitcast %struct.TYPE_22__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %133, i8* align 4 %134, i64 8, i1 false)
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %136, 1000
  %138 = sitofp i32 %137 to float
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, float -5.000000e-01, float 5.000000e-01
  %144 = fadd float %138, %143
  %145 = fptosi float %144 to i32
  store i32 %145, i32* %16, align 4
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %147, 1000
  %149 = sitofp i32 %148 to float
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, float -5.000000e-01, float 5.000000e-01
  %155 = fadd float %149, %154
  %156 = fptosi float %155 to i32
  store i32 %156, i32* %17, align 4
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  store i32 %159, i32* %160, align 4
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* %16, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %112
  %168 = load i32, i32* %17, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %244

170:                                              ; preds = %167, %112
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %170
  %176 = load i32, i32* %17, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %175
  %179 = load i32*, i32** %4, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %16, align 4
  %184 = sub nsw i32 0, %183
  %185 = call i32 (i32*, i32, i8*, ...) @fz_append_printf(i32* %179, i32 %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %184)
  br label %243

186:                                              ; preds = %175, %170
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %202

191:                                              ; preds = %186
  %192 = load i32, i32* %16, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %191
  %195 = load i32*, i32** %4, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %17, align 4
  %200 = sub nsw i32 0, %199
  %201 = call i32 (i32*, i32, i8*, ...) @fz_append_printf(i32* %195, i32 %198, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %200)
  br label %242

202:                                              ; preds = %191, %186
  %203 = bitcast %struct.TYPE_23__* %13 to i64*
  %204 = load i64, i64* %203, align 4
  %205 = bitcast %struct.TYPE_23__* %8 to i64*
  %206 = load i64, i64* %205, align 4
  %207 = call i64 @fz_concat(i64 %204, i64 %206)
  %208 = bitcast %struct.TYPE_23__* %25 to i64*
  store i64 %207, i64* %208, align 4
  %209 = bitcast %struct.TYPE_23__* %9 to i8*
  %210 = bitcast %struct.TYPE_23__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %209, i8* align 4 %210, i64 8, i1 false)
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %212, %214
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  store i32 %215, i32* %216, align 4
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %218, %220
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  store i32 %221, i32* %222, align 4
  %223 = bitcast %struct.TYPE_22__* %14 to i64*
  %224 = load i64, i64* %223, align 4
  %225 = bitcast %struct.TYPE_23__* %12 to i64*
  %226 = load i64, i64* %225, align 4
  %227 = call i64 @fz_transform_vector(i64 %224, i64 %226)
  %228 = bitcast %struct.TYPE_22__* %26 to i64*
  store i64 %227, i64* %228, align 4
  %229 = bitcast %struct.TYPE_22__* %14 to i8*
  %230 = bitcast %struct.TYPE_22__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %229, i8* align 4 %230, i64 8, i1 false)
  %231 = load i32*, i32** %4, align 8
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 (i32*, i32, i8*, ...) @fz_append_printf(i32* %231, i32 %234, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %236, i32 %238)
  %240 = bitcast %struct.TYPE_23__* %10 to i8*
  %241 = bitcast %struct.TYPE_23__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %240, i8* align 4 %241, i64 8, i1 false)
  br label %242

242:                                              ; preds = %202, %194
  br label %243

243:                                              ; preds = %242, %178
  br label %244

244:                                              ; preds = %243, %167
  %245 = load i32*, i32** %4, align 8
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = call i64 @fz_font_t3_procs(i32* %245, i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %244
  %252 = load i32*, i32** %4, align 8
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (i32*, i32, i8*, ...) @fz_append_printf(i32* %252, i32 %255, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %258)
  br label %269

260:                                              ; preds = %244
  %261 = load i32*, i32** %4, align 8
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = call i32 (i32*, i32, i8*, ...) @fz_append_printf(i32* %261, i32 %264, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %267)
  br label %269

269:                                              ; preds = %260, %251
  %270 = load i32*, i32** %4, align 8
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = call float @fz_advance_glyph(i32* %270, i32 %273, i32 %276, i32 %279)
  store float %280, float* %15, align 4
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %269
  %286 = load float, float* %15, align 4
  %287 = bitcast %struct.TYPE_23__* %8 to i64*
  %288 = load i64, i64* %287, align 4
  %289 = call i64 @fz_pre_translate(i64 %288, float %286, float 0.000000e+00)
  %290 = bitcast %struct.TYPE_23__* %27 to i64*
  store i64 %289, i64* %290, align 4
  %291 = bitcast %struct.TYPE_23__* %8 to i8*
  %292 = bitcast %struct.TYPE_23__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %291, i8* align 4 %292, i64 8, i1 false)
  br label %301

293:                                              ; preds = %269
  %294 = load float, float* %15, align 4
  %295 = bitcast %struct.TYPE_23__* %8 to i64*
  %296 = load i64, i64* %295, align 4
  %297 = call i64 @fz_pre_translate(i64 %296, float 0.000000e+00, float %294)
  %298 = bitcast %struct.TYPE_23__* %28 to i64*
  store i64 %297, i64* %298, align 4
  %299 = bitcast %struct.TYPE_23__* %8 to i8*
  %300 = bitcast %struct.TYPE_23__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %299, i8* align 4 %300, i64 8, i1 false)
  br label %301

301:                                              ; preds = %293, %285
  br label %302

302:                                              ; preds = %301, %111
  %303 = load i32, i32* %18, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %18, align 4
  br label %94

305:                                              ; preds = %94
  %306 = load i32*, i32** %4, align 8
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @fz_append_string(i32* %306, i32 %309, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %311

311:                                              ; preds = %305, %35
  ret void
}

declare dso_local %struct.TYPE_19__* @CURRENT_GSTATE(i32*) #1

declare dso_local i64 @fz_scale(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @fz_concat(i64, i64) #1

declare dso_local i64 @fz_invert_matrix(i64) #1

declare dso_local i32 @fz_append_printf(i32*, i32, i8*, ...) #1

declare dso_local i64 @fz_transform_vector(i64, i64) #1

declare dso_local i64 @fz_font_t3_procs(i32*, i32) #1

declare dso_local float @fz_advance_glyph(i32*, i32, i32, i32) #1

declare dso_local i64 @fz_pre_translate(i64, float, float) #1

declare dso_local i32 @fz_append_string(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
