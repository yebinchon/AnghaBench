; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_palette.c_histogram_color.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_palette.c_histogram_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.histogram = type { i32*** }

@R_SHIFT = common dso_local global i32 0, align 4
@G_SHIFT = common dso_local global i32 0, align 4
@B_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.histogram*, i32, i32, i32, i32, i32, i32)* @histogram_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @histogram_color(%struct.histogram* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.histogram*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.histogram* %0, %struct.histogram** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %20, align 4
  br label %24

24:                                               ; preds = %106, %7
  %25 = load i32, i32* %20, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %109

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %21, align 4
  br label %30

30:                                               ; preds = %102, %28
  %31 = load i32, i32* %21, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %105

34:                                               ; preds = %30
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %22, align 4
  br label %36

36:                                               ; preds = %98, %34
  %37 = load i32, i32* %22, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %101

40:                                               ; preds = %36
  %41 = load %struct.histogram*, %struct.histogram** %8, align 8
  %42 = getelementptr inbounds %struct.histogram, %struct.histogram* %41, i32 0, i32 0
  %43 = load i32***, i32**** %42, align 8
  %44 = load i32, i32* %20, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32**, i32*** %43, i64 %45
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %21, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %22, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %18, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %40
  br label %98

58:                                               ; preds = %40
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* @R_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* @R_SHIFT, align 4
  %63 = shl i32 1, %62
  %64 = sdiv i32 %63, 2
  %65 = add nsw i32 %61, %64
  %66 = load i32, i32* %18, align 4
  %67 = mul i32 %65, %66
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* %15, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %15, align 8
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* @G_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* @G_SHIFT, align 4
  %75 = shl i32 1, %74
  %76 = sdiv i32 %75, 2
  %77 = add nsw i32 %73, %76
  %78 = load i32, i32* %18, align 4
  %79 = mul i32 %77, %78
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* %16, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %16, align 8
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* @B_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* @B_SHIFT, align 4
  %87 = shl i32 1, %86
  %88 = sdiv i32 %87, 2
  %89 = add nsw i32 %85, %88
  %90 = load i32, i32* %18, align 4
  %91 = mul i32 %89, %90
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* %17, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %17, align 8
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %19, align 4
  %97 = add i32 %96, %95
  store i32 %97, i32* %19, align 4
  br label %98

98:                                               ; preds = %58, %57
  %99 = load i32, i32* %22, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %22, align 4
  br label %36

101:                                              ; preds = %36
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %21, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %21, align 4
  br label %30

105:                                              ; preds = %30
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %20, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %20, align 4
  br label %24

109:                                              ; preds = %24
  %110 = load i64, i64* %17, align 8
  %111 = load i32, i32* %19, align 4
  %112 = udiv i32 %111, 2
  %113 = zext i32 %112 to i64
  %114 = add i64 %110, %113
  %115 = load i32, i32* %19, align 4
  %116 = zext i32 %115 to i64
  %117 = udiv i64 %114, %116
  %118 = load i64, i64* %16, align 8
  %119 = load i32, i32* %19, align 4
  %120 = udiv i32 %119, 2
  %121 = zext i32 %120 to i64
  %122 = add i64 %118, %121
  %123 = load i32, i32* %19, align 4
  %124 = zext i32 %123 to i64
  %125 = udiv i64 %122, %124
  %126 = shl i64 %125, 8
  %127 = or i64 %117, %126
  %128 = load i64, i64* %15, align 8
  %129 = load i32, i32* %19, align 4
  %130 = udiv i32 %129, 2
  %131 = zext i32 %130 to i64
  %132 = add i64 %128, %131
  %133 = load i32, i32* %19, align 4
  %134 = zext i32 %133 to i64
  %135 = udiv i64 %132, %134
  %136 = shl i64 %135, 16
  %137 = or i64 %127, %136
  %138 = or i64 %137, 4278190080
  %139 = trunc i64 %138 to i32
  ret i32 %139
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
