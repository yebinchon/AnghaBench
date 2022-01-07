; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_open_crypt_imp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_open_crypt_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@PDF_CRYPT_RC4 = common dso_local global i64 0, align 8
@PDF_CRYPT_AESV2 = common dso_local global i64 0, align 8
@PDF_CRYPT_AESV3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, %struct.TYPE_4__*, i32, i32)* @pdf_open_crypt_imp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pdf_open_crypt_imp(i32* %0, i32* %1, i32* %2, %struct.TYPE_4__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [32 x i8], align 16
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %21 = call i32 @pdf_compute_object_key(i32* %16, %struct.TYPE_4__* %17, i32 %18, i32 %19, i8* %20, i32 32)
  store i32 %21, i32* %15, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PDF_CRYPT_RC4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %6
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %31 = load i32, i32* %15, align 4
  %32 = call i32* @fz_open_arc4(i32* %28, i32* %29, i8* %30, i32 %31)
  store i32* %32, i32** %7, align 8
  br label %55

33:                                               ; preds = %6
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PDF_CRYPT_AESV2, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PDF_CRYPT_AESV3, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39, %33
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %49 = load i32, i32* %15, align 4
  %50 = call i32* @fz_open_aesd(i32* %46, i32* %47, i8* %48, i32 %49)
  store i32* %50, i32** %7, align 8
  br label %55

51:                                               ; preds = %39
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32* @fz_keep_stream(i32* %52, i32* %53)
  store i32* %54, i32** %7, align 8
  br label %55

55:                                               ; preds = %51, %45, %27
  %56 = load i32*, i32** %7, align 8
  ret i32* %56
}

declare dso_local i32 @pdf_compute_object_key(i32*, %struct.TYPE_4__*, i32, i32, i8*, i32) #1

declare dso_local i32* @fz_open_arc4(i32*, i32*, i8*, i32) #1

declare dso_local i32* @fz_open_aesd(i32*, i32*, i8*, i32) #1

declare dso_local i32* @fz_keep_stream(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
