; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_is_hrule.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_is_hrule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @is_hrule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_hrule(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
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
  store i32 0, i32* %3, align 4
  br label %112

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
  br i1 %43, label %65, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 42
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  %52 = load i8*, i8** %4, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 45
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load i8*, i8** %4, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 95
  br i1 %64, label %65, label %66

65:                                               ; preds = %58, %39
  store i32 0, i32* %3, align 4
  br label %112

66:                                               ; preds = %58, %51, %44
  %67 = load i8*, i8** %4, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %8, align 1
  br label %71

71:                                               ; preds = %105, %66
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %5, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i8*, i8** %4, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 10
  br label %82

82:                                               ; preds = %75, %71
  %83 = phi i1 [ false, %71 ], [ %81, %75 ]
  br i1 %83, label %84, label %108

84:                                               ; preds = %82
  %85 = load i8*, i8** %4, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = load i8, i8* %8, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load i64, i64* %7, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %7, align 8
  br label %105

96:                                               ; preds = %84
  %97 = load i8*, i8** %4, align 8
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 32
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %112

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %93
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %6, align 8
  br label %71

108:                                              ; preds = %82
  %109 = load i64, i64* %7, align 8
  %110 = icmp uge i64 %109, 3
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %103, %65, %11
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
