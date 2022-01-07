; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_crypt-arc4.c_fz_arc4_encrypt.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_crypt-arc4.c_fz_arc4_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_arc4_encrypt(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %30, %4
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = call zeroext i8 @fz_arc4_next(i32* %16)
  store i8 %17, i8* %10, align 1
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* %10, align 1
  %24 = zext i8 %23 to i32
  %25 = xor i32 %22, %24
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8 %26, i8* %29, align 1
  br label %30

30:                                               ; preds = %15
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %9, align 8
  br label %11

33:                                               ; preds = %11
  ret void
}

declare dso_local zeroext i8 @fz_arc4_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
