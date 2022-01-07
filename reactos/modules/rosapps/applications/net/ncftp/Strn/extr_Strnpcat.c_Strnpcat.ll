; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/Strn/extr_Strnpcat.c_Strnpcat.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/Strn/extr_Strnpcat.c_Strnpcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Strnpcat(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = sub i64 %18, 1
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %6, align 8
  store i8* %25, i8** %10, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %49, %21
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %10, align 8
  %35 = load i8, i8* %33, align 1
  store i8 %35, i8* %11, align 1
  %36 = load i8, i8* %11, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i8*, i8** %9, align 8
  store i8* %40, i8** %12, align 8
  %41 = load i8, i8* %11, align 1
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %9, align 8
  store i8 %41, i8* %42, align 1
  %44 = load i8*, i8** %12, align 8
  store i8* %44, i8** %4, align 8
  br label %57

45:                                               ; preds = %32
  %46 = load i8, i8* %11, align 1
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %9, align 8
  store i8 %46, i8* %47, align 1
  br label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %28

52:                                               ; preds = %28
  %53 = load i8*, i8** %9, align 8
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %9, align 8
  store i8* %54, i8** %4, align 8
  br label %57

55:                                               ; preds = %15, %3
  %56 = load i8*, i8** %5, align 8
  store i8* %56, i8** %4, align 8
  br label %57

57:                                               ; preds = %55, %52, %39
  %58 = load i8*, i8** %4, align 8
  ret i8* %58
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
