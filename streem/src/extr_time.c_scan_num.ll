; ModuleID = '/home/carl/AnghaBench/streem/src/extr_time.c_scan_num.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_time.c_scan_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @scan_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_num(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ult i8* %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @scan_digit(i8 signext %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 9
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = load i8**, i8*** %4, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %42

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = load i8**, i8*** %4, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %42

31:                                               ; preds = %15
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 10, %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %7, align 4
  br label %11

38:                                               ; preds = %11
  %39 = load i8*, i8** %6, align 8
  %40 = load i8**, i8*** %4, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %27, %26
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @scan_digit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
