; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_writer.c_fz_copy_option.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_writer.c_fz_copy_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_copy_option(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i8*, i8** %8, align 8
  store i8 0, i8* %20, align 1
  br label %21

21:                                               ; preds = %19, %16
  store i32 0, i32* %5, align 4
  br label %79

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %35, %22
  %24 = load i8*, i8** %10, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 44
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8*, i8** %10, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ false, %23 ], [ %32, %28 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %10, align 8
  br label %23

38:                                               ; preds = %33
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %11, align 8
  br label %51

51:                                               ; preds = %49, %38
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @memcpy(i8* %52, i8* %53, i64 %54)
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %11, align 8
  %65 = sub i64 %63, %64
  %66 = call i32 @memset(i8* %62, i32 0, i64 %65)
  br label %67

67:                                               ; preds = %59, %51
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %9, align 8
  %70 = icmp uge i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %9, align 8
  %74 = sub i64 %72, %73
  br label %76

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i64 [ %74, %71 ], [ 0, %75 ]
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %76, %21
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
