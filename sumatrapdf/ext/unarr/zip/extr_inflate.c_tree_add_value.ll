; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_inflate.c_tree_add_value.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_inflate.c_tree_add_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TREE_FAST_BITS = common dso_local global i32 0, align 4
@MAX_TREE_NODES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree*, i32, i32, i32)* @tree_add_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_add_value(%struct.tree* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tree*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %24, %4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32, i32* %10, align 4
  %18 = shl i32 %17, 1
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %11, align 4
  %21 = ashr i32 %19, %20
  %22 = and i32 %21, 1
  %23 = or i32 %18, %22
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  br label %12

27:                                               ; preds = %12
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @TREE_FAST_BITS, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %111

31:                                               ; preds = %27
  %32 = load %struct.tree*, %struct.tree** %6, align 8
  %33 = getelementptr inbounds %struct.tree, %struct.tree* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %284

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.tree*, %struct.tree** %6, align 8
  %45 = getelementptr inbounds %struct.tree, %struct.tree* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %43, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.tree*, %struct.tree** %6, align 8
  %53 = getelementptr inbounds %struct.tree, %struct.tree* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %51, i32* %58, align 4
  %59 = load %struct.tree*, %struct.tree** %6, align 8
  %60 = getelementptr inbounds %struct.tree, %struct.tree* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 1, i32* %65, align 4
  store i32 1, i32* %11, align 4
  br label %66

66:                                               ; preds = %107, %42
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @TREE_FAST_BITS, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %68, %69
  %71 = shl i32 1, %70
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %110

73:                                               ; preds = %66
  %74 = load %struct.tree*, %struct.tree** %6, align 8
  %75 = getelementptr inbounds %struct.tree, %struct.tree* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %8, align 4
  %80 = shl i32 %78, %79
  %81 = or i32 %77, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %284

88:                                               ; preds = %73
  %89 = load %struct.tree*, %struct.tree** %6, align 8
  %90 = getelementptr inbounds %struct.tree, %struct.tree* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %8, align 4
  %95 = shl i32 %93, %94
  %96 = or i32 %92, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %97
  %99 = load %struct.tree*, %struct.tree** %6, align 8
  %100 = getelementptr inbounds %struct.tree, %struct.tree* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = bitcast %struct.TYPE_2__* %98 to i8*
  %106 = bitcast %struct.TYPE_2__* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 12, i1 false)
  br label %107

107:                                              ; preds = %88
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %66

110:                                              ; preds = %66
  store i32 1, i32* %5, align 4
  br label %284

111:                                              ; preds = %27
  %112 = load i32, i32* @TREE_FAST_BITS, align 4
  %113 = shl i32 1, %112
  %114 = sub nsw i32 %113, 1
  %115 = load i32, i32* %10, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %10, align 4
  %117 = load %struct.tree*, %struct.tree** %6, align 8
  %118 = getelementptr inbounds %struct.tree, %struct.tree* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  br label %284

127:                                              ; preds = %111
  %128 = load i32, i32* @TREE_FAST_BITS, align 4
  %129 = add nsw i32 %128, 1
  %130 = load %struct.tree*, %struct.tree** %6, align 8
  %131 = getelementptr inbounds %struct.tree, %struct.tree* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  store i32 %129, i32* %136, align 4
  %137 = load %struct.tree*, %struct.tree** %6, align 8
  %138 = getelementptr inbounds %struct.tree, %struct.tree* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %164, label %146

146:                                              ; preds = %127
  %147 = load i32, i32* @TREE_FAST_BITS, align 4
  %148 = shl i32 1, %147
  %149 = sext i32 %148 to i64
  %150 = load %struct.tree*, %struct.tree** %6, align 8
  %151 = getelementptr inbounds %struct.tree, %struct.tree* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %151, align 8
  %154 = mul nsw i64 %152, 2
  %155 = add nsw i64 %149, %154
  %156 = trunc i64 %155 to i32
  %157 = load %struct.tree*, %struct.tree** %6, align 8
  %158 = getelementptr inbounds %struct.tree, %struct.tree* %157, i32 0, i32 1
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  store i32 %156, i32* %163, align 4
  br label %164

164:                                              ; preds = %146, %127
  %165 = load %struct.tree*, %struct.tree** %6, align 8
  %166 = getelementptr inbounds %struct.tree, %struct.tree* %165, i32 0, i32 1
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* @TREE_FAST_BITS, align 4
  %174 = load i32, i32* %8, align 4
  %175 = sub nsw i32 %174, %173
  store i32 %175, i32* %8, align 4
  br label %176

176:                                              ; preds = %232, %164
  %177 = load i32, i32* %8, align 4
  %178 = icmp sgt i32 %177, 1
  br i1 %178, label %179, label %243

179:                                              ; preds = %176
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %8, align 4
  %182 = sub nsw i32 %181, 1
  %183 = ashr i32 %180, %182
  %184 = and i32 %183, 1
  %185 = load i32, i32* %11, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %11, align 4
  %187 = load %struct.tree*, %struct.tree** %6, align 8
  %188 = getelementptr inbounds %struct.tree, %struct.tree* %187, i32 0, i32 1
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %179
  store i32 0, i32* %5, align 4
  br label %284

197:                                              ; preds = %179
  %198 = load %struct.tree*, %struct.tree** %6, align 8
  %199 = getelementptr inbounds %struct.tree, %struct.tree* %198, i32 0, i32 1
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %232, label %207

207:                                              ; preds = %197
  %208 = load %struct.tree*, %struct.tree** %6, align 8
  %209 = getelementptr inbounds %struct.tree, %struct.tree* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @MAX_TREE_NODES, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %207
  store i32 0, i32* %5, align 4
  br label %284

214:                                              ; preds = %207
  %215 = load i32, i32* @TREE_FAST_BITS, align 4
  %216 = shl i32 1, %215
  %217 = sext i32 %216 to i64
  %218 = load %struct.tree*, %struct.tree** %6, align 8
  %219 = getelementptr inbounds %struct.tree, %struct.tree* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %219, align 8
  %222 = mul nsw i64 %220, 2
  %223 = add nsw i64 %217, %222
  %224 = trunc i64 %223 to i32
  %225 = load %struct.tree*, %struct.tree** %6, align 8
  %226 = getelementptr inbounds %struct.tree, %struct.tree* %225, i32 0, i32 1
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** %226, align 8
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 1
  store i32 %224, i32* %231, align 4
  br label %232

232:                                              ; preds = %214, %197
  %233 = load %struct.tree*, %struct.tree** %6, align 8
  %234 = getelementptr inbounds %struct.tree, %struct.tree* %233, i32 0, i32 1
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %234, align 8
  %236 = load i32, i32* %11, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %11, align 4
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, -1
  store i32 %242, i32* %8, align 4
  br label %176

243:                                              ; preds = %176
  %244 = load i32, i32* %7, align 4
  %245 = and i32 %244, 1
  %246 = load i32, i32* %11, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %11, align 4
  %248 = load %struct.tree*, %struct.tree** %6, align 8
  %249 = getelementptr inbounds %struct.tree, %struct.tree* %248, i32 0, i32 1
  %250 = load %struct.TYPE_2__*, %struct.TYPE_2__** %249, align 8
  %251 = load i32, i32* %11, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %267, label %257

257:                                              ; preds = %243
  %258 = load %struct.tree*, %struct.tree** %6, align 8
  %259 = getelementptr inbounds %struct.tree, %struct.tree* %258, i32 0, i32 1
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** %259, align 8
  %261 = load i32, i32* %11, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %257, %243
  store i32 0, i32* %5, align 4
  br label %284

268:                                              ; preds = %257
  %269 = load i32, i32* %9, align 4
  %270 = load %struct.tree*, %struct.tree** %6, align 8
  %271 = getelementptr inbounds %struct.tree, %struct.tree* %270, i32 0, i32 1
  %272 = load %struct.TYPE_2__*, %struct.TYPE_2__** %271, align 8
  %273 = load i32, i32* %11, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 1
  store i32 %269, i32* %276, align 4
  %277 = load %struct.tree*, %struct.tree** %6, align 8
  %278 = getelementptr inbounds %struct.tree, %struct.tree* %277, i32 0, i32 1
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** %278, align 8
  %280 = load i32, i32* %11, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 2
  store i32 1, i32* %283, align 4
  store i32 1, i32* %5, align 4
  br label %284

284:                                              ; preds = %268, %267, %213, %196, %126, %110, %87, %41
  %285 = load i32, i32* %5, align 4
  ret i32 %285
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
