; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_alpha_enc.c_ApplyFiltersAndEncode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_alpha_enc.c_ApplyFiltersAndEncode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@FILTER_TRY_NONE = common dso_local global i32 0, align 4
@WEBP_FILTER_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i64, i32, i32, i32, i32, i32**, i64*, %struct.TYPE_8__*)* @ApplyFiltersAndEncode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ApplyFiltersAndEncode(i32* %0, i32 %1, i32 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32** %8, i64* %9, %struct.TYPE_8__* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32**, align 8
  %22 = alloca i64*, align 8
  %23 = alloca %struct.TYPE_8__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_9__, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i64 %3, i64* %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32** %8, i32*** %21, align 8
  store i64* %9, i64** %22, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %23, align 8
  store i32 1, i32* %24, align 4
  %29 = load i32*, i32** %13, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* %20, align 4
  %34 = call i32 @GetFilterMap(i32* %29, i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %26, align 4
  %35 = call i32 @InitFilterTrial(%struct.TYPE_9__* %25)
  %36 = load i32, i32* %26, align 4
  %37 = load i32, i32* @FILTER_TRY_NONE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %96

39:                                               ; preds = %11
  %40 = load i64, i64* %16, align 8
  %41 = call i64 @WebPSafeMalloc(i64 1, i64 %40)
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %27, align 8
  %43 = load i32*, i32** %27, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %164

46:                                               ; preds = %39
  %47 = load i32, i32* @WEBP_FILTER_NONE, align 4
  store i32 %47, i32* %18, align 4
  br label %48

48:                                               ; preds = %88, %46
  %49 = load i32, i32* %24, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %26, align 4
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i1 [ false, %48 ], [ %53, %51 ]
  br i1 %55, label %56, label %93

56:                                               ; preds = %54
  %57 = load i32, i32* %26, align 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %56
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %20, align 4
  %68 = load i32*, i32** %27, align 8
  %69 = call i32 @EncodeAlphaInternal(i32* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32* %68, %struct.TYPE_9__* %28)
  store i32 %69, i32* %24, align 4
  %70 = load i32, i32* %24, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %80 = call i32 @VP8BitWriterWipeOut(i32* %79)
  %81 = bitcast %struct.TYPE_9__* %25 to i8*
  %82 = bitcast %struct.TYPE_9__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 48, i1 false)
  br label %86

83:                                               ; preds = %72, %60
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %85 = call i32 @VP8BitWriterWipeOut(i32* %84)
  br label %86

86:                                               ; preds = %83, %78
  br label %87

87:                                               ; preds = %86, %56
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %26, align 4
  %92 = ashr i32 %91, 1
  store i32 %92, i32* %26, align 4
  br label %48

93:                                               ; preds = %54
  %94 = load i32*, i32** %27, align 8
  %95 = call i32 @WebPSafeFree(i32* %94)
  br label %105

96:                                               ; preds = %11
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* @WEBP_FILTER_NONE, align 4
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* %20, align 4
  %104 = call i32 @EncodeAlphaInternal(i32* %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32* null, %struct.TYPE_9__* %25)
  store i32 %104, i32* %24, align 4
  br label %105

105:                                              ; preds = %96, %93
  %106 = load i32, i32* %24, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %159

108:                                              ; preds = %105
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %110 = icmp ne %struct.TYPE_8__* %109, null
  br i1 %110, label %111, label %152

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 7
  store i32 %114, i32* %116, align 4
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 4
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 4
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 4
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %111, %108
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %154 = call i64 @VP8BitWriterSize(i32* %153)
  %155 = load i64*, i64** %22, align 8
  store i64 %154, i64* %155, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %157 = call i32* @VP8BitWriterBuf(i32* %156)
  %158 = load i32**, i32*** %21, align 8
  store i32* %157, i32** %158, align 8
  br label %162

159:                                              ; preds = %105
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %161 = call i32 @VP8BitWriterWipeOut(i32* %160)
  br label %162

162:                                              ; preds = %159, %152
  %163 = load i32, i32* %24, align 4
  store i32 %163, i32* %12, align 4
  br label %164

164:                                              ; preds = %162, %45
  %165 = load i32, i32* %12, align 4
  ret i32 %165
}

declare dso_local i32 @GetFilterMap(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @InitFilterTrial(%struct.TYPE_9__*) #1

declare dso_local i64 @WebPSafeMalloc(i64, i64) #1

declare dso_local i32 @EncodeAlphaInternal(i32*, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @VP8BitWriterWipeOut(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @WebPSafeFree(i32*) #1

declare dso_local i64 @VP8BitWriterSize(i32*) #1

declare dso_local i32* @VP8BitWriterBuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
