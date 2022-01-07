; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c_my_ltoa.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c_my_ltoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_ltoa(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  store i8* %7, i8** %6, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %6, align 8
  store i8 48, i8* %11, align 1
  br label %30

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %26, %13
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i64, i64* %3, align 8
  %19 = srem i64 %18, 10
  %20 = trunc i64 %19 to i8
  %21 = sext i8 %20 to i32
  %22 = add nsw i32 %21, 48
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %6, align 8
  store i8 %23, i8* %24, align 1
  br label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %3, align 8
  %28 = sdiv i64 %27, 10
  store i64 %28, i64* %3, align 8
  br label %14

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29, %10
  br label %31

31:                                               ; preds = %35, %30
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %34 = icmp ugt i8* %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 -1
  store i8* %37, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %4, align 8
  store i8 %38, i8* %39, align 1
  br label %31

41:                                               ; preds = %31
  %42 = load i8*, i8** %4, align 8
  store i8 0, i8* %42, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
