; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_huffman_encode_utils.c_GenerateOptimalTree.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_huffman_encode_utils.c_GenerateOptimalTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32 }

@CompareHuffmanTrees = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, %struct.TYPE_8__*, i32, i32*)* @GenerateOptimalTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GenerateOptimalTree(i64* %0, i32 %1, %struct.TYPE_8__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %38, %5
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load i64*, i64** %6, align 8
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %34, %27
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %14, align 4
  br label %23

41:                                               ; preds = %23
  %42 = load i32, i32* %13, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %284

45:                                               ; preds = %41
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %48
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, 1
  %53 = shl i32 1, %52
  %54 = icmp sle i32 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  store i64 1, i64* %11, align 8
  br label %57

57:                                               ; preds = %281, %45
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %59

59:                                               ; preds = %113, %57
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %116

63:                                               ; preds = %59
  %64 = load i64*, i64** %6, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %112

70:                                               ; preds = %63
  %71 = load i64*, i64** %6, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %11, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i64, i64* %11, align 8
  br label %86

80:                                               ; preds = %70
  %81 = load i64*, i64** %6, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  br label %86

86:                                               ; preds = %80, %78
  %87 = phi i64 [ %79, %78 ], [ %85, %80 ]
  store i64 %87, i64* %18, align 8
  %88 = load i64, i64* %18, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i64 %88, i64* %93, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  store i32 %94, i32* %99, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  store i32 -1, i32* %104, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  store i32 -1, i32* %109, align 8
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  br label %112

112:                                              ; preds = %86, %63
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %59

116:                                              ; preds = %59
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @CompareHuffmanTrees, align 4
  %120 = call i32 @qsort(%struct.TYPE_8__* %117, i32 %118, i32 24, i32 %119)
  %121 = load i32, i32* %15, align 4
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %237

123:                                              ; preds = %116
  store i32 0, i32* %19, align 4
  br label %124

124:                                              ; preds = %187, %123
  %125 = load i32, i32* %15, align 4
  %126 = icmp sgt i32 %125, 1
  br i1 %126, label %127, label %231

127:                                              ; preds = %124
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %19, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i64 %131
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 %136
  %138 = bitcast %struct.TYPE_8__* %132 to i8*
  %139 = bitcast %struct.TYPE_8__* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %138, i8* align 8 %139, i64 24, i1 false)
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %141 = load i32, i32* %19, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %19, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 %143
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sub nsw i32 %146, 2
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i64 %148
  %150 = bitcast %struct.TYPE_8__* %144 to i8*
  %151 = bitcast %struct.TYPE_8__* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 24, i1 false)
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %153 = load i32, i32* %19, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %160 = load i32, i32* %19, align 4
  %161 = sub nsw i32 %160, 2
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %158, %165
  store i64 %166, i64* %20, align 8
  %167 = load i32, i32* %15, align 4
  %168 = sub nsw i32 %167, 2
  store i32 %168, i32* %15, align 4
  store i32 0, i32* %21, align 4
  br label %169

169:                                              ; preds = %184, %127
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %15, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %187

173:                                              ; preds = %169
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %175 = load i32, i32* %21, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %20, align 8
  %181 = icmp sle i64 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  br label %187

183:                                              ; preds = %173
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %21, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %21, align 4
  br label %169

187:                                              ; preds = %182, %169
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %189 = load i32, i32* %21, align 4
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i64 %191
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %194 = load i32, i32* %21, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i64 %195
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %21, align 4
  %199 = sub nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = mul i64 %200, 24
  %202 = trunc i64 %201 to i32
  %203 = call i32 @memmove(%struct.TYPE_8__* %192, %struct.TYPE_8__* %196, i32 %202)
  %204 = load i64, i64* %20, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %206 = load i32, i32* %21, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  store i64 %204, i64* %209, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %211 = load i32, i32* %21, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  store i32 -1, i32* %214, align 8
  %215 = load i32, i32* %19, align 4
  %216 = sub nsw i32 %215, 1
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %218 = load i32, i32* %21, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  store i32 %216, i32* %221, align 4
  %222 = load i32, i32* %19, align 4
  %223 = sub nsw i32 %222, 2
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %225 = load i32, i32* %21, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 3
  store i32 %223, i32* %228, align 8
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %15, align 4
  br label %124

231:                                              ; preds = %124
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i64 0
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %235 = load i32*, i32** %10, align 8
  %236 = call i32 @SetBitDepths(%struct.TYPE_8__* %233, %struct.TYPE_8__* %234, i32* %235, i32 0)
  br label %249

237:                                              ; preds = %116
  %238 = load i32, i32* %15, align 4
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %240, label %248

240:                                              ; preds = %237
  %241 = load i32*, i32** %10, align 8
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i64 0
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %241, i64 %246
  store i32 1, i32* %247, align 4
  br label %248

248:                                              ; preds = %240, %237
  br label %249

249:                                              ; preds = %248, %231
  %250 = load i32*, i32** %10, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %22, align 4
  store i32 1, i32* %17, align 4
  br label %253

253:                                              ; preds = %272, %249
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* %7, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %275

257:                                              ; preds = %253
  %258 = load i32, i32* %22, align 4
  %259 = load i32*, i32** %10, align 8
  %260 = load i32, i32* %17, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = icmp slt i32 %258, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %257
  %266 = load i32*, i32** %10, align 8
  %267 = load i32, i32* %17, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  store i32 %270, i32* %22, align 4
  br label %271

271:                                              ; preds = %265, %257
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %17, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %17, align 4
  br label %253

275:                                              ; preds = %253
  %276 = load i32, i32* %22, align 4
  %277 = load i32, i32* %9, align 4
  %278 = icmp sle i32 %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %275
  br label %284

280:                                              ; preds = %275
  br label %281

281:                                              ; preds = %280
  %282 = load i64, i64* %11, align 8
  %283 = mul nsw i64 %282, 2
  store i64 %283, i64* %11, align 8
  br label %57

284:                                              ; preds = %44, %279
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @qsort(%struct.TYPE_8__*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memmove(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @SetBitDepths(%struct.TYPE_8__*, %struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
