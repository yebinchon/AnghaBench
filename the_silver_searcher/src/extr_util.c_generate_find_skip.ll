; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_generate_find_skip.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_generate_find_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_find_skip(i8* %0, i64 %1, i64** %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64** %2, i64*** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* %6, align 8
  %14 = mul i64 %13, 8
  %15 = call i64* @ag_malloc(i64 %14)
  store i64* %15, i64** %11, align 8
  %16 = load i64*, i64** %11, align 8
  %17 = load i64**, i64*** %7, align 8
  store i64* %16, i64** %17, align 8
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %42, %4
  %21 = load i64, i64* %9, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @is_prefix(i8* %24, i64 %25, i64 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* %9, align 8
  store i64 %31, i64* %12, align 8
  br label %32

32:                                               ; preds = %30, %23
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = sub i64 %34, %35
  %37 = add i64 %33, %36
  %38 = load i64*, i64** %11, align 8
  %39 = load i64, i64* %9, align 8
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  store i64 %37, i64* %41, align 8
  br label %42

42:                                               ; preds = %32
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %9, align 8
  br label %20

45:                                               ; preds = %20
  store i64 0, i64* %9, align 8
  br label %46

46:                                               ; preds = %86, %45
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %89

50:                                               ; preds = %46
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @suffix_len(i8* %51, i64 %52, i64 %53, i32 %54)
  store i64 %55, i64* %10, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = sub i64 %57, %58
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = sub i64 %64, 1
  %66 = load i64, i64* %10, align 8
  %67 = sub i64 %65, %66
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %62, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %50
  %73 = load i64, i64* %6, align 8
  %74 = sub i64 %73, 1
  %75 = load i64, i64* %9, align 8
  %76 = sub i64 %74, %75
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %76, %77
  %79 = load i64*, i64** %11, align 8
  %80 = load i64, i64* %6, align 8
  %81 = sub i64 %80, 1
  %82 = load i64, i64* %10, align 8
  %83 = sub i64 %81, %82
  %84 = getelementptr inbounds i64, i64* %79, i64 %83
  store i64 %78, i64* %84, align 8
  br label %85

85:                                               ; preds = %72, %50
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %9, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %9, align 8
  br label %46

89:                                               ; preds = %46
  ret void
}

declare dso_local i64* @ag_malloc(i64) #1

declare dso_local i64 @is_prefix(i8*, i64, i64, i32) #1

declare dso_local i64 @suffix_len(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
