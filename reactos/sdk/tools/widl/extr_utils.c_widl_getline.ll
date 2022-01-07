; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_utils.c_widl_getline.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_utils.c_widl_getline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @widl_getline(i8** %0, i64* %1, i32* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  store i64 64, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i8* @xmalloc(i64 %17)
  store i8* %18, i8** %7, align 8
  br label %19

19:                                               ; preds = %16, %3
  br label %20

20:                                               ; preds = %57, %19
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = sub i64 %24, %25
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @fgets(i8* %23, i64 %26, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %20
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = call i64 @strlen(i8* %33)
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %9, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %58

45:                                               ; preds = %30
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = sub i64 %47, 1
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i64, i64* %8, align 8
  %52 = mul i64 %51, 2
  store i64 %52, i64* %8, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i8* @xrealloc(i8* %53, i64 %54)
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %50, %45
  br label %57

57:                                               ; preds = %56
  br label %20

58:                                               ; preds = %44, %20
  %59 = load i8*, i8** %7, align 8
  %60 = load i8**, i8*** %4, align 8
  store i8* %59, i8** %60, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64*, i64** %5, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i64, i64* %9, align 8
  ret i64 %63
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @fgets(i8*, i64, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
