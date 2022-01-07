; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_MatShaperEval16.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_MatShaperEval16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32*, i32**, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i8*)* @MatShaperEval16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MatShaperEval16(i32 %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %9, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @cmsUNUSED_PARAMETER(i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 255
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %16, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 255
  %32 = zext i32 %31 to i64
  store i64 %32, i64* %17, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 255
  %37 = zext i32 %36 to i64
  store i64 %37, i64* %18, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %16, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %17, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %18, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32**, i32*** %57, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %13, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %14, align 4
  %73 = mul nsw i32 %71, %72
  %74 = add nsw i32 %64, %73
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %15, align 4
  %83 = mul nsw i32 %81, %82
  %84 = add nsw i32 %74, %83
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %84, %89
  %91 = add nsw i32 %90, 8192
  %92 = ashr i32 %91, 14
  store i32 %92, i32* %10, align 4
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i32**, i32*** %94, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %13, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = load i32**, i32*** %103, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %14, align 4
  %110 = mul nsw i32 %108, %109
  %111 = add nsw i32 %101, %110
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  %114 = load i32**, i32*** %113, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %15, align 4
  %120 = mul nsw i32 %118, %119
  %121 = add nsw i32 %111, %120
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %121, %126
  %128 = add nsw i32 %127, 8192
  %129 = ashr i32 %128, 14
  store i32 %129, i32* %11, align 4
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 3
  %132 = load i32**, i32*** %131, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 2
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %13, align 4
  %138 = mul nsw i32 %136, %137
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 3
  %141 = load i32**, i32*** %140, align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 2
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %14, align 4
  %147 = mul nsw i32 %145, %146
  %148 = add nsw i32 %138, %147
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 3
  %151 = load i32**, i32*** %150, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i64 2
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %15, align 4
  %157 = mul nsw i32 %155, %156
  %158 = add nsw i32 %148, %157
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %158, %163
  %165 = add nsw i32 %164, 8192
  %166 = ashr i32 %165, 14
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %4
  br label %179

170:                                              ; preds = %4
  %171 = load i32, i32* %10, align 4
  %172 = icmp sgt i32 %171, 16384
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  br label %177

174:                                              ; preds = %170
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  br label %177

177:                                              ; preds = %174, %173
  %178 = phi i64 [ 16384, %173 ], [ %176, %174 ]
  br label %179

179:                                              ; preds = %177, %169
  %180 = phi i64 [ 0, %169 ], [ %178, %177 ]
  store i64 %180, i64* %16, align 8
  %181 = load i32, i32* %11, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  br label %193

184:                                              ; preds = %179
  %185 = load i32, i32* %11, align 4
  %186 = icmp sgt i32 %185, 16384
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %191

188:                                              ; preds = %184
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  br label %191

191:                                              ; preds = %188, %187
  %192 = phi i64 [ 16384, %187 ], [ %190, %188 ]
  br label %193

193:                                              ; preds = %191, %183
  %194 = phi i64 [ 0, %183 ], [ %192, %191 ]
  store i64 %194, i64* %17, align 8
  %195 = load i32, i32* %12, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  br label %207

198:                                              ; preds = %193
  %199 = load i32, i32* %12, align 4
  %200 = icmp sgt i32 %199, 16384
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  br label %205

202:                                              ; preds = %198
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  br label %205

205:                                              ; preds = %202, %201
  %206 = phi i64 [ 16384, %201 ], [ %204, %202 ]
  br label %207

207:                                              ; preds = %205, %197
  %208 = phi i64 [ 0, %197 ], [ %206, %205 ]
  store i64 %208, i64* %18, align 8
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 5
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* %16, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32*, i32** %7, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  store i32 %214, i32* %216, align 4
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 6
  %219 = load i32*, i32** %218, align 8
  %220 = load i64, i64* %17, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %7, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 1
  store i32 %222, i32* %224, align 4
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 7
  %227 = load i32*, i32** %226, align 8
  %228 = load i64, i64* %18, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %7, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 2
  store i32 %230, i32* %232, align 4
  ret void
}

declare dso_local i32 @cmsUNUSED_PARAMETER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
