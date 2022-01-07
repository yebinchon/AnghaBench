; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/common/extr_color.c_sycc422_to_rgb.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/common/extr_color.c_sycc422_to_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32, i32, i64, i64, i64 }

@OPJ_CLRSPC_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @sycc422_to_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sycc422_to_rgb(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = sub nsw i32 %28, 1
  %30 = shl i32 1, %29
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %18, align 4
  %32 = shl i32 1, %31
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %18, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %12, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = mul i64 %46, %47
  store i64 %48, i64* %14, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %9, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %10, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %11, align 8
  %67 = load i64, i64* %14, align 8
  %68 = mul i64 4, %67
  %69 = trunc i64 %68 to i32
  %70 = call i64 @opj_image_data_alloc(i32 %69)
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %6, align 8
  store i32* %71, i32** %3, align 8
  %72 = load i64, i64* %14, align 8
  %73 = mul i64 4, %72
  %74 = trunc i64 %73 to i32
  %75 = call i64 @opj_image_data_alloc(i32 %74)
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %7, align 8
  store i32* %76, i32** %4, align 8
  %77 = load i64, i64* %14, align 8
  %78 = mul i64 4, %77
  %79 = trunc i64 %78 to i32
  %80 = call i64 @opj_image_data_alloc(i32 %79)
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** %8, align 8
  store i32* %81, i32** %5, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %1
  %85 = load i32*, i32** %7, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32*, i32** %8, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %87, %84, %1
  br label %318

91:                                               ; preds = %87
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, 1
  %96 = zext i32 %95 to i64
  store i64 %96, i64* %15, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %15, align 8
  %99 = sub i64 %97, %98
  store i64 %99, i64* %16, align 8
  store i64 0, i64* %19, align 8
  br label %100

100:                                              ; preds = %208, %91
  %101 = load i64, i64* %19, align 8
  %102 = load i64, i64* %13, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %211

104:                                              ; preds = %100
  %105 = load i64, i64* %15, align 8
  %106 = icmp ugt i64 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %18, align 4
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @sycc_to_rgb(i32 %108, i32 %109, i32 %111, i32 0, i32 0, i32* %112, i32* %113, i32* %114)
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %9, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %6, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %7, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %8, align 8
  br label %124

124:                                              ; preds = %107, %104
  store i64 0, i64* %20, align 8
  br label %125

125:                                              ; preds = %175, %124
  %126 = load i64, i64* %20, align 8
  %127 = load i64, i64* %16, align 8
  %128 = and i64 %127, -2
  %129 = icmp ult i64 %126, %128
  br i1 %129, label %130, label %178

130:                                              ; preds = %125
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %18, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %6, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = call i32 @sycc_to_rgb(i32 %131, i32 %132, i32 %134, i32 %136, i32 %138, i32* %139, i32* %140, i32* %141)
  %143 = load i32*, i32** %9, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %9, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %6, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %7, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %8, align 8
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %18, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %6, align 8
  %160 = load i32*, i32** %7, align 8
  %161 = load i32*, i32** %8, align 8
  %162 = call i32 @sycc_to_rgb(i32 %151, i32 %152, i32 %154, i32 %156, i32 %158, i32* %159, i32* %160, i32* %161)
  %163 = load i32*, i32** %9, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %9, align 8
  %165 = load i32*, i32** %6, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %6, align 8
  %167 = load i32*, i32** %7, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %7, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %8, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %172, i32** %10, align 8
  %173 = load i32*, i32** %11, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %11, align 8
  br label %175

175:                                              ; preds = %130
  %176 = load i64, i64* %20, align 8
  %177 = add i64 %176, 2
  store i64 %177, i64* %20, align 8
  br label %125

178:                                              ; preds = %125
  %179 = load i64, i64* %20, align 8
  %180 = load i64, i64* %16, align 8
  %181 = icmp ult i64 %179, %180
  br i1 %181, label %182, label %207

182:                                              ; preds = %178
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* %18, align 4
  %185 = load i32*, i32** %9, align 8
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %10, align 8
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %11, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %6, align 8
  %192 = load i32*, i32** %7, align 8
  %193 = load i32*, i32** %8, align 8
  %194 = call i32 @sycc_to_rgb(i32 %183, i32 %184, i32 %186, i32 %188, i32 %190, i32* %191, i32* %192, i32* %193)
  %195 = load i32*, i32** %9, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %9, align 8
  %197 = load i32*, i32** %6, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %6, align 8
  %199 = load i32*, i32** %7, align 8
  %200 = getelementptr inbounds i32, i32* %199, i32 1
  store i32* %200, i32** %7, align 8
  %201 = load i32*, i32** %8, align 8
  %202 = getelementptr inbounds i32, i32* %201, i32 1
  store i32* %202, i32** %8, align 8
  %203 = load i32*, i32** %10, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %10, align 8
  %205 = load i32*, i32** %11, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %11, align 8
  br label %207

207:                                              ; preds = %182, %178
  br label %208

208:                                              ; preds = %207
  %209 = load i64, i64* %19, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %19, align 8
  br label %100

211:                                              ; preds = %100
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i64 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @opj_image_data_free(i32* %217)
  %219 = load i32*, i32** %3, align 8
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i64 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  store i32* %219, i32** %224, align 8
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i64 1
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = call i32 @opj_image_data_free(i32* %230)
  %232 = load i32*, i32** %4, align 8
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 1
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  store i32* %232, i32** %237, align 8
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i64 2
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @opj_image_data_free(i32* %243)
  %245 = load i32*, i32** %5, align 8
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i64 2
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 0
  store i32* %245, i32** %250, align 8
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i64 0
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 4
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i64 2
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 4
  store i64 %256, i64* %261, align 8
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i64 1
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 4
  store i64 %256, i64* %266, align 8
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i64 0
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 2
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i64 2
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 3
  store i64 %272, i64* %277, align 8
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 2
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i64 1
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 3
  store i64 %272, i64* %282, align 8
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i64 0
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 2
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i64 2
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 2
  store i32 %288, i32* %293, align 4
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 2
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i64 1
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 2
  store i32 %288, i32* %298, align 4
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 2
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i64 0
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 2
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i64 2
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 1
  store i32 %304, i32* %309, align 8
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 2
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i64 1
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 1
  store i32 %304, i32* %314, align 8
  %315 = load i32, i32* @OPJ_CLRSPC_SRGB, align 4
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 1
  store i32 %315, i32* %317, align 4
  br label %325

318:                                              ; preds = %90
  %319 = load i32*, i32** %6, align 8
  %320 = call i32 @opj_image_data_free(i32* %319)
  %321 = load i32*, i32** %7, align 8
  %322 = call i32 @opj_image_data_free(i32* %321)
  %323 = load i32*, i32** %8, align 8
  %324 = call i32 @opj_image_data_free(i32* %323)
  br label %325

325:                                              ; preds = %318, %211
  ret void
}

declare dso_local i64 @opj_image_data_alloc(i32) #1

declare dso_local i32 @sycc_to_rgb(i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @opj_image_data_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
