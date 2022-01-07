; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_prefix_codefence.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_prefix_codefence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @prefix_codefence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prefix_codefence(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ult i64 %9, 3
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %90

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %18, label %39

18:                                               ; preds = %12
  %19 = load i64, i64* %6, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %6, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %34, %26
  br label %38

38:                                               ; preds = %37, %18
  br label %39

39:                                               ; preds = %38, %12
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 2
  %42 = load i64, i64* %5, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %58, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 126
  br i1 %50, label %59, label %51

51:                                               ; preds = %44
  %52 = load i8*, i8** %4, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 96
  br i1 %57, label %59, label %58

58:                                               ; preds = %51, %39
  store i64 0, i64* %3, align 8
  br label %90

59:                                               ; preds = %51, %44
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %8, align 1
  br label %64

64:                                               ; preds = %79, %59
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i8*, i8** %4, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = load i8, i8* %8, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %73, %75
  br label %77

77:                                               ; preds = %68, %64
  %78 = phi i1 [ false, %64 ], [ %76, %68 ]
  br i1 %78, label %79, label %84

79:                                               ; preds = %77
  %80 = load i64, i64* %7, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %6, align 8
  br label %64

84:                                               ; preds = %77
  %85 = load i64, i64* %7, align 8
  %86 = icmp ult i64 %85, 3
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i64 0, i64* %3, align 8
  br label %90

88:                                               ; preds = %84
  %89 = load i64, i64* %6, align 8
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %88, %87, %58, %11
  %91 = load i64, i64* %3, align 8
  ret i64 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
