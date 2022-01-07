; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/Util/7z/extr_7zMain.c_UIntToStr.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/Util/7z/extr_7zMain.c_UIntToStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32)* @UIntToStr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @UIntToStr(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %18, %3
  %10 = load i32, i32* %5, align 4
  %11 = urem i32 %10, 10
  %12 = add i32 48, %11
  %13 = trunc i32 %12 to i8
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %8, align 4
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 %16
  store i8 %13, i8* %17, align 1
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %5, align 4
  %20 = udiv i32 %19, 10
  store i32 %20, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %9, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %32, %22
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %4, align 8
  store i8 48, i8* %30, align 1
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  br label %26

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %44, %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  store i8 %41, i8* %42, align 1
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %36, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** %4, align 8
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %4, align 8
  ret i8* %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
