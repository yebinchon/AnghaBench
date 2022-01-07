; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_is_image_filter.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_is_image_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCITTFaxDecode = common dso_local global i32 0, align 4
@CCF = common dso_local global i32 0, align 4
@DCTDecode = common dso_local global i32 0, align 4
@DCT = common dso_local global i32 0, align 4
@RunLengthDecode = common dso_local global i32 0, align 4
@RL = common dso_local global i32 0, align 4
@JBIG2Decode = common dso_local global i32 0, align 4
@JPXDecode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @is_image_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_image_filter(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @CCITTFaxDecode, align 4
  %5 = call i32* @PDF_NAME(i32 %4)
  %6 = icmp eq i32* %3, %5
  br i1 %6, label %42, label %7

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @CCF, align 4
  %10 = call i32* @PDF_NAME(i32 %9)
  %11 = icmp eq i32* %8, %10
  br i1 %11, label %42, label %12

12:                                               ; preds = %7
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @DCTDecode, align 4
  %15 = call i32* @PDF_NAME(i32 %14)
  %16 = icmp eq i32* %13, %15
  br i1 %16, label %42, label %17

17:                                               ; preds = %12
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @DCT, align 4
  %20 = call i32* @PDF_NAME(i32 %19)
  %21 = icmp eq i32* %18, %20
  br i1 %21, label %42, label %22

22:                                               ; preds = %17
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @RunLengthDecode, align 4
  %25 = call i32* @PDF_NAME(i32 %24)
  %26 = icmp eq i32* %23, %25
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @RL, align 4
  %30 = call i32* @PDF_NAME(i32 %29)
  %31 = icmp eq i32* %28, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @JBIG2Decode, align 4
  %35 = call i32* @PDF_NAME(i32 %34)
  %36 = icmp eq i32* %33, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @JPXDecode, align 4
  %40 = call i32* @PDF_NAME(i32 %39)
  %41 = icmp eq i32* %38, %40
  br label %42

42:                                               ; preds = %37, %32, %27, %22, %17, %12, %7, %1
  %43 = phi i1 [ true, %32 ], [ true, %27 ], [ true, %22 ], [ true, %17 ], [ true, %12 ], [ true, %7 ], [ true, %1 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  ret i32 %44
}

declare dso_local i32* @PDF_NAME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
