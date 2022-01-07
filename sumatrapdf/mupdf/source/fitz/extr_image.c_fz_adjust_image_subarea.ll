; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_image.c_fz_adjust_image_subarea.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_image.c_fz_adjust_image_subarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32)* @fz_adjust_image_subarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_adjust_image_subarea(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = shl i32 1, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %31 [
    i32 1, label %22
    i32 2, label %25
    i32 4, label %28
  ]

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 8, %23
  store i32 %24, i32* %11, align 4
  br label %40

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = mul nsw i32 4, %26
  store i32 %27, i32* %11, align 4
  br label %40

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = mul nsw i32 2, %29
  store i32 %30, i32* %11, align 4
  br label %40

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  br label %38

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %38, %28, %25, %22
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 %44, 1
  %46 = xor i32 %45, -1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %57, 1
  %59 = xor i32 %58, -1
  %60 = and i32 %56, %59
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %100

63:                                               ; preds = %40
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = mul nsw i32 %64, %65
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  switch i32 %67, label %69 [
    i32 3, label %68
    i32 5, label %68
    i32 7, label %68
    i32 9, label %68
    i32 11, label %68
    i32 13, label %68
    i32 15, label %68
    i32 6, label %72
    i32 10, label %72
    i32 14, label %72
    i32 12, label %75
  ]

68:                                               ; preds = %63, %63, %63, %63, %63, %63, %63
  br label %69

69:                                               ; preds = %63, %68
  %70 = load i32, i32* %11, align 4
  %71 = mul nsw i32 %70, 8
  store i32 %71, i32* %11, align 4
  br label %78

72:                                               ; preds = %63, %63, %63
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 %73, 4
  store i32 %74, i32* %11, align 4
  br label %78

75:                                               ; preds = %63
  %76 = load i32, i32* %11, align 4
  %77 = mul nsw i32 %76, 2
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %75, %72, %69
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %11, align 4
  %83 = sdiv i32 %81, %82
  %84 = load i32, i32* %11, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %90, %91
  %93 = sub nsw i32 %92, 1
  %94 = load i32, i32* %11, align 4
  %95 = sdiv i32 %93, %94
  %96 = load i32, i32* %11, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %78, %43
  %101 = load i32, i32* %9, align 4
  %102 = sub nsw i32 %101, 1
  %103 = xor i32 %102, -1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %110, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %100
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %115, %100
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %124, %125
  %127 = sub nsw i32 %126, 1
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %128, 1
  %130 = xor i32 %129, -1
  %131 = and i32 %127, %130
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp sgt i32 %136, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %121
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %141, %121
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
