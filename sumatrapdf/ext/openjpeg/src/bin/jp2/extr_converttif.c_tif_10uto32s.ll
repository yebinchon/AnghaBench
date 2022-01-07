; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_converttif.c_tif_10uto32s.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_converttif.c_tif_10uto32s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i32)* @tif_10uto32s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tif_10uto32s(i32* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %84, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, -4
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %87

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %4, align 8
  %25 = load i32, i32* %23, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %4, align 8
  %28 = load i32, i32* %26, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %4, align 8
  %31 = load i32, i32* %29, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %4, align 8
  %34 = load i32, i32* %32, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %4, align 8
  %37 = load i32, i32* %35, align 4
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 %38, 2
  %40 = load i32, i32* %9, align 4
  %41 = ashr i32 %40, 6
  %42 = or i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = load i64*, i64** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 0
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  store i64 %43, i64* %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 63
  %51 = shl i32 %50, 4
  %52 = load i32, i32* %10, align 4
  %53 = ashr i32 %52, 4
  %54 = or i32 %51, %53
  %55 = zext i32 %54 to i64
  %56 = load i64*, i64** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %57, 1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  store i64 %55, i64* %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 15
  %63 = shl i32 %62, 6
  %64 = load i32, i32* %11, align 4
  %65 = ashr i32 %64, 2
  %66 = or i32 %63, %65
  %67 = zext i32 %66 to i64
  %68 = load i64*, i64** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 2
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  store i64 %67, i64* %72, align 8
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %73, 3
  %75 = shl i32 %74, 8
  %76 = load i32, i32* %12, align 4
  %77 = or i32 %75, %76
  %78 = zext i32 %77 to i64
  %79 = load i64*, i64** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = add i32 %80, 3
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  store i64 %78, i64* %83, align 8
  br label %84

84:                                               ; preds = %22
  %85 = load i32, i32* %7, align 4
  %86 = add i32 %85, 4
  store i32 %86, i32* %7, align 4
  br label %17

87:                                               ; preds = %17
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, 3
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %149

91:                                               ; preds = %87
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %4, align 8
  %94 = load i32, i32* %92, align 4
  store i32 %94, i32* %13, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %4, align 8
  %97 = load i32, i32* %95, align 4
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, 3
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %13, align 4
  %101 = shl i32 %100, 2
  %102 = load i32, i32* %14, align 4
  %103 = ashr i32 %102, 6
  %104 = or i32 %101, %103
  %105 = sext i32 %104 to i64
  %106 = load i64*, i64** %5, align 8
  %107 = load i32, i32* %7, align 4
  %108 = add i32 %107, 0
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %106, i64 %109
  store i64 %105, i64* %110, align 8
  %111 = load i32, i32* %6, align 4
  %112 = icmp ugt i32 %111, 1
  br i1 %112, label %113, label %148

113:                                              ; preds = %91
  %114 = load i32*, i32** %4, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %4, align 8
  %116 = load i32, i32* %114, align 4
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %14, align 4
  %118 = and i32 %117, 63
  %119 = shl i32 %118, 4
  %120 = load i32, i32* %15, align 4
  %121 = ashr i32 %120, 4
  %122 = or i32 %119, %121
  %123 = zext i32 %122 to i64
  %124 = load i64*, i64** %5, align 8
  %125 = load i32, i32* %7, align 4
  %126 = add i32 %125, 1
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %124, i64 %127
  store i64 %123, i64* %128, align 8
  %129 = load i32, i32* %6, align 4
  %130 = icmp ugt i32 %129, 2
  br i1 %130, label %131, label %147

131:                                              ; preds = %113
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %4, align 8
  %134 = load i32, i32* %132, align 4
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %15, align 4
  %136 = and i32 %135, 15
  %137 = shl i32 %136, 6
  %138 = load i32, i32* %16, align 4
  %139 = ashr i32 %138, 2
  %140 = or i32 %137, %139
  %141 = zext i32 %140 to i64
  %142 = load i64*, i64** %5, align 8
  %143 = load i32, i32* %7, align 4
  %144 = add i32 %143, 2
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %142, i64 %145
  store i64 %141, i64* %146, align 8
  br label %147

147:                                              ; preds = %131, %113
  br label %148

148:                                              ; preds = %147, %91
  br label %149

149:                                              ; preds = %148, %87
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
