; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_boyer_moore_strnstr.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_boyer_moore_strnstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @boyer_moore_strnstr(i8* %0, i8* %1, i64 %2, i64 %3, i64* %4, i64* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i64, i64* %12, align 8
  %19 = sub i64 %18, 1
  store i64 %19, i64* %17, align 8
  br label %20

20:                                               ; preds = %70, %7
  %21 = load i64, i64* %17, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %86

24:                                               ; preds = %20
  %25 = load i64, i64* %12, align 8
  %26 = sub i64 %25, 1
  store i64 %26, i64* %16, align 8
  br label %27

27:                                               ; preds = %57, %24
  %28 = load i64, i64* %16, align 8
  %29 = icmp uge i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %17, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = call signext i8 @tolower(i8 signext %37)
  %39 = sext i8 %38 to i32
  br label %46

40:                                               ; preds = %30
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %17, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  br label %46

46:                                               ; preds = %40, %33
  %47 = phi i32 [ %39, %33 ], [ %45, %40 ]
  %48 = load i8*, i8** %10, align 8
  %49 = load i64, i64* %16, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %47, %52
  br label %54

54:                                               ; preds = %46, %27
  %55 = phi i1 [ false, %27 ], [ %53, %46 ]
  br i1 %55, label %56, label %62

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %17, align 8
  %59 = add i64 %58, -1
  store i64 %59, i64* %17, align 8
  %60 = load i64, i64* %16, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %16, align 8
  br label %27

62:                                               ; preds = %54
  %63 = load i64, i64* %16, align 8
  %64 = icmp ult i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i8*, i8** %9, align 8
  %67 = load i64, i64* %17, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  store i8* %69, i8** %8, align 8
  br label %87

70:                                               ; preds = %62
  %71 = load i64*, i64** %13, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i64, i64* %17, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds i64, i64* %71, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %14, align 8
  %80 = load i64, i64* %16, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @ag_max(i64 %78, i64 %82)
  %84 = load i64, i64* %17, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %17, align 8
  br label %20

86:                                               ; preds = %20
  store i8* null, i8** %8, align 8
  br label %87

87:                                               ; preds = %86, %65
  %88 = load i8*, i8** %8, align 8
  ret i8* %88
}

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i64 @ag_max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
