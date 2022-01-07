; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_fz_convert_indexed_pixmap_to_base.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_fz_convert_indexed_pixmap_to_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i8*, i32, i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i8*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@FZ_COLORSPACE_INDEXED = common dso_local global i64 0, align 8
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot convert non-indexed pixmap\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"cannot convert indexed pixmap mis-matching components\00", align 1
@FZ_PIXMAP_FLAG_INTERPOLATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @fz_convert_indexed_pixmap_to_base(i32* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FZ_COLORSPACE_INDEXED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %31 = call i32 @fz_throw(i32* %29, i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %2
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 1, %38
  %40 = icmp ne i32 %35, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %44 = call i32 @fz_throw(i32* %42, i32 %43, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %32
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %6, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %13, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %14, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %12, align 4
  %70 = load i32*, i32** %3, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = call i32 @fz_pixmap_bbox(i32* %72, %struct.TYPE_14__* %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.TYPE_14__* @fz_new_pixmap_with_bbox(i32* %70, %struct.TYPE_15__* %71, i32 %74, i32 %77, i32 %80)
  store %struct.TYPE_14__* %81, %struct.TYPE_14__** %5, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %7, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %8, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %93, %96
  %98 = sub nsw i32 %90, %97
  store i32 %98, i32* %15, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %104, %107
  %109 = sub nsw i32 %101, %108
  store i32 %109, i32* %16, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %190

114:                                              ; preds = %45
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %186, %114
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %189

121:                                              ; preds = %115
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %174, %121
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %177

128:                                              ; preds = %122
  %129 = load i8*, i8** %7, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %7, align 8
  %131 = load i8, i8* %129, align 1
  %132 = zext i8 %131 to i32
  store i32 %132, i32* %17, align 4
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %7, align 8
  %135 = load i8, i8* %133, align 1
  %136 = zext i8 %135 to i32
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %18, align 4
  %139 = ashr i32 %138, 7
  %140 = add nsw i32 %137, %139
  store i32 %140, i32* %19, align 4
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @fz_mini(i32 %141, i32 %142)
  store i32 %143, i32* %17, align 4
  store i32 0, i32* %11, align 4
  br label %144

144:                                              ; preds = %166, %128
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %169

148:                                              ; preds = %144
  %149 = load i32, i32* %19, align 4
  %150 = load i8*, i8** %14, align 8
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %12, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %150, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = mul nsw i32 %149, %159
  %161 = add nsw i32 %160, 128
  %162 = ashr i32 %161, 8
  %163 = trunc i32 %162 to i8
  %164 = load i8*, i8** %8, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %8, align 8
  store i8 %163, i8* %164, align 1
  br label %166

166:                                              ; preds = %148
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %11, align 4
  br label %144

169:                                              ; preds = %144
  %170 = load i32, i32* %18, align 4
  %171 = trunc i32 %170 to i8
  %172 = load i8*, i8** %8, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %8, align 8
  store i8 %171, i8* %172, align 1
  br label %174

174:                                              ; preds = %169
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %122

177:                                              ; preds = %122
  %178 = load i32, i32* %15, align 4
  %179 = load i8*, i8** %7, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** %7, align 8
  %182 = load i32, i32* %16, align 4
  %183 = load i8*, i8** %8, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %185, i8** %8, align 8
  br label %186

186:                                              ; preds = %177
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %115

189:                                              ; preds = %115
  br label %248

190:                                              ; preds = %45
  store i32 0, i32* %9, align 4
  br label %191

191:                                              ; preds = %244, %190
  %192 = load i32, i32* %9, align 4
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %247

197:                                              ; preds = %191
  store i32 0, i32* %10, align 4
  br label %198

198:                                              ; preds = %232, %197
  %199 = load i32, i32* %10, align 4
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %199, %202
  br i1 %203, label %204, label %235

204:                                              ; preds = %198
  %205 = load i8*, i8** %7, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %7, align 8
  %207 = load i8, i8* %205, align 1
  %208 = zext i8 %207 to i32
  store i32 %208, i32* %20, align 4
  %209 = load i32, i32* %20, align 4
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @fz_mini(i32 %209, i32 %210)
  store i32 %211, i32* %20, align 4
  store i32 0, i32* %11, align 4
  br label %212

212:                                              ; preds = %228, %204
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* %12, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %231

216:                                              ; preds = %212
  %217 = load i8*, i8** %14, align 8
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* %12, align 4
  %220 = mul nsw i32 %218, %219
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %220, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %217, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = load i8*, i8** %8, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %8, align 8
  store i8 %225, i8* %226, align 1
  br label %228

228:                                              ; preds = %216
  %229 = load i32, i32* %11, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %11, align 4
  br label %212

231:                                              ; preds = %212
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %10, align 4
  br label %198

235:                                              ; preds = %198
  %236 = load i32, i32* %15, align 4
  %237 = load i8*, i8** %7, align 8
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i8, i8* %237, i64 %238
  store i8* %239, i8** %7, align 8
  %240 = load i32, i32* %16, align 4
  %241 = load i8*, i8** %8, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i8, i8* %241, i64 %242
  store i8* %243, i8** %8, align 8
  br label %244

244:                                              ; preds = %235
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %9, align 4
  br label %191

247:                                              ; preds = %191
  br label %248

248:                                              ; preds = %247, %189
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @FZ_PIXMAP_FLAG_INTERPOLATE, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %248
  %256 = load i32, i32* @FZ_PIXMAP_FLAG_INTERPOLATE, align 4
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 4
  br label %268

261:                                              ; preds = %248
  %262 = load i32, i32* @FZ_PIXMAP_FLAG_INTERPOLATE, align 4
  %263 = xor i32 %262, -1
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, %263
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %261, %255
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  ret %struct.TYPE_14__* %269
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_14__* @fz_new_pixmap_with_bbox(i32*, %struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @fz_pixmap_bbox(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @fz_mini(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
