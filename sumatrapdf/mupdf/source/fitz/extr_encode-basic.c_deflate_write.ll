; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encode-basic.c_deflate_write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encode-basic.c_deflate_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deflate = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i8*, i32* }

@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"zlib compression failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i64)* @deflate_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deflate_write(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.deflate*, align 8
  %10 = alloca [32768 x i8], align 16
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.deflate*
  store %struct.deflate* %13, %struct.deflate** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.deflate*, %struct.deflate** %9, align 8
  %17 = getelementptr inbounds %struct.deflate, %struct.deflate* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store i32* %15, i32** %18, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.deflate*, %struct.deflate** %9, align 8
  %21 = getelementptr inbounds %struct.deflate, %struct.deflate* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  br label %23

23:                                               ; preds = %64, %4
  %24 = getelementptr inbounds [32768 x i8], [32768 x i8]* %10, i64 0, i64 0
  %25 = load %struct.deflate*, %struct.deflate** %9, align 8
  %26 = getelementptr inbounds %struct.deflate, %struct.deflate* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i8* %24, i8** %27, align 8
  %28 = load %struct.deflate*, %struct.deflate** %9, align 8
  %29 = getelementptr inbounds %struct.deflate, %struct.deflate* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 32768, i32* %30, align 8
  %31 = load %struct.deflate*, %struct.deflate** %9, align 8
  %32 = getelementptr inbounds %struct.deflate, %struct.deflate* %31, i32 0, i32 0
  %33 = load i32, i32* @Z_NO_FLUSH, align 4
  %34 = call i32 @deflate(%struct.TYPE_2__* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @Z_OK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %23
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @fz_throw(i32* %39, i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %23
  %44 = load %struct.deflate*, %struct.deflate** %9, align 8
  %45 = getelementptr inbounds %struct.deflate, %struct.deflate* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.deflate*, %struct.deflate** %9, align 8
  %52 = getelementptr inbounds %struct.deflate, %struct.deflate* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.deflate*, %struct.deflate** %9, align 8
  %55 = getelementptr inbounds %struct.deflate, %struct.deflate* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.deflate*, %struct.deflate** %9, align 8
  %59 = getelementptr inbounds %struct.deflate, %struct.deflate* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @fz_write_data(i32* %50, i32 %53, i8* %57, i32 %61)
  br label %63

63:                                               ; preds = %49, %43
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.deflate*, %struct.deflate** %9, align 8
  %66 = getelementptr inbounds %struct.deflate, %struct.deflate* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %23, label %70

70:                                               ; preds = %64
  ret void
}

declare dso_local i32 @deflate(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i32) #1

declare dso_local i32 @fz_write_data(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
