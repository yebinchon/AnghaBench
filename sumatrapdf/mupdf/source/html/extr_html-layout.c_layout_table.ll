; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_layout_table.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_layout_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@BOX_BLOCK = common dso_local global i64 0, align 8
@BOX_FLOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, float, i32*)* @layout_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @layout_table(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2, float %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca float, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store float %3, float* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %15, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @fz_from_css_number(i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 5
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @fz_from_css_number(i32 %44, i32 %47, i32 %50, i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  store i64 %60, i64* %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 7
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %11, align 8
  br label %68

68:                                               ; preds = %92, %5
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %70 = icmp ne %struct.TYPE_9__* %69, null
  br i1 %70, label %71, label %96

71:                                               ; preds = %68
  store i32 0, i32* %14, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 7
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %12, align 8
  br label %75

75:                                               ; preds = %81, %71
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %77 = icmp ne %struct.TYPE_9__* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %78
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 6
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %12, align 8
  br label %75

85:                                               ; preds = %75
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %89, %85
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 6
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** %11, align 8
  br label %68

96:                                               ; preds = %68
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 7
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** %11, align 8
  br label %100

100:                                              ; preds = %274, %96
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %102 = icmp ne %struct.TYPE_9__* %101, null
  br i1 %102, label %103, label %278

103:                                              ; preds = %100
  store i32 0, i32* %14, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @fz_from_css_number(i32 %108, i32 %111, i32 %114, i32 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 5
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 3
  store i64 %134, i64* %136, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 2
  store i64 %134, i64* %138, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 7
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  store %struct.TYPE_9__* %141, %struct.TYPE_9__** %12, align 8
  br label %142

142:                                              ; preds = %264, %103
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %144 = icmp ne %struct.TYPE_9__* %143, null
  br i1 %144, label %145, label %268

145:                                              ; preds = %142
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %15, align 4
  %150 = sdiv i32 %148, %149
  %151 = sitofp i32 %150 to float
  store float %151, float* %16, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i8* @fz_from_css_number(i32 %156, i32 %159, i32 %162, i32 %165)
  %167 = ptrtoint i8* %166 to i32
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 3
  store i64 %172, i64* %174, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 2
  store i64 %172, i64* %176, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = sitofp i64 %179 to float
  %181 = load i32, i32* %14, align 4
  %182 = sitofp i32 %181 to float
  %183 = load float, float* %16, align 4
  %184 = fmul float %182, %183
  %185 = fadd float %180, %184
  %186 = fptosi float %185 to i64
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 5
  store i64 %186, i64* %188, align 8
  %189 = load float, float* %16, align 4
  %190 = fptosi float %189 to i32
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 7
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  store %struct.TYPE_9__* %195, %struct.TYPE_9__** %13, align 8
  br label %196

196:                                              ; preds = %243, %145
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %198 = icmp ne %struct.TYPE_9__* %197, null
  br i1 %198, label %199, label %247

199:                                              ; preds = %196
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @BOX_BLOCK, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %223

205:                                              ; preds = %199
  %206 = load i32*, i32** %6, align 8
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 5
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 3
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = sitofp i32 %218 to float
  %220 = load float, float* %9, align 4
  %221 = load i32*, i32** %10, align 8
  %222 = call i32 @layout_block(i32* %206, %struct.TYPE_9__* %207, i32 %210, i64 %213, i64* %215, float %219, float %220, i32 0, i32* %221)
  br label %237

223:                                              ; preds = %199
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @BOX_FLOW, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %236

229:                                              ; preds = %223
  %230 = load i32*, i32** %6, align 8
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %233 = load float, float* %9, align 4
  %234 = load i32*, i32** %10, align 8
  %235 = call i32 @layout_flow(i32* %230, %struct.TYPE_9__* %231, %struct.TYPE_9__* %232, float %233, i32* %234)
  br label %236

236:                                              ; preds = %229, %223
  br label %237

237:                                              ; preds = %236, %205
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 3
  store i64 %240, i64* %242, align 8
  br label %243

243:                                              ; preds = %237
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 6
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %245, align 8
  store %struct.TYPE_9__* %246, %struct.TYPE_9__** %13, align 8
  br label %196

247:                                              ; preds = %196
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = icmp sgt i64 %250, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %247
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 3
  store i64 %258, i64* %260, align 8
  br label %261

261:                                              ; preds = %255, %247
  %262 = load i32, i32* %14, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %14, align 4
  br label %264

264:                                              ; preds = %261
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 6
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %266, align 8
  store %struct.TYPE_9__* %267, %struct.TYPE_9__** %12, align 8
  br label %142

268:                                              ; preds = %142
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 3
  store i64 %271, i64* %273, align 8
  br label %274

274:                                              ; preds = %268
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 6
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %276, align 8
  store %struct.TYPE_9__* %277, %struct.TYPE_9__** %11, align 8
  br label %100

278:                                              ; preds = %100
  ret void
}

declare dso_local i8* @fz_from_css_number(i32, i32, i32, i32) #1

declare dso_local i32 @layout_block(i32*, %struct.TYPE_9__*, i32, i64, i64*, float, float, i32, i32*) #1

declare dso_local i32 @layout_flow(i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, float, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
