; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_alpha_dec.c_ALPHInit.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_alpha_dec.c_ALPHInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i64, i64, i32, i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_9__* }

@ALPHA_HEADER_LEN = common dso_local global i64 0, align 8
@ALPHA_NO_COMPRESSION = common dso_local global i32 0, align 4
@ALPHA_LOSSLESS_COMPRESSION = common dso_local global i32 0, align 4
@WEBP_FILTER_LAST = common dso_local global i64 0, align 8
@ALPHA_PREPROCESSED_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i64, %struct.TYPE_8__*, i32*)* @ALPHInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ALPHInit(%struct.TYPE_9__* %0, i32* %1, i64 %2, %struct.TYPE_8__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i64, i64* @ALPHA_HEADER_LEN, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32* %20, i32** %13, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @ALPHA_HEADER_LEN, align 8
  %23 = sub i64 %21, %22
  store i64 %23, i64* %14, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 6
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %16, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br label %34

34:                                               ; preds = %31, %28, %5
  %35 = phi i1 [ false, %28 ], [ false, %5 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = call i32 (...) @VP8FiltersInit()
  %39 = load i32*, i32** %11, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ugt i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %34
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ugt i64 %59, 0
  br label %61

61:                                               ; preds = %56, %34
  %62 = phi i1 [ false, %34 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @ALPHA_HEADER_LEN, align 8
  %67 = icmp ule i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %198

69:                                               ; preds = %61
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 0
  %74 = and i32 %73, 3
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 2
  %81 = and i32 %80, 3
  %82 = sext i32 %81 to i64
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 4
  store i64 %82, i64* %84, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 4
  %89 = and i32 %88, 3
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 6
  %96 = and i32 %95, 3
  store i32 %96, i32* %15, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ALPHA_NO_COMPRESSION, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %123, label %102

102:                                              ; preds = %69
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ALPHA_LOSSLESS_COMPRESSION, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %123, label %108

108:                                              ; preds = %102
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @WEBP_FILTER_LAST, align 8
  %113 = icmp sge i64 %111, %112
  br i1 %113, label %123, label %114

114:                                              ; preds = %108
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @ALPHA_PREPROCESSED_LEVELS, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120, %114, %108, %102, %69
  store i32 0, i32* %6, align 4
  br label %198

124:                                              ; preds = %120
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %126 = call i32 @VP8InitIo(%struct.TYPE_8__* %125)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %128 = call i32 @WebPInitCustomIo(i32* null, %struct.TYPE_8__* %127)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 7
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %131, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 6
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @ALPHA_NO_COMPRESSION, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %184

172:                                              ; preds = %124
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = mul i64 %175, %178
  store i64 %179, i64* %17, align 8
  %180 = load i64, i64* %14, align 8
  %181 = load i64, i64* %17, align 8
  %182 = icmp uge i64 %180, %181
  %183 = zext i1 %182 to i32
  store i32 %183, i32* %12, align 4
  br label %196

184:                                              ; preds = %124
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @ALPHA_LOSSLESS_COMPRESSION, align 4
  %189 = icmp eq i32 %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @assert(i32 %190)
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %193 = load i32*, i32** %13, align 8
  %194 = load i64, i64* %14, align 8
  %195 = call i32 @VP8LDecodeAlphaHeader(%struct.TYPE_9__* %192, i32* %193, i64 %194)
  store i32 %195, i32* %12, align 4
  br label %196

196:                                              ; preds = %184, %172
  %197 = load i32, i32* %12, align 4
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %196, %123, %68
  %199 = load i32, i32* %6, align 4
  ret i32 %199
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VP8FiltersInit(...) #1

declare dso_local i32 @VP8InitIo(%struct.TYPE_8__*) #1

declare dso_local i32 @WebPInitCustomIo(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @VP8LDecodeAlphaHeader(%struct.TYPE_9__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
