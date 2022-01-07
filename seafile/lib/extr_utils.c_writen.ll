; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_utils.c_writen.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_utils.c_writen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @writen(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %10, align 8
  %12 = load i64, i64* %7, align 8
  store i64 %12, i64* %8, align 8
  br label %13

13:                                               ; preds = %32, %3
  %14 = load i64, i64* %8, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @write(i32 %17, i8* %18, i64 %19)
  store i64 %20, i64* %9, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load i64, i64* %9, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EINTR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i64 0, i64* %9, align 8
  br label %31

30:                                               ; preds = %25, %22
  store i64 -1, i64* %4, align 8
  br label %41

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %8, align 8
  %35 = sub i64 %34, %33
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %10, align 8
  br label %13

39:                                               ; preds = %13
  %40 = load i64, i64* %7, align 8
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %39, %30
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local i64 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
