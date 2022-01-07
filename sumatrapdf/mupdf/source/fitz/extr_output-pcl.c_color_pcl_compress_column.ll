; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_color_pcl_compress_column.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_color_pcl_compress_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"\1B*b%dW\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\1B*rC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i8*, i32, i32, i32)* @color_pcl_compress_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_pcl_compress_column(i32* %0, %struct.TYPE_5__* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %13, align 8
  %30 = load i32, i32* %10, align 4
  %31 = mul nsw i32 %30, 3
  store i32 %31, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 %35, 3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8* %38, i8** %18, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %19, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %20, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %21, align 8
  br label %48

48:                                               ; preds = %285, %6
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %286

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %105, %52
  store i32 0, i32* %22, align 4
  br label %54

54:                                               ; preds = %70, %53
  %55 = load i32, i32* %22, align 4
  %56 = icmp slt i32 %55, 32767
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %58, %59
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi i1 [ false, %54 ], [ %60, %57 ]
  br i1 %62, label %63, label %75

63:                                               ; preds = %61
  %64 = load i8*, i8** %19, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @line_is_blank(i8* %64, i8* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %75

70:                                               ; preds = %63
  %71 = load i32, i32* %22, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %22, align 4
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %17, align 4
  br label %54

75:                                               ; preds = %69, %61
  %76 = load i32, i32* %22, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %104

78:                                               ; preds = %75
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = load i8*, i8** %20, align 8
  %82 = call i32 @flush_if_not_room(i32* %79, i32* %80, i8* %81, i32* %16, i32 3)
  %83 = load i8*, i8** %20, align 8
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %16, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  store i8 4, i8* %87, align 1
  %88 = load i32, i32* %22, align 4
  %89 = ashr i32 %88, 8
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %20, align 8
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %16, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  store i8 %90, i8* %95, align 1
  %96 = load i32, i32* %22, align 4
  %97 = and i32 %96, 255
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %20, align 8
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %16, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8 %98, i8* %103, align 1
  store i32 0, i32* %15, align 4
  br label %104

104:                                              ; preds = %78, %75
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %22, align 4
  %107 = icmp eq i32 %106, 32767
  br i1 %107, label %53, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %286

113:                                              ; preds = %108
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %184

116:                                              ; preds = %113
  %117 = load i8*, i8** %19, align 8
  %118 = load i8*, i8** %18, align 8
  %119 = load i32, i32* %14, align 4
  %120 = call i64 @memcmp(i8* %117, i8* %118, i32 %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %184

122:                                              ; preds = %116
  store i32 1, i32* %23, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i8*, i8** %9, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %9, align 8
  %127 = load i32, i32* %17, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %17, align 4
  br label %129

129:                                              ; preds = %149, %122
  %130 = load i32, i32* %23, align 4
  %131 = icmp slt i32 %130, 32767
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %133, %134
  br label %136

136:                                              ; preds = %132, %129
  %137 = phi i1 [ false, %129 ], [ %135, %132 ]
  br i1 %137, label %138, label %158

138:                                              ; preds = %136
  %139 = load i8*, i8** %9, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = sub i64 0, %141
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  %144 = load i8*, i8** %9, align 8
  %145 = load i32, i32* %14, align 4
  %146 = call i64 @memcmp(i8* %143, i8* %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  br label %158

149:                                              ; preds = %138
  %150 = load i32, i32* %23, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %23, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i8*, i8** %9, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %9, align 8
  %156 = load i32, i32* %17, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %17, align 4
  br label %129

158:                                              ; preds = %148, %136
  %159 = load i32*, i32** %7, align 8
  %160 = load i32*, i32** %13, align 8
  %161 = load i8*, i8** %20, align 8
  %162 = call i32 @flush_if_not_room(i32* %159, i32* %160, i8* %161, i32* %16, i32 3)
  %163 = load i8*, i8** %20, align 8
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %16, align 4
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  store i8 5, i8* %167, align 1
  %168 = load i32, i32* %23, align 4
  %169 = ashr i32 %168, 8
  %170 = trunc i32 %169 to i8
  %171 = load i8*, i8** %20, align 8
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %16, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8, i8* %171, i64 %174
  store i8 %170, i8* %175, align 1
  %176 = load i32, i32* %23, align 4
  %177 = and i32 %176, 255
  %178 = trunc i32 %177 to i8
  %179 = load i8*, i8** %20, align 8
  %180 = load i32, i32* %16, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %16, align 4
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i8, i8* %179, i64 %182
  store i8 %178, i8* %183, align 1
  br label %285

184:                                              ; preds = %116, %113
  store i32 0, i32* %25, align 4
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %184
  %188 = load i8*, i8** %19, align 8
  %189 = load i8*, i8** %18, align 8
  %190 = load i8*, i8** %21, align 8
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %14, align 4
  %193 = sub nsw i32 %192, 1
  %194 = call i32 @fz_mini(i32 %193, i32 32764)
  %195 = call i32 @delta_compression(i8* %188, i8* %189, i8* %190, i32 %191, i32 %194)
  store i32 %195, i32* %25, align 4
  br label %196

196:                                              ; preds = %187, %184
  %197 = load i32, i32* %25, align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %237

199:                                              ; preds = %196
  %200 = load i32*, i32** %7, align 8
  %201 = load i32*, i32** %13, align 8
  %202 = load i8*, i8** %20, align 8
  %203 = load i32, i32* %25, align 4
  %204 = add nsw i32 %203, 3
  %205 = call i32 @flush_if_not_room(i32* %200, i32* %201, i8* %202, i32* %16, i32 %204)
  %206 = load i8*, i8** %20, align 8
  %207 = load i32, i32* %16, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %16, align 4
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i8, i8* %206, i64 %209
  store i8 3, i8* %210, align 1
  %211 = load i32, i32* %25, align 4
  %212 = ashr i32 %211, 8
  %213 = trunc i32 %212 to i8
  %214 = load i8*, i8** %20, align 8
  %215 = load i32, i32* %16, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %16, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i8, i8* %214, i64 %217
  store i8 %213, i8* %218, align 1
  %219 = load i32, i32* %25, align 4
  %220 = and i32 %219, 255
  %221 = trunc i32 %220 to i8
  %222 = load i8*, i8** %20, align 8
  %223 = load i32, i32* %16, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %16, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i8, i8* %222, i64 %225
  store i8 %221, i8* %226, align 1
  %227 = load i8*, i8** %20, align 8
  %228 = load i32, i32* %16, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  %231 = load i8*, i8** %21, align 8
  %232 = load i32, i32* %25, align 4
  %233 = call i32 @memcpy(i8* %230, i8* %231, i32 %232)
  %234 = load i32, i32* %25, align 4
  %235 = load i32, i32* %16, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %16, align 4
  br label %275

237:                                              ; preds = %196
  %238 = load i32*, i32** %7, align 8
  %239 = load i32*, i32** %13, align 8
  %240 = load i8*, i8** %20, align 8
  %241 = load i32, i32* %14, align 4
  %242 = add nsw i32 3, %241
  %243 = call i32 @flush_if_not_room(i32* %238, i32* %239, i8* %240, i32* %16, i32 %242)
  %244 = load i8*, i8** %20, align 8
  %245 = load i32, i32* %16, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %16, align 4
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i8, i8* %244, i64 %247
  store i8 0, i8* %248, align 1
  %249 = load i32, i32* %14, align 4
  %250 = ashr i32 %249, 8
  %251 = trunc i32 %250 to i8
  %252 = load i8*, i8** %20, align 8
  %253 = load i32, i32* %16, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %16, align 4
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i8, i8* %252, i64 %255
  store i8 %251, i8* %256, align 1
  %257 = load i32, i32* %14, align 4
  %258 = and i32 %257, 255
  %259 = trunc i32 %258 to i8
  %260 = load i8*, i8** %20, align 8
  %261 = load i32, i32* %16, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %16, align 4
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i8, i8* %260, i64 %263
  store i8 %259, i8* %264, align 1
  %265 = load i8*, i8** %20, align 8
  %266 = load i32, i32* %16, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  %269 = load i8*, i8** %19, align 8
  %270 = load i32, i32* %14, align 4
  %271 = call i32 @memcpy(i8* %268, i8* %269, i32 %270)
  %272 = load i32, i32* %14, align 4
  %273 = load i32, i32* %16, align 4
  %274 = add nsw i32 %273, %272
  store i32 %274, i32* %16, align 4
  store i32 1, i32* %15, align 4
  br label %275

275:                                              ; preds = %237, %199
  %276 = load i8*, i8** %18, align 8
  store i8* %276, i8** %24, align 8
  %277 = load i8*, i8** %19, align 8
  store i8* %277, i8** %18, align 8
  %278 = load i8*, i8** %24, align 8
  store i8* %278, i8** %19, align 8
  %279 = load i32, i32* %12, align 4
  %280 = load i8*, i8** %9, align 8
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  store i8* %282, i8** %9, align 8
  %283 = load i32, i32* %17, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %17, align 4
  br label %285

285:                                              ; preds = %275, %158
  br label %48

286:                                              ; preds = %112, %48
  %287 = load i32, i32* %16, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %286
  %290 = load i32*, i32** %7, align 8
  %291 = load i32*, i32** %13, align 8
  %292 = load i32, i32* %16, align 4
  %293 = call i32 @fz_write_printf(i32* %290, i32* %291, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %292)
  %294 = load i32*, i32** %7, align 8
  %295 = load i32*, i32** %13, align 8
  %296 = load i8*, i8** %20, align 8
  %297 = load i32, i32* %16, align 4
  %298 = call i32 @fz_write_data(i32* %294, i32* %295, i8* %296, i32 %297)
  br label %299

299:                                              ; preds = %289, %286
  %300 = load i32*, i32** %7, align 8
  %301 = load i32*, i32** %13, align 8
  %302 = call i32 @fz_write_string(i32* %300, i32* %301, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @line_is_blank(i8*, i8*, i32) #1

declare dso_local i32 @flush_if_not_room(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @delta_compression(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @fz_mini(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, i32) #1

declare dso_local i32 @fz_write_data(i32*, i32*, i8*, i32) #1

declare dso_local i32 @fz_write_string(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
