; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_io_dec.c_InitRGBRescaler.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_io_dec.c_InitRGBRescaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32, i32*, i32, i32*, i32*, i32*, i32* }
%struct.TYPE_6__ = type { i64 }

@WEBP_ALIGN_CST = common dso_local global i32 0, align 4
@EmitRescaledRGB = common dso_local global i32 0, align 4
@EmitRescaledAlphaRGB = common dso_local global i32 0, align 4
@MODE_RGBA_4444 = common dso_local global i64 0, align 8
@MODE_rgbA_4444 = common dso_local global i64 0, align 8
@ExportAlphaRGBA4444 = common dso_local global i32 0, align 4
@ExportAlpha = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* @InitRGBRescaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitRGBRescaler(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @WebPIsAlphaMode(i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  %36 = ashr i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 2, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %11, align 8
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 4, i32 3
  store i32 %48, i32* %19, align 4
  %49 = load i64, i64* %11, align 8
  %50 = mul i64 3, %49
  store i64 %50, i64* %14, align 8
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 3, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %15, align 8
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %2
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %14, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %14, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %15, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %15, align 8
  br label %64

64:                                               ; preds = %56, %2
  %65 = load i64, i64* %14, align 8
  %66 = mul i64 %65, 4
  %67 = load i64, i64* %15, align 8
  %68 = mul i64 %67, 4
  %69 = add i64 %66, %68
  store i64 %69, i64* %16, align 8
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = load i32, i32* @WEBP_ALIGN_CST, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %72, %74
  store i64 %75, i64* %17, align 8
  %76 = load i64, i64* %16, align 8
  %77 = load i64, i64* %17, align 8
  %78 = add i64 %76, %77
  %79 = call i32* @WebPSafeMalloc(i64 1, i64 %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 8
  store i32* %79, i32** %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 8
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %233

87:                                               ; preds = %64
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 8
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %12, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = load i64, i64* %14, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %13, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load i64, i64* %16, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = call i64 @WEBP_ALIGN(i32* %96)
  %98 = inttoptr i64 %97 to i32*
  store i32* %98, i32** %18, align 8
  %99 = load i32*, i32** %18, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 7
  store i32* %100, i32** %102, align 8
  %103 = load i32*, i32** %18, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 6
  store i32* %104, i32** %106, align 8
  %107 = load i32*, i32** %18, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 5
  store i32* %108, i32** %110, align 8
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %87
  %114 = load i32*, i32** %18, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  br label %117

116:                                              ; preds = %87
  br label %117

117:                                              ; preds = %116, %113
  %118 = phi i32* [ %115, %113 ], [ null, %116 ]
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  store i32* %118, i32** %120, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 7
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %7, align 4
  %132 = mul nsw i32 0, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32*, i32** %12, align 8
  %138 = load i64, i64* %11, align 8
  %139 = mul i64 0, %138
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = call i32 @WebPRescalerInit(i32* %123, i32 %126, i32 %129, i32* %134, i32 %135, i32 %136, i32 0, i32 1, i32* %140)
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 6
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load i32*, i32** %13, align 8
  %148 = load i32, i32* %7, align 4
  %149 = mul nsw i32 1, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load i32*, i32** %12, align 8
  %155 = load i64, i64* %11, align 8
  %156 = mul i64 1, %155
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = call i32 @WebPRescalerInit(i32* %144, i32 %145, i32 %146, i32* %151, i32 %152, i32 %153, i32 0, i32 1, i32* %157)
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 5
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32*, i32** %13, align 8
  %165 = load i32, i32* %7, align 4
  %166 = mul nsw i32 2, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load i32*, i32** %12, align 8
  %172 = load i64, i64* %11, align 8
  %173 = mul i64 2, %172
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = call i32 @WebPRescalerInit(i32* %161, i32 %162, i32 %163, i32* %168, i32 %169, i32 %170, i32 0, i32 1, i32* %174)
  %176 = load i32, i32* @EmitRescaledRGB, align 4
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 8
  %179 = call i32 (...) @WebPInitYUV444Converters()
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %232

182:                                              ; preds = %117
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %13, align 8
  %193 = load i32, i32* %7, align 4
  %194 = mul nsw i32 3, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load i32*, i32** %12, align 8
  %200 = load i64, i64* %11, align 8
  %201 = mul i64 3, %200
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = call i32 @WebPRescalerInit(i32* %185, i32 %188, i32 %191, i32* %196, i32 %197, i32 %198, i32 0, i32 1, i32* %202)
  %204 = load i32, i32* @EmitRescaledAlphaRGB, align 4
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @MODE_RGBA_4444, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %222, label %214

214:                                              ; preds = %182
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @MODE_rgbA_4444, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %214, %182
  %223 = load i32, i32* @ExportAlphaRGBA4444, align 4
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  br label %230

226:                                              ; preds = %214
  %227 = load i32, i32* @ExportAlpha, align 4
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  br label %230

230:                                              ; preds = %226, %222
  %231 = call i32 (...) @WebPInitAlphaProcessing()
  br label %232

232:                                              ; preds = %230, %117
  store i32 1, i32* %3, align 4
  br label %233

233:                                              ; preds = %232, %86
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @WebPIsAlphaMode(i64) #1

declare dso_local i32* @WebPSafeMalloc(i64, i64) #1

declare dso_local i64 @WEBP_ALIGN(i32*) #1

declare dso_local i32 @WebPRescalerInit(i32*, i32, i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @WebPInitYUV444Converters(...) #1

declare dso_local i32 @WebPInitAlphaProcessing(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
