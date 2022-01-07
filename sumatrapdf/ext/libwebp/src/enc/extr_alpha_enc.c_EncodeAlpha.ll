; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_alpha_enc.c_EncodeAlpha.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_alpha_enc.c_EncodeAlpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32 }

@WEBP_FILTER_NONE = common dso_local global i32 0, align 4
@WEBP_FILTER_FAST = common dso_local global i32 0, align 4
@ALPHA_NO_COMPRESSION = common dso_local global i32 0, align 4
@ALPHA_LOSSLESS_COMPRESSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32, i32, i32**, i64*)* @EncodeAlpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EncodeAlpha(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32** %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32** %5, i32*** %14, align 8
  store i64* %6, i64** %15, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %16, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %17, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %18, align 4
  store i32* null, i32** %19, align 8
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* %18, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %20, align 8
  store i32 0, i32* %21, align 4
  store i32 1, i32* %22, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 100
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %23, align 4
  %41 = load i64, i64* %20, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %18, align 4
  %45 = mul nsw i32 %43, %44
  %46 = icmp eq i32 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = icmp ne %struct.TYPE_6__* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %7
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br label %59

59:                                               ; preds = %54, %51, %7
  %60 = phi i1 [ false, %51 ], [ false, %7 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32**, i32*** %14, align 8
  %64 = icmp ne i32** %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i64*, i64** %15, align 8
  %67 = icmp ne i64* %66, null
  br label %68

68:                                               ; preds = %65, %59
  %69 = phi i1 [ false, %59 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32, i32* %17, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* %18, align 4
  %76 = icmp sgt i32 %75, 0
  br label %77

77:                                               ; preds = %74, %68
  %78 = phi i1 [ false, %68 ], [ %76, %74 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %17, align 4
  %85 = icmp sge i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @WEBP_FILTER_NONE, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %77
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @WEBP_FILTER_FAST, align 4
  %94 = icmp sle i32 %92, %93
  br label %95

95:                                               ; preds = %91, %77
  %96 = phi i1 [ false, %77 ], [ %94, %91 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %10, align 4
  %103 = icmp sgt i32 %102, 100
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %95
  store i32 0, i32* %8, align 4
  br label %202

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @ALPHA_NO_COMPRESSION, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @ALPHA_LOSSLESS_COMPRESSION, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %105
  store i32 0, i32* %8, align 4
  br label %202

114:                                              ; preds = %109
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @ALPHA_NO_COMPRESSION, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* @WEBP_FILTER_NONE, align 4
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %118, %114
  %121 = load i64, i64* %20, align 8
  %122 = call i64 @WebPSafeMalloc(i64 1, i64 %121)
  %123 = inttoptr i64 %122 to i32*
  store i32* %123, i32** %19, align 8
  %124 = load i32*, i32** %19, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 0, i32* %8, align 4
  br label %202

127:                                              ; preds = %120
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32*, i32** %19, align 8
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %18, align 4
  %138 = call i32 @WebPCopyPlane(i32* %130, i32 %133, i32* %134, i32 %135, i32 %136, i32 %137)
  %139 = load i32, i32* %23, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %127
  %142 = load i32, i32* %10, align 4
  %143 = icmp sle i32 %142, 70
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = sdiv i32 %145, 5
  %147 = add nsw i32 2, %146
  br label %153

148:                                              ; preds = %141
  %149 = load i32, i32* %10, align 4
  %150 = sub nsw i32 %149, 70
  %151 = mul nsw i32 %150, 8
  %152 = add nsw i32 16, %151
  br label %153

153:                                              ; preds = %148, %144
  %154 = phi i32 [ %147, %144 ], [ %152, %148 ]
  store i32 %154, i32* %24, align 4
  %155 = load i32*, i32** %19, align 8
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %18, align 4
  %158 = load i32, i32* %24, align 4
  %159 = call i32 @QuantizeLevels(i32* %155, i32 %156, i32 %157, i32 %158, i32* %21)
  store i32 %159, i32* %22, align 4
  br label %160

160:                                              ; preds = %153, %127
  %161 = load i32, i32* %22, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %198

163:                                              ; preds = %160
  %164 = call i32 (...) @VP8FiltersInit()
  %165 = load i32*, i32** %19, align 8
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %18, align 4
  %168 = load i64, i64* %20, align 8
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %23, align 4
  %172 = load i32, i32* %13, align 4
  %173 = load i32**, i32*** %14, align 8
  %174 = load i64*, i64** %15, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = call i32 @ApplyFiltersAndEncode(i32* %165, i32 %166, i32 %167, i64 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32** %173, i64* %174, %struct.TYPE_7__* %177)
  store i32 %178, i32* %22, align 4
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = icmp ne %struct.TYPE_7__* %181, null
  br i1 %182, label %183, label %197

183:                                              ; preds = %163
  %184 = load i64*, i64** %15, align 8
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 3
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, %186
  store i32 %192, i32* %190, align 4
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 3
  store i32 0, i32* %196, align 4
  br label %197

197:                                              ; preds = %183, %163
  br label %198

198:                                              ; preds = %197, %160
  %199 = load i32*, i32** %19, align 8
  %200 = call i32 @WebPSafeFree(i32* %199)
  %201 = load i32, i32* %22, align 4
  store i32 %201, i32* %8, align 4
  br label %202

202:                                              ; preds = %198, %126, %113, %104
  %203 = load i32, i32* %8, align 4
  ret i32 %203
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @WebPSafeMalloc(i64, i64) #1

declare dso_local i32 @WebPCopyPlane(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @QuantizeLevels(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @VP8FiltersInit(...) #1

declare dso_local i32 @ApplyFiltersAndEncode(i32*, i32, i32, i64, i32, i32, i32, i32, i32**, i64*, %struct.TYPE_7__*) #1

declare dso_local i32 @WebPSafeFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
