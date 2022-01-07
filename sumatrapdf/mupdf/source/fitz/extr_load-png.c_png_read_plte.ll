; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_png_read_plte.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_png_read_plte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i8* }

@.str = private unnamed_addr constant [28 x i8] c"too many samples in palette\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.info*, i8*, i32)* @png_read_plte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_read_plte(i32* %0, %struct.info* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.info* %1, %struct.info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = udiv i32 %11, 3
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sgt i32 %13, 256
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @fz_warn(i32* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 256, i32* %9, align 4
  br label %18

18:                                               ; preds = %15, %4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %67, %18
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 %25, 3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = load %struct.info*, %struct.info** %6, align 8
  %31 = getelementptr inbounds %struct.info, %struct.info* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  store i8 %29, i8* %36, align 1
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 %38, 3
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = load %struct.info*, %struct.info** %6, align 8
  %45 = getelementptr inbounds %struct.info, %struct.info* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = mul nsw i32 %47, 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  store i8 %43, i8* %51, align 1
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 %53, 3
  %55 = add nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = load %struct.info*, %struct.info** %6, align 8
  %60 = getelementptr inbounds %struct.info, %struct.info* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = mul nsw i32 %62, 4
  %64 = add nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  store i8 %58, i8* %66, align 1
  br label %67

67:                                               ; preds = %23
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %19

70:                                               ; preds = %19
  br label %71

71:                                               ; preds = %98, %70
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 256
  br i1 %73, label %74, label %101

74:                                               ; preds = %71
  %75 = load %struct.info*, %struct.info** %6, align 8
  %76 = getelementptr inbounds %struct.info, %struct.info* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 %78, 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load %struct.info*, %struct.info** %6, align 8
  %83 = getelementptr inbounds %struct.info, %struct.info* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = mul nsw i32 %85, 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %84, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load %struct.info*, %struct.info** %6, align 8
  %91 = getelementptr inbounds %struct.info, %struct.info* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 %93, 4
  %95 = add nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %92, i64 %96
  store i8 0, i8* %97, align 1
  br label %98

98:                                               ; preds = %74
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %71

101:                                              ; preds = %71
  ret void
}

declare dso_local i32 @fz_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
