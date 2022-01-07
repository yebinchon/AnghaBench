; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_io_dec.c_InitYUVRescaler.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_io_dec.c_InitYUVRescaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32*, i32, i32*, i32*, i32*, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@WEBP_ALIGN_CST = common dso_local global i32 0, align 4
@EmitRescaledYUV = common dso_local global i32 0, align 4
@EmitRescaledAlphaYUV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @InitYUVRescaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitYUVRescaler(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 7
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @WebPIsAlphaMode(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 7
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %7, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %11, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = ashr i32 %47, 1
  store i32 %48, i32* %12, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  %53 = ashr i32 %52, 1
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 2, %54
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %14, align 8
  %57 = load i32, i32* %10, align 4
  %58 = mul nsw i32 2, %57
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %15, align 8
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 4, i32 3
  store i32 %63, i32* %20, align 4
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* %15, align 8
  %66 = mul i64 2, %65
  %67 = add i64 %64, %66
  %68 = mul i64 %67, 4
  store i64 %68, i64* %16, align 8
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %2
  %72 = load i64, i64* %14, align 8
  %73 = mul i64 %72, 4
  %74 = load i64, i64* %16, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %16, align 8
  br label %76

76:                                               ; preds = %71, %2
  %77 = load i32, i32* %20, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = load i32, i32* @WEBP_ALIGN_CST, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %79, %81
  store i64 %82, i64* %17, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %17, align 8
  %85 = add i64 %83, %84
  %86 = call i32* @WebPSafeMalloc(i64 1, i64 %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 6
  store i32* %86, i32** %88, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 6
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %215

94:                                               ; preds = %76
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 6
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** %18, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = load i64, i64* %16, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = call i64 @WEBP_ALIGN(i32* %100)
  %102 = inttoptr i64 %101 to i32*
  store i32* %102, i32** %19, align 8
  %103 = load i32*, i32** %19, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 5
  store i32* %104, i32** %106, align 8
  %107 = load i32*, i32** %19, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 4
  store i32* %108, i32** %110, align 8
  %111 = load i32*, i32** %19, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 3
  store i32* %112, i32** %114, align 8
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %94
  %118 = load i32*, i32** %19, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  br label %121

120:                                              ; preds = %94
  br label %121

121:                                              ; preds = %120, %117
  %122 = phi i32* [ %119, %117 ], [ null, %120 ]
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  store i32* %122, i32** %124, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 5
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %18, align 8
  %143 = call i32 @WebPRescalerInit(i32* %127, i32 %130, i32 %133, i32 %136, i32 %137, i32 %138, i32 %141, i32 1, i32* %142)
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %18, align 8
  %158 = load i64, i64* %14, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = call i32 @WebPRescalerInit(i32* %146, i32 %147, i32 %148, i32 %151, i32 %152, i32 %153, i32 %156, i32 1, i32* %159)
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %18, align 8
  %175 = load i64, i64* %14, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i64, i64* %15, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = call i32 @WebPRescalerInit(i32* %163, i32 %164, i32 %165, i32 %168, i32 %169, i32 %170, i32 %173, i32 1, i32* %178)
  %180 = load i32, i32* @EmitRescaledYUV, align 4
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  %183 = load i32, i32* %6, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %214

185:                                              ; preds = %121
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %18, align 8
  %204 = load i64, i64* %14, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i64, i64* %15, align 8
  %207 = mul i64 2, %206
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = call i32 @WebPRescalerInit(i32* %188, i32 %191, i32 %194, i32 %197, i32 %198, i32 %199, i32 %202, i32 1, i32* %208)
  %210 = load i32, i32* @EmitRescaledAlphaYUV, align 4
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = call i32 (...) @WebPInitAlphaProcessing()
  br label %214

214:                                              ; preds = %185, %121
  store i32 1, i32* %3, align 4
  br label %215

215:                                              ; preds = %214, %93
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32 @WebPIsAlphaMode(i32) #1

declare dso_local i32* @WebPSafeMalloc(i64, i64) #1

declare dso_local i64 @WEBP_ALIGN(i32*) #1

declare dso_local i32 @WebPRescalerInit(i32*, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @WebPInitAlphaProcessing(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
