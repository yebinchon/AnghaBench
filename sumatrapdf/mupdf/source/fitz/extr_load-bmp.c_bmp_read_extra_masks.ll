; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-bmp.c_bmp_read_extra_masks.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-bmp.c_bmp_read_extra_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i64, i8*, i8*, i8* }

@BI_BITFIELDS = common dso_local global i64 0, align 8
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"premature end in mask header in bmp image\00", align 1
@BI_ALPHABITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.info*, i8*, i8*)* @bmp_read_extra_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bmp_read_extra_masks(i32* %0, %struct.info* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.info* %1, %struct.info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.info*, %struct.info** %6, align 8
  %11 = getelementptr inbounds %struct.info, %struct.info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BI_BITFIELDS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %4
  store i32 12, i32* %9, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = icmp slt i64 %20, 12
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %25 = call i32 @fz_throw(i32* %23, i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %15
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = call i8* @read32(i8* %28)
  %30 = load %struct.info*, %struct.info** %6, align 8
  %31 = getelementptr inbounds %struct.info, %struct.info* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = call i8* @read32(i8* %33)
  %35 = load %struct.info*, %struct.info** %6, align 8
  %36 = getelementptr inbounds %struct.info, %struct.info* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 8
  %39 = call i8* @read32(i8* %38)
  %40 = load %struct.info*, %struct.info** %6, align 8
  %41 = getelementptr inbounds %struct.info, %struct.info* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %76

42:                                               ; preds = %4
  %43 = load %struct.info*, %struct.info** %6, align 8
  %44 = getelementptr inbounds %struct.info, %struct.info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BI_ALPHABITS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %42
  store i32 16, i32* %9, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = icmp slt i64 %53, 16
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %58 = call i32 @fz_throw(i32* %56, i32 %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %48
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = call i8* @read32(i8* %61)
  %63 = load %struct.info*, %struct.info** %6, align 8
  %64 = getelementptr inbounds %struct.info, %struct.info* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  %67 = call i8* @read32(i8* %66)
  %68 = load %struct.info*, %struct.info** %6, align 8
  %69 = getelementptr inbounds %struct.info, %struct.info* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 8
  %72 = call i8* @read32(i8* %71)
  %73 = load %struct.info*, %struct.info** %6, align 8
  %74 = getelementptr inbounds %struct.info, %struct.info* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %59, %42
  br label %76

76:                                               ; preds = %75, %26
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  ret i8* %80
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i8* @read32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
