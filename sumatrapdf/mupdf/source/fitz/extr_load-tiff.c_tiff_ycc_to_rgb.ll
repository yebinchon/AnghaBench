; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_tiff_ycc_to_rgb.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_tiff_ycc_to_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiff = type { i32, i32, i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.tiff*)* @tiff_ycc_to_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tiff_ycc_to_rgb(i32* %0, %struct.tiff* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tiff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [3 x i32], align 4
  store i32* %0, i32** %3, align 8
  store %struct.tiff* %1, %struct.tiff** %4, align 8
  %10 = load %struct.tiff*, %struct.tiff** %4, align 8
  %11 = getelementptr inbounds %struct.tiff, %struct.tiff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %129, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.tiff*, %struct.tiff** %4, align 8
  %16 = getelementptr inbounds %struct.tiff, %struct.tiff* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %132

19:                                               ; preds = %13
  %20 = load %struct.tiff*, %struct.tiff** %4, align 8
  %21 = getelementptr inbounds %struct.tiff, %struct.tiff* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.tiff*, %struct.tiff** %4, align 8
  %24 = getelementptr inbounds %struct.tiff, %struct.tiff* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = mul i32 %25, %26
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %22, i64 %28
  store i8* %29, i8** %8, align 8
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %125, %19
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.tiff*, %struct.tiff** %4, align 8
  %33 = getelementptr inbounds %struct.tiff, %struct.tiff* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %128

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = mul i32 %38, %39
  %41 = add i32 %40, 0
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %37, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %45, i32* %46, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = mul i32 %48, %49
  %51 = add i32 %50, 1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %47, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 %55, 128
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %56, i32* %57, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %7, align 4
  %61 = mul i32 %59, %60
  %62 = add i32 %61, 2
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %58, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = sub nsw i32 %66, 128
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = sitofp i32 %70 to float
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = sitofp i32 %73 to float
  %75 = fmul float 0x3FF66E9780000000, %74
  %76 = fadd float %71, %75
  %77 = fptosi float %76 to i32
  %78 = call zeroext i8 @fz_clampi(i32 %77, i32 0, i32 255)
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %7, align 4
  %82 = mul i32 %80, %81
  %83 = add i32 %82, 0
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %79, i64 %84
  store i8 %78, i8* %85, align 1
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = sitofp i32 %87 to float
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = sitofp i32 %90 to float
  %92 = fmul float 0x3FD60639E0000000, %91
  %93 = fsub float %88, %92
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = sitofp i32 %95 to float
  %97 = fmul float 0x3FE6DA3C20000000, %96
  %98 = fsub float %93, %97
  %99 = fptosi float %98 to i32
  %100 = call zeroext i8 @fz_clampi(i32 %99, i32 0, i32 255)
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %7, align 4
  %104 = mul i32 %102, %103
  %105 = add i32 %104, 1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %101, i64 %106
  store i8 %100, i8* %107, align 1
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = sitofp i32 %109 to float
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = sitofp i32 %112 to float
  %114 = fmul float 0x3FFC5A1CA0000000, %113
  %115 = fadd float %110, %114
  %116 = fptosi float %115 to i32
  %117 = call zeroext i8 @fz_clampi(i32 %116, i32 0, i32 255)
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %7, align 4
  %121 = mul i32 %119, %120
  %122 = add i32 %121, 2
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %118, i64 %123
  store i8 %117, i8* %124, align 1
  br label %125

125:                                              ; preds = %36
  %126 = load i32, i32* %5, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %30

128:                                              ; preds = %30
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %13

132:                                              ; preds = %13
  ret void
}

declare dso_local zeroext i8 @fz_clampi(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
