; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/Strn/extr_Strnpcpy.c_Strnpcpy.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/Strn/extr_Strnpcpy.c_Strnpcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Strnpcpy(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %9, align 8
  store i64 1, i64* %12, align 8
  br label %18

18:                                               ; preds = %39, %16
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %9, align 8
  %25 = load i8, i8* %23, align 1
  store i8 %25, i8* %10, align 1
  %26 = load i8, i8* %10, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %11, align 8
  %31 = load i8, i8* %10, align 1
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %8, align 8
  store i8 %31, i8* %32, align 1
  %34 = load i8*, i8** %11, align 8
  store i8* %34, i8** %4, align 8
  br label %49

35:                                               ; preds = %22
  %36 = load i8, i8* %10, align 1
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %8, align 8
  store i8 %36, i8* %37, align 1
  br label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %12, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %12, align 8
  br label %18

42:                                               ; preds = %18
  %43 = load i8*, i8** %8, align 8
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %8, align 8
  store i8* %44, i8** %4, align 8
  br label %49

45:                                               ; preds = %3
  %46 = load i8*, i8** %8, align 8
  store i8 0, i8* %46, align 1
  br label %47

47:                                               ; preds = %45
  %48 = load i8*, i8** %8, align 8
  store i8* %48, i8** %4, align 8
  br label %49

49:                                               ; preds = %47, %42, %29
  %50 = load i8*, i8** %4, align 8
  ret i8* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
