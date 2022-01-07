; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzmaDec.c_LzmaDec_DecodeToBuf.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzmaDec.c_LzmaDec_DecodeToBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }

@LZMA_FINISH_ANY = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LzmaDec_DecodeToBuf(%struct.TYPE_4__* %0, i32* %1, i64* %2, i32* %3, i64* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
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
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
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

29:                                               ; preds = %114, %7
  %30 = load i64, i64* %17, align 8
  store i64 %30, i64* %18, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %29
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %20, align 8
  %45 = load i64, i64* %16, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %20, align 8
  %50 = sub nsw i64 %48, %49
  %51 = icmp sgt i64 %45, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %19, align 8
  %56 = load i32, i32* @LZMA_FINISH_ANY, align 4
  store i32 %56, i32* %21, align 4
  br label %62

57:                                               ; preds = %41
  %58 = load i64, i64* %20, align 8
  %59 = load i64, i64* %16, align 8
  %60 = add nsw i64 %58, %59
  store i64 %60, i64* %19, align 8
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %21, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %64 = load i64, i64* %19, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %21, align 4
  %67 = load i32*, i32** %15, align 8
  %68 = call i64 @LzmaDec_DecodeToDic(%struct.TYPE_4__* %63, i64 %64, i32* %65, i64* %18, i32 %66, i32* %67)
  store i64 %68, i64* %22, align 8
  %69 = load i64, i64* %18, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 %69
  store i32* %71, i32** %12, align 8
  %72 = load i64, i64* %18, align 8
  %73 = load i64, i64* %17, align 8
  %74 = sub nsw i64 %73, %72
  store i64 %74, i64* %17, align 8
  %75 = load i64, i64* %18, align 8
  %76 = load i64*, i64** %13, align 8
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %75
  store i64 %78, i64* %76, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %20, align 8
  %83 = sub nsw i64 %81, %82
  store i64 %83, i64* %19, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %20, align 8
  %89 = add nsw i64 %87, %88
  %90 = load i64, i64* %19, align 8
  %91 = call i32 @memcpy(i32* %84, i64 %89, i64 %90)
  %92 = load i64, i64* %19, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 %92
  store i32* %94, i32** %10, align 8
  %95 = load i64, i64* %19, align 8
  %96 = load i64, i64* %16, align 8
  %97 = sub nsw i64 %96, %95
  store i64 %97, i64* %16, align 8
  %98 = load i64, i64* %19, align 8
  %99 = load i64*, i64** %11, align 8
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, %98
  store i64 %101, i64* %99, align 8
  %102 = load i64, i64* %22, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %62
  %105 = load i64, i64* %22, align 8
  store i64 %105, i64* %8, align 8
  br label %115

106:                                              ; preds = %62
  %107 = load i64, i64* %19, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i64, i64* %16, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109, %106
  %113 = load i64, i64* @SZ_OK, align 8
  store i64 %113, i64* %8, align 8
  br label %115

114:                                              ; preds = %109
  br label %29

115:                                              ; preds = %112, %104
  %116 = load i64, i64* %8, align 8
  ret i64 %116
}

declare dso_local i64 @LzmaDec_DecodeToDic(%struct.TYPE_4__*, i64, i32*, i64*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
