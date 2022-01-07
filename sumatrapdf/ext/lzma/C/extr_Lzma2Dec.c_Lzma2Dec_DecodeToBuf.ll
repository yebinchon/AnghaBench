; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Lzma2Dec.c_Lzma2Dec_DecodeToBuf.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Lzma2Dec.c_Lzma2Dec_DecodeToBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64 }

@LZMA_FINISH_ANY = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Lzma2Dec_DecodeToBuf(%struct.TYPE_6__* %0, i32* %1, i64* %2, i32* %3, i64* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %23 = load i64*, i64** %11, align 8
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %16, align 8
  %25 = load i64*, i64** %13, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %17, align 8
  %27 = load i64*, i64** %11, align 8
  store i64 0, i64* %27, align 8
  %28 = load i64*, i64** %13, align 8
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %122, %7
  %30 = load i64, i64* %17, align 8
  store i64 %30, i64* %18, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %34, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %29
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %20, align 8
  %49 = load i64, i64* %16, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %20, align 8
  %55 = sub nsw i64 %53, %54
  %56 = icmp sgt i64 %49, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %19, align 8
  %62 = load i32, i32* @LZMA_FINISH_ANY, align 4
  store i32 %62, i32* %21, align 4
  br label %68

63:                                               ; preds = %44
  %64 = load i64, i64* %20, align 8
  %65 = load i64, i64* %16, align 8
  %66 = add nsw i64 %64, %65
  store i64 %66, i64* %19, align 8
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %21, align 4
  br label %68

68:                                               ; preds = %63, %57
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = load i64, i64* %19, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %21, align 4
  %73 = load i32*, i32** %15, align 8
  %74 = call i64 @Lzma2Dec_DecodeToDic(%struct.TYPE_6__* %69, i64 %70, i32* %71, i64* %18, i32 %72, i32* %73)
  store i64 %74, i64* %22, align 8
  %75 = load i64, i64* %18, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 %75
  store i32* %77, i32** %12, align 8
  %78 = load i64, i64* %18, align 8
  %79 = load i64, i64* %17, align 8
  %80 = sub nsw i64 %79, %78
  store i64 %80, i64* %17, align 8
  %81 = load i64, i64* %18, align 8
  %82 = load i64*, i64** %13, align 8
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %81
  store i64 %84, i64* %82, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %20, align 8
  %90 = sub nsw i64 %88, %89
  store i64 %90, i64* %19, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %20, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i64, i64* %19, align 8
  %99 = call i32 @memcpy(i32* %91, i64 %97, i64 %98)
  %100 = load i64, i64* %19, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 %100
  store i32* %102, i32** %10, align 8
  %103 = load i64, i64* %19, align 8
  %104 = load i64, i64* %16, align 8
  %105 = sub nsw i64 %104, %103
  store i64 %105, i64* %16, align 8
  %106 = load i64, i64* %19, align 8
  %107 = load i64*, i64** %11, align 8
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, %106
  store i64 %109, i64* %107, align 8
  %110 = load i64, i64* %22, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %68
  %113 = load i64, i64* %22, align 8
  store i64 %113, i64* %8, align 8
  br label %123

114:                                              ; preds = %68
  %115 = load i64, i64* %19, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i64, i64* %16, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117, %114
  %121 = load i64, i64* @SZ_OK, align 8
  store i64 %121, i64* %8, align 8
  br label %123

122:                                              ; preds = %117
  br label %29

123:                                              ; preds = %120, %112
  %124 = load i64, i64* %8, align 8
  ret i64 %124
}

declare dso_local i64 @Lzma2Dec_DecodeToDic(%struct.TYPE_6__*, i64, i32*, i64*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
