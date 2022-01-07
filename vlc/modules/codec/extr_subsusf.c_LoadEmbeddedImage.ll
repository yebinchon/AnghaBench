; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_LoadEmbeddedImage.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_LoadEmbeddedImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_17__*, %struct.TYPE_20__ }
%struct.TYPE_17__ = type { i32*, i32, i32*, i32, i32*, i32, i32, i64* }
%struct.TYPE_20__ = type { i64, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"Unable to read image %s\00", align 1
@VLC_CODEC_YUVA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot allocate SPU region\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_24__*, i8*, i32)* @LoadEmbeddedImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @LoadEmbeddedImage(%struct.TYPE_24__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  store %struct.TYPE_25__* %23, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %59, %3
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %24
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %32, align 8
  %34 = icmp ne %struct.TYPE_18__** %33, null
  br i1 %34, label %35, label %58

35:                                               ; preds = %30
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %38, i64 %40
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strcmp(i32 %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %35
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %51, i64 %53
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %56, align 8
  store %struct.TYPE_23__* %57, %struct.TYPE_23__** %11, align 8
  br label %62

58:                                               ; preds = %35, %30
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %24

62:                                               ; preds = %48, %24
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %64 = icmp ne %struct.TYPE_23__* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 (%struct.TYPE_24__*, i8*, ...) @msg_Err(%struct.TYPE_24__* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %67)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %262

69:                                               ; preds = %62
  %70 = call i32 @memset(%struct.TYPE_21__* %10, i32 0, i32 32)
  %71 = load i64, i64* @VLC_CODEC_YUVA, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 6
  store i64 %71, i64* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 4
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = call %struct.TYPE_22__* @subpicture_region_New(%struct.TYPE_21__* %10)
  store %struct.TYPE_22__* %87, %struct.TYPE_22__** %9, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %89 = icmp ne %struct.TYPE_22__* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %69
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %92 = call i32 (%struct.TYPE_24__*, i8*, ...) @msg_Err(%struct.TYPE_24__* %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %262

93:                                               ; preds = %69
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @VLC_CODEC_YUVA, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %103, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %106 = call i32 @picture_CopyPixels(%struct.TYPE_17__* %104, %struct.TYPE_23__* %105)
  %107 = load i32, i32* %7, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %260

109:                                              ; preds = %93
  %110 = load i32, i32* %7, align 4
  %111 = ashr i32 %110, 16
  %112 = and i32 %111, 255
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %7, align 4
  %114 = ashr i32 %113, 8
  %115 = and i32 %114, 255
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %116, 255
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %13, align 4
  %119 = mul nsw i32 66, %118
  %120 = load i32, i32* %14, align 4
  %121 = mul nsw i32 129, %120
  %122 = add nsw i32 %119, %121
  %123 = load i32, i32* %15, align 4
  %124 = mul nsw i32 25, %123
  %125 = add nsw i32 %122, %124
  %126 = add nsw i32 %125, 128
  %127 = ashr i32 %126, 8
  %128 = add nsw i32 %127, 16
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %13, align 4
  %130 = mul nsw i32 -38, %129
  %131 = load i32, i32* %14, align 4
  %132 = mul nsw i32 74, %131
  %133 = sub nsw i32 %130, %132
  %134 = load i32, i32* %15, align 4
  %135 = mul nsw i32 112, %134
  %136 = add nsw i32 %133, %135
  %137 = add nsw i32 %136, 128
  %138 = ashr i32 %137, 8
  %139 = add nsw i32 %138, 128
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %13, align 4
  %141 = mul nsw i32 112, %140
  %142 = load i32, i32* %14, align 4
  %143 = mul nsw i32 94, %142
  %144 = sub nsw i32 %141, %143
  %145 = load i32, i32* %15, align 4
  %146 = mul nsw i32 18, %145
  %147 = sub nsw i32 %144, %146
  %148 = add nsw i32 %147, 128
  %149 = ashr i32 %148, 8
  %150 = add nsw i32 %149, 128
  store i32 %150, i32* %18, align 4
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @VLC_CODEC_YUVA, align 8
  %156 = icmp eq i64 %154, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  store i32 0, i32* %19, align 4
  br label %159

159:                                              ; preds = %256, %109
  %160 = load i32, i32* %19, align 4
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp ult i32 %160, %164
  br i1 %165, label %166, label %259

166:                                              ; preds = %159
  store i32 0, i32* %20, align 4
  br label %167

167:                                              ; preds = %252, %166
  %168 = load i32, i32* %20, align 4
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = icmp ult i32 %168, %172
  br i1 %173, label %174, label %255

174:                                              ; preds = %167
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %19, align 4
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = mul i32 %180, %185
  %187 = load i32, i32* %20, align 4
  %188 = add i32 %186, %187
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %179, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %16, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %234, label %194

194:                                              ; preds = %174
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %19, align 4
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = mul i32 %200, %205
  %207 = load i32, i32* %20, align 4
  %208 = add i32 %206, %207
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %199, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %17, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %234, label %214

214:                                              ; preds = %194
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 4
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %19, align 4
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = mul i32 %220, %225
  %227 = load i32, i32* %20, align 4
  %228 = add i32 %226, %227
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %219, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %18, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %214, %194, %174
  br label %252

235:                                              ; preds = %214
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 7
  %240 = load i64*, i64** %239, align 8
  %241 = load i32, i32* %19, align 4
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 4
  %247 = mul i32 %241, %246
  %248 = load i32, i32* %20, align 4
  %249 = add i32 %247, %248
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %240, i64 %250
  store i64 0, i64* %251, align 8
  br label %252

252:                                              ; preds = %235, %234
  %253 = load i32, i32* %20, align 4
  %254 = add i32 %253, 1
  store i32 %254, i32* %20, align 4
  br label %167

255:                                              ; preds = %167
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %19, align 4
  %258 = add i32 %257, 1
  store i32 %258, i32* %19, align 4
  br label %159

259:                                              ; preds = %159
  br label %260

260:                                              ; preds = %259, %93
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_22__* %261, %struct.TYPE_22__** %4, align 8
  br label %262

262:                                              ; preds = %260, %90, %65
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  ret %struct.TYPE_22__* %263
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_24__*, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local %struct.TYPE_22__* @subpicture_region_New(%struct.TYPE_21__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @picture_CopyPixels(%struct.TYPE_17__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
