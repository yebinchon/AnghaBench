; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_generate_alpha_skip.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_generate_alpha_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_alpha_skip(i8* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %18, %4
  %11 = load i64, i64* %9, align 8
  %12 = icmp ult i64 %11, 256
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load i64, i64* %6, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  store i64 %14, i64* %17, align 8
  br label %18

18:                                               ; preds = %13
  %19 = load i64, i64* %9, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %9, align 8
  br label %10

21:                                               ; preds = %10
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %6, align 8
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %68, %21
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = sub i64 %32, %33
  %35 = load i64*, i64** %7, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i64, i64* %35, i64 %40
  store i64 %34, i64* %41, align 8
  br label %67

42:                                               ; preds = %28
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %9, align 8
  %45 = sub i64 %43, %44
  %46 = load i64*, i64** %7, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @tolower(i8 signext %50)
  %52 = trunc i64 %51 to i8
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds i64, i64* %46, i64 %53
  store i64 %45, i64* %54, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %9, align 8
  %57 = sub i64 %55, %56
  %58 = load i64*, i64** %7, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = call i64 @toupper(i8 signext %62)
  %64 = trunc i64 %63 to i8
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds i64, i64* %58, i64 %65
  store i64 %57, i64* %66, align 8
  br label %67

67:                                               ; preds = %42, %31
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %9, align 8
  br label %24

71:                                               ; preds = %24
  ret void
}

declare dso_local i64 @tolower(i8 signext) #1

declare dso_local i64 @toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
