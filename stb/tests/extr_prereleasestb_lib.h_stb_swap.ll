; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_swap.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stb_swap(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %71

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %15, 4
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 4
  br label %71

29:                                               ; preds = %14
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i8*, i8** %4, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = bitcast i8* %39 to i32*
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = bitcast i8* %42 to i32*
  store i32 %41, i32* %43, align 4
  br label %71

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %49, %45
  %47 = load i64, i64* %6, align 8
  %48 = icmp ugt i64 %47, 256
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i8*, i8** %4, align 8
  %51 = load i8*, i8** %5, align 8
  call void @stb_swap(i8* %50, i8* %51, i64 256)
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 256
  store i8* %53, i8** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 256
  store i8* %55, i8** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = sub i64 %56, 256
  store i64 %57, i64* %6, align 8
  br label %46

58:                                               ; preds = %46
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @memcpy(i8* %59, i8* %60, i64 %61)
  %63 = load i8*, i8** %4, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @memcpy(i8* %63, i8* %64, i64 %65)
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @memcpy(i8* %67, i8* %68, i64 %69)
  br label %71

71:                                               ; preds = %58, %32, %17, %13
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
