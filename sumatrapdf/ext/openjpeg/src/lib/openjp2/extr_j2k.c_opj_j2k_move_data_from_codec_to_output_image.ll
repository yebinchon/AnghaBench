; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_move_data_from_codec_to_output_image.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_move_data_from_codec_to_output_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_14__, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32*, i32 }

@OPJ_FALSE = common dso_local global i32 0, align 4
@OPJ_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)* @opj_j2k_move_data_from_codec_to_output_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_j2k_move_data_from_codec_to_output_image(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %185

15:                                               ; preds = %2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 24
  %23 = trunc i64 %22 to i32
  %24 = call i64 @opj_malloc(i32 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %7, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = icmp eq %struct.TYPE_18__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %15
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @opj_image_destroy(i32* %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %245

36:                                               ; preds = %15
  store i64 0, i64* %6, align 8
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @opj_image_data_free(i32* %50)
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %43
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %6, align 8
  br label %37

61:                                               ; preds = %37
  store i64 0, i64* %6, align 8
  br label %62

62:                                               ; preds = %125, %61
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = icmp ult i64 %63, %69
  br i1 %70, label %71, label %128

71:                                               ; preds = %62
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %8, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i64 %81
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 %88
  %90 = call i32 @memcpy(%struct.TYPE_18__* %82, %struct.TYPE_12__* %89, i32 24)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %101 = load i64, i64* %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 3
  store i32 %99, i32* %103, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %114 = load i64, i64* %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 2
  store i32* %112, i32** %116, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = load i64, i64* %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  store i32* null, i32** %124, align 8
  br label %125

125:                                              ; preds = %71
  %126 = load i64, i64* %6, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %6, align 8
  br label %62

128:                                              ; preds = %62
  store i64 0, i64* %6, align 8
  br label %129

129:                                              ; preds = %166, %128
  %130 = load i64, i64* %6, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ult i64 %130, %133
  br i1 %134, label %135, label %169

135:                                              ; preds = %129
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = load i64, i64* %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = load i64, i64* %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @opj_image_data_free(i32* %156)
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = load i64, i64* %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  store i32* null, i32** %165, align 8
  br label %166

166:                                              ; preds = %135
  %167 = load i64, i64* %6, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %6, align 8
  br label %129

169:                                              ; preds = %129
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = call i32 @opj_free(%struct.TYPE_18__* %180)
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  store %struct.TYPE_18__* %182, %struct.TYPE_18__** %184, align 8
  br label %243

185:                                              ; preds = %2
  store i64 0, i64* %6, align 8
  br label %186

186:                                              ; preds = %239, %185
  %187 = load i64, i64* %6, align 8
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ult i64 %187, %190
  br i1 %191, label %192, label %242

192:                                              ; preds = %186
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  %198 = load i64, i64* %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %203, align 8
  %205 = load i64, i64* %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 3
  store i32 %201, i32* %207, align 8
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %209, align 8
  %211 = load i64, i64* %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @opj_image_data_free(i32* %214)
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = load i64, i64* %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %226, align 8
  %228 = load i64, i64* %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 2
  store i32* %224, i32** %230, align 8
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %234, align 8
  %236 = load i64, i64* %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  store i32* null, i32** %238, align 8
  br label %239

239:                                              ; preds = %192
  %240 = load i64, i64* %6, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %6, align 8
  br label %186

242:                                              ; preds = %186
  br label %243

243:                                              ; preds = %242, %169
  %244 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %244, i32* %3, align 4
  br label %245

245:                                              ; preds = %243, %28
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i64 @opj_malloc(i32) #1

declare dso_local i32 @opj_image_destroy(i32*) #1

declare dso_local i32 @opj_image_data_free(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @opj_free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
