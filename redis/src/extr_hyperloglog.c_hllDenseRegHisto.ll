; ModuleID = '/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_hllDenseRegHisto.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_hllDenseRegHisto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HLL_REGISTERS = common dso_local global i32 0, align 4
@HLL_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hllDenseRegHisto(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %24 = load i32, i32* @HLL_REGISTERS, align 4
  %25 = icmp eq i32 %24, 16384
  br i1 %25, label %26, label %253

26:                                               ; preds = %2
  %27 = load i32, i32* @HLL_BITS, align 4
  %28 = icmp eq i32 %27, 6
  br i1 %28, label %29, label %253

29:                                               ; preds = %26
  %30 = load i32*, i32** %3, align 8
  store i32* %30, i32** %6, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %249, %29
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 1024
  br i1 %33, label %34, label %252

34:                                               ; preds = %31
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 63
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %7, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 6
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 2
  %48 = or i32 %43, %47
  %49 = and i32 %48, 63
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %8, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 4
  %59 = or i32 %54, %58
  %60 = and i32 %59, 63
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %9, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 2
  %66 = and i32 %65, 63
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %10, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 63
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %11, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 6
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 2
  %81 = or i32 %76, %80
  %82 = and i32 %81, 63
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %12, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 4
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 5
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 4
  %92 = or i32 %87, %91
  %93 = and i32 %92, 63
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %13, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 2
  %99 = and i32 %98, 63
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %14, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 6
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 63
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %15, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 6
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 6
  %110 = load i32*, i32** %6, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 7
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 2
  %114 = or i32 %109, %113
  %115 = and i32 %114, 63
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %16, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 7
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 4
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 8
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 4
  %125 = or i32 %120, %124
  %126 = and i32 %125, 63
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %17, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 8
  %130 = load i32, i32* %129, align 4
  %131 = ashr i32 %130, 2
  %132 = and i32 %131, 63
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %18, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 9
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 63
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %19, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 9
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 6
  %143 = load i32*, i32** %6, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 10
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 2
  %147 = or i32 %142, %146
  %148 = and i32 %147, 63
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %20, align 8
  %150 = load i32*, i32** %6, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 10
  %152 = load i32, i32* %151, align 4
  %153 = ashr i32 %152, 4
  %154 = load i32*, i32** %6, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 11
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 4
  %158 = or i32 %153, %157
  %159 = and i32 %158, 63
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %21, align 8
  %161 = load i32*, i32** %6, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 11
  %163 = load i32, i32* %162, align 4
  %164 = ashr i32 %163, 2
  %165 = and i32 %164, 63
  %166 = sext i32 %165 to i64
  store i64 %166, i64* %22, align 8
  %167 = load i32*, i32** %4, align 8
  %168 = load i64, i64* %7, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = load i32*, i32** %4, align 8
  %173 = load i64, i64* %8, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  %177 = load i32*, i32** %4, align 8
  %178 = load i64, i64* %9, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 4
  %182 = load i32*, i32** %4, align 8
  %183 = load i64, i64* %10, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  %187 = load i32*, i32** %4, align 8
  %188 = load i64, i64* %11, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 4
  %192 = load i32*, i32** %4, align 8
  %193 = load i64, i64* %12, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  %197 = load i32*, i32** %4, align 8
  %198 = load i64, i64* %13, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 4
  %202 = load i32*, i32** %4, align 8
  %203 = load i64, i64* %14, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  %207 = load i32*, i32** %4, align 8
  %208 = load i64, i64* %15, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  %212 = load i32*, i32** %4, align 8
  %213 = load i64, i64* %16, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 4
  %217 = load i32*, i32** %4, align 8
  %218 = load i64, i64* %17, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  %222 = load i32*, i32** %4, align 8
  %223 = load i64, i64* %18, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %224, align 4
  %227 = load i32*, i32** %4, align 8
  %228 = load i64, i64* %19, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 4
  %232 = load i32*, i32** %4, align 8
  %233 = load i64, i64* %20, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 4
  %237 = load i32*, i32** %4, align 8
  %238 = load i64, i64* %21, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  %242 = load i32*, i32** %4, align 8
  %243 = load i64, i64* %22, align 8
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %244, align 4
  %247 = load i32*, i32** %6, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 12
  store i32* %248, i32** %6, align 8
  br label %249

249:                                              ; preds = %34
  %250 = load i32, i32* %5, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %5, align 4
  br label %31

252:                                              ; preds = %31
  br label %272

253:                                              ; preds = %26, %2
  store i32 0, i32* %5, align 4
  br label %254

254:                                              ; preds = %268, %253
  %255 = load i32, i32* %5, align 4
  %256 = load i32, i32* @HLL_REGISTERS, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %271

258:                                              ; preds = %254
  %259 = load i64, i64* %23, align 8
  %260 = load i32*, i32** %3, align 8
  %261 = load i32, i32* %5, align 4
  %262 = call i32 @HLL_DENSE_GET_REGISTER(i64 %259, i32* %260, i32 %261)
  %263 = load i32*, i32** %4, align 8
  %264 = load i64, i64* %23, align 8
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %258
  %269 = load i32, i32* %5, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %5, align 4
  br label %254

271:                                              ; preds = %254
  br label %272

272:                                              ; preds = %271, %252
  ret void
}

declare dso_local i32 @HLL_DENSE_GET_REGISTER(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
