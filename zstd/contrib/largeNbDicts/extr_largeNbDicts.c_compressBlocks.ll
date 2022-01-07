; ModuleID = '/home/carl/AnghaBench/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_compressBlocks.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_compressBlocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32*, i32)* @compressBlocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compressBlocks(i64* %0, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %1, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i32* %3, i32** %7, align 8
  store i32 %4, i32* %8, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %17, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i32* (...) @ZSTD_createCCtx()
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %28

28:                                               ; preds = %101, %5
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %104

32:                                               ; preds = %28
  %33 = load i32*, i32** %7, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @ZSTD_compressCCtx(i32* %36, i32 %41, i32 %46, i32 %51, i32 %56, i32 %57)
  store i64 %58, i64* %13, align 8
  br label %83

59:                                               ; preds = %32
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %12, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = call i64 @ZSTD_compress_usingCDict(i32* %60, i32 %65, i32 %70, i32 %75, i32 %80, i32* %81)
  store i64 %82, i64* %13, align 8
  br label %83

83:                                               ; preds = %59, %35
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @ZSTD_isError(i64 %84)
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @CONTROL(i32 %88)
  %90 = load i64*, i64** %6, align 8
  %91 = icmp ne i64* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = load i64, i64* %13, align 8
  %94 = load i64*, i64** %6, align 8
  %95 = load i64, i64* %12, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  store i64 %93, i64* %96, align 8
  br label %97

97:                                               ; preds = %92, %83
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %11, align 8
  br label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %12, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %12, align 8
  br label %28

104:                                              ; preds = %28
  %105 = load i64, i64* %11, align 8
  ret i64 %105
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @ZSTD_createCCtx(...) #1

declare dso_local i64 @ZSTD_compressCCtx(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ZSTD_compress_usingCDict(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @CONTROL(i32) #1

declare dso_local i32 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
