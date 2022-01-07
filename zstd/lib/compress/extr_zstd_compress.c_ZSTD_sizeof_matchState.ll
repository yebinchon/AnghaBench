; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_sizeof_matchState.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_sizeof_matchState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32, i32 }

@ZSTD_fast = common dso_local global i64 0, align 8
@ZSTD_HASHLOG3_MAX = common dso_local global i32 0, align 4
@MaxML = common dso_local global i32 0, align 4
@MaxLL = common dso_local global i32 0, align 4
@MaxOff = common dso_local global i32 0, align 4
@Litbits = common dso_local global i32 0, align 4
@ZSTD_OPT_NUM = common dso_local global i32 0, align 4
@ZSTD_btopt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"chainSize: %u - hSize: %u - h3Size: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32)* @ZSTD_sizeof_matchState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_sizeof_matchState(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ZSTD_fast, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = shl i64 1, %21
  br label %23

23:                                               ; preds = %18, %17
  %24 = phi i64 [ 0, %17 ], [ %22, %18 ]
  store i64 %24, i64* %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = shl i64 1, %27
  store i64 %28, i64* %6, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* @ZSTD_HASHLOG3_MAX, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @MIN(i32 %37, i32 %40)
  br label %43

42:                                               ; preds = %31, %23
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi i32 [ %41, %36 ], [ 0, %42 ]
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = shl i64 1, %49
  br label %52

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i64 [ %50, %47 ], [ 0, %51 ]
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %5, align 8
  %55 = mul i64 %54, 4
  %56 = load i64, i64* %6, align 8
  %57 = mul i64 %56, 4
  %58 = add i64 %55, %57
  %59 = load i64, i64* %8, align 8
  %60 = mul i64 %59, 4
  %61 = add i64 %58, %60
  store i64 %61, i64* %9, align 8
  %62 = load i32, i32* @MaxML, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i64 @ZSTD_cwksp_alloc_size(i32 %66)
  %68 = load i32, i32* @MaxLL, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i64 @ZSTD_cwksp_alloc_size(i32 %72)
  %74 = add i64 %67, %73
  %75 = load i32, i32* @MaxOff, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i64 @ZSTD_cwksp_alloc_size(i32 %79)
  %81 = add i64 %74, %80
  %82 = load i32, i32* @Litbits, align 4
  %83 = shl i32 1, %82
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i64 @ZSTD_cwksp_alloc_size(i32 %86)
  %88 = add i64 %81, %87
  %89 = load i32, i32* @ZSTD_OPT_NUM, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i64 @ZSTD_cwksp_alloc_size(i32 %93)
  %95 = add i64 %88, %94
  %96 = load i32, i32* @ZSTD_OPT_NUM, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = call i64 @ZSTD_cwksp_alloc_size(i32 %100)
  %102 = add i64 %95, %101
  store i64 %102, i64* %10, align 8
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %52
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ZSTD_btopt, align 8
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i64, i64* %10, align 8
  br label %114

113:                                              ; preds = %105, %52
  br label %114

114:                                              ; preds = %113, %111
  %115 = phi i64 [ %112, %111 ], [ 0, %113 ]
  store i64 %115, i64* %11, align 8
  %116 = load i64, i64* %5, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i64, i64* %6, align 8
  %119 = trunc i64 %118 to i32
  %120 = load i64, i64* %8, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %119, i32 %121)
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* %11, align 8
  %125 = add i64 %123, %124
  ret i64 %125
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @ZSTD_cwksp_alloc_size(i32) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
