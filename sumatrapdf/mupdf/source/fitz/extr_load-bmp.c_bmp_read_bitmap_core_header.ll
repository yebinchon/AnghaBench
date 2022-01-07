; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-bmp.c_bmp_read_bitmap_core_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-bmp.c_bmp_read_bitmap_core_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i32, i64, i32, i8*, i8*, i8* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unsupported core header size in bmp image\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"premature end in bitmap core header in bmp image\00", align 1
@BI_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.info*, i8*, i8*)* @bmp_read_bitmap_core_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bmp_read_bitmap_core_header(i32* %0, %struct.info* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.info* %1, %struct.info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = call i32 @read32(i8* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 12
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %18 = call i32 @fz_throw(i32* %16, i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sge i32 %20, 12
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = icmp slt i64 %27, 12
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %32 = call i32 @fz_throw(i32* %30, i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %22
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 4
  %36 = call i8* @read16(i8* %35)
  %37 = load %struct.info*, %struct.info** %6, align 8
  %38 = getelementptr inbounds %struct.info, %struct.info* %37, i32 0, i32 6
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 6
  %41 = call i8* @read16(i8* %40)
  %42 = load %struct.info*, %struct.info** %6, align 8
  %43 = getelementptr inbounds %struct.info, %struct.info* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 10
  %46 = call i8* @read16(i8* %45)
  %47 = load %struct.info*, %struct.info** %6, align 8
  %48 = getelementptr inbounds %struct.info, %struct.info* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %33, %19
  %50 = load %struct.info*, %struct.info** %6, align 8
  %51 = getelementptr inbounds %struct.info, %struct.info* %50, i32 0, i32 0
  store i32 2835, i32* %51, align 8
  %52 = load %struct.info*, %struct.info** %6, align 8
  %53 = getelementptr inbounds %struct.info, %struct.info* %52, i32 0, i32 1
  store i32 2835, i32* %53, align 4
  %54 = load i32, i32* @BI_RGB, align 4
  %55 = load %struct.info*, %struct.info** %6, align 8
  %56 = getelementptr inbounds %struct.info, %struct.info* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.info*, %struct.info** %6, align 8
  %58 = getelementptr inbounds %struct.info, %struct.info* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  ret i8* %62
}

declare dso_local i32 @read32(i8*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i8* @read16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
