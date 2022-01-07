; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encode-basic.c_arc4_write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encode-basic.c_arc4_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc4 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i64)* @arc4_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc4_write(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.arc4*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.arc4*
  store %struct.arc4* %14, %struct.arc4** %9, align 8
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %10, align 8
  br label %16

16:                                               ; preds = %25, %4
  %17 = load i64, i64* %8, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %16
  %20 = load i64, i64* %8, align 8
  %21 = icmp ugt i64 %20, 256
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %25

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i64 [ 256, %22 ], [ %24, %23 ]
  store i64 %26, i64* %12, align 8
  %27 = load %struct.arc4*, %struct.arc4** %9, align 8
  %28 = getelementptr inbounds %struct.arc4, %struct.arc4* %27, i32 0, i32 1
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @fz_arc4_encrypt(i32* %28, i8* %29, i8* %30, i64 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.arc4*, %struct.arc4** %9, align 8
  %35 = getelementptr inbounds %struct.arc4, %struct.arc4* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @fz_write_data(i32* %33, i32 %36, i8* %37, i64 %38)
  %40 = load i64, i64* %12, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 %40
  store i8* %42, i8** %10, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub i64 %44, %43
  store i64 %45, i64* %8, align 8
  br label %16

46:                                               ; preds = %16
  ret void
}

declare dso_local i32 @fz_arc4_encrypt(i32*, i8*, i8*, i64) #1

declare dso_local i32 @fz_write_data(i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
