; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_add_span_aa.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_add_span_aa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32*, i32, i32, i32, i32)* @add_span_aa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_span_aa(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @fz_rasterizer_aa_hscale(i32* %21)
  store i32 %22, i32* %19, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  br label %117

27:                                               ; preds = %7
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %11, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %19, align 4
  %36 = udiv i32 %34, %35
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %19, align 4
  %39 = urem i32 %37, %38
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %19, align 4
  %42 = udiv i32 %40, %41
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %19, align 4
  %45 = urem i32 %43, %44
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %27
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %16, align 4
  %53 = sub nsw i32 %51, %52
  %54 = mul nsw i32 %50, %53
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %18, align 4
  %64 = sub nsw i32 %62, %63
  %65 = mul nsw i32 %61, %64
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, %65
  store i32 %72, i32* %70, align 4
  br label %117

73:                                               ; preds = %27
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %16, align 4
  %77 = sub nsw i32 %75, %76
  %78 = mul nsw i32 %74, %77
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, %78
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %16, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %87
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %19, align 4
  %98 = sub nsw i32 %96, %97
  %99 = mul nsw i32 %95, %98
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, %99
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %18, align 4
  %108 = sub nsw i32 0, %107
  %109 = mul nsw i32 %106, %108
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %109
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %26, %73, %49
  ret void
}

declare dso_local i32 @fz_rasterizer_aa_hscale(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
