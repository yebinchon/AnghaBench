; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_converttif.c_tif_14uto32s.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_converttif.c_tif_14uto32s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i32)* @tif_14uto32s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tif_14uto32s(i32* %0, i64* %1, i32 %2) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %100, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, -4
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %103

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %4, align 8
  %29 = load i32, i32* %27, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %4, align 8
  %32 = load i32, i32* %30, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %4, align 8
  %35 = load i32, i32* %33, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %4, align 8
  %38 = load i32, i32* %36, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %4, align 8
  %41 = load i32, i32* %39, align 4
  store i32 %41, i32* %12, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %4, align 8
  %44 = load i32, i32* %42, align 4
  store i32 %44, i32* %13, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %4, align 8
  %47 = load i32, i32* %45, align 4
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 %48, 6
  %50 = load i32, i32* %9, align 4
  %51 = ashr i32 %50, 2
  %52 = or i32 %49, %51
  %53 = sext i32 %52 to i64
  %54 = load i64*, i64** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 0
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  store i64 %53, i64* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 3
  %61 = shl i32 %60, 12
  %62 = load i32, i32* %10, align 4
  %63 = shl i32 %62, 4
  %64 = or i32 %61, %63
  %65 = load i32, i32* %11, align 4
  %66 = ashr i32 %65, 4
  %67 = or i32 %64, %66
  %68 = zext i32 %67 to i64
  %69 = load i64*, i64** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %70, 1
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  store i64 %68, i64* %73, align 8
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %74, 15
  %76 = shl i32 %75, 10
  %77 = load i32, i32* %12, align 4
  %78 = shl i32 %77, 2
  %79 = or i32 %76, %78
  %80 = load i32, i32* %13, align 4
  %81 = ashr i32 %80, 6
  %82 = or i32 %79, %81
  %83 = zext i32 %82 to i64
  %84 = load i64*, i64** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = add i32 %85, 2
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  store i64 %83, i64* %88, align 8
  %89 = load i32, i32* %13, align 4
  %90 = and i32 %89, 63
  %91 = shl i32 %90, 8
  %92 = load i32, i32* %14, align 4
  %93 = or i32 %91, %92
  %94 = zext i32 %93 to i64
  %95 = load i64*, i64** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = add i32 %96, 3
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  store i64 %94, i64* %99, align 8
  br label %100

100:                                              ; preds = %26
  %101 = load i32, i32* %7, align 4
  %102 = add i32 %101, 4
  store i32 %102, i32* %7, align 4
  br label %21

103:                                              ; preds = %21
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, 3
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %177

107:                                              ; preds = %103
  %108 = load i32*, i32** %4, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %4, align 8
  %110 = load i32, i32* %108, align 4
  store i32 %110, i32* %15, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %4, align 8
  %113 = load i32, i32* %111, align 4
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %6, align 4
  %115 = and i32 %114, 3
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %15, align 4
  %117 = shl i32 %116, 6
  %118 = load i32, i32* %16, align 4
  %119 = ashr i32 %118, 2
  %120 = or i32 %117, %119
  %121 = sext i32 %120 to i64
  %122 = load i64*, i64** %5, align 8
  %123 = load i32, i32* %7, align 4
  %124 = add i32 %123, 0
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %122, i64 %125
  store i64 %121, i64* %126, align 8
  %127 = load i32, i32* %6, align 4
  %128 = icmp ugt i32 %127, 1
  br i1 %128, label %129, label %176

129:                                              ; preds = %107
  %130 = load i32*, i32** %4, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %4, align 8
  %132 = load i32, i32* %130, align 4
  store i32 %132, i32* %17, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %4, align 8
  %135 = load i32, i32* %133, align 4
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %16, align 4
  %137 = and i32 %136, 3
  %138 = shl i32 %137, 12
  %139 = load i32, i32* %17, align 4
  %140 = shl i32 %139, 4
  %141 = or i32 %138, %140
  %142 = load i32, i32* %18, align 4
  %143 = ashr i32 %142, 4
  %144 = or i32 %141, %143
  %145 = zext i32 %144 to i64
  %146 = load i64*, i64** %5, align 8
  %147 = load i32, i32* %7, align 4
  %148 = add i32 %147, 1
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %146, i64 %149
  store i64 %145, i64* %150, align 8
  %151 = load i32, i32* %6, align 4
  %152 = icmp ugt i32 %151, 2
  br i1 %152, label %153, label %175

153:                                              ; preds = %129
  %154 = load i32*, i32** %4, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %4, align 8
  %156 = load i32, i32* %154, align 4
  store i32 %156, i32* %19, align 4
  %157 = load i32*, i32** %4, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %4, align 8
  %159 = load i32, i32* %157, align 4
  store i32 %159, i32* %20, align 4
  %160 = load i32, i32* %18, align 4
  %161 = and i32 %160, 15
  %162 = shl i32 %161, 10
  %163 = load i32, i32* %19, align 4
  %164 = shl i32 %163, 2
  %165 = or i32 %162, %164
  %166 = load i32, i32* %20, align 4
  %167 = ashr i32 %166, 6
  %168 = or i32 %165, %167
  %169 = zext i32 %168 to i64
  %170 = load i64*, i64** %5, align 8
  %171 = load i32, i32* %7, align 4
  %172 = add i32 %171, 2
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %170, i64 %173
  store i64 %169, i64* %174, align 8
  br label %175

175:                                              ; preds = %153, %129
  br label %176

176:                                              ; preds = %175, %107
  br label %177

177:                                              ; preds = %176, %103
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
