; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_init_tex2_gradient.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_init_tex2_gradient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tex2_data = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_tex2_gradient() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %102, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 16
  br i1 %4, label %5, label %105

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = mul nsw i32 12, %6
  %8 = add nsw i32 64, %7
  %9 = load i32**, i32*** @tex2_data, align 8
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %10, 0
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32*, i32** %9, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %8, i32* %15, align 4
  %16 = load i32**, i32*** @tex2_data, align 8
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 0
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %16, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 32, i32* %22, align 4
  %23 = load i32**, i32*** @tex2_data, align 8
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 0
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %23, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 64, i32* %29, align 4
  %30 = load i32**, i32*** @tex2_data, align 8
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 16
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %30, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 255, i32* %36, align 4
  %37 = load i32, i32* %1, align 4
  %38 = mul nsw i32 8, %37
  %39 = add nsw i32 32, %38
  %40 = load i32**, i32*** @tex2_data, align 8
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 16
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %40, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %39, i32* %46, align 4
  %47 = load i32**, i32*** @tex2_data, align 8
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 16
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %47, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 64, i32* %53, align 4
  %54 = load i32**, i32*** @tex2_data, align 8
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 32
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %54, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 255, i32* %60, align 4
  %61 = load i32**, i32*** @tex2_data, align 8
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 32
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %61, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 160, i32* %67, align 4
  %68 = load i32, i32* %1, align 4
  %69 = mul nsw i32 12, %68
  %70 = add nsw i32 64, %69
  %71 = load i32**, i32*** @tex2_data, align 8
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 32
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %71, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32 %70, i32* %77, align 4
  %78 = load i32**, i32*** @tex2_data, align 8
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %79, 48
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %78, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 255, i32* %84, align 4
  %85 = load i32, i32* %1, align 4
  %86 = mul nsw i32 6, %85
  %87 = add nsw i32 160, %86
  %88 = load i32**, i32*** @tex2_data, align 8
  %89 = load i32, i32* %1, align 4
  %90 = add nsw i32 %89, 48
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %88, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 %87, i32* %94, align 4
  %95 = load i32**, i32*** @tex2_data, align 8
  %96 = load i32, i32* %1, align 4
  %97 = add nsw i32 %96, 48
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %95, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 255, i32* %101, align 4
  br label %102

102:                                              ; preds = %5
  %103 = load i32, i32* %1, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %1, align 4
  br label %2

105:                                              ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
