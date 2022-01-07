; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_prefix_oli.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_prefix_oli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @prefix_oli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prefix_oli(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 32
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %17, %10, %2
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 32
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %31, %24, %20
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %45, %38, %34
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp uge i64 %49, %50
  br i1 %51, label %66, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %4, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp slt i32 %57, 48
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp sgt i32 %64, 57
  br i1 %65, label %66, label %67

66:                                               ; preds = %59, %52, %48
  store i64 0, i64* %3, align 8
  br label %125

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %88, %67
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %5, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load i8*, i8** %4, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sge i32 %77, 48
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load i8*, i8** %4, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp sle i32 %84, 57
  br label %86

86:                                               ; preds = %79, %72, %68
  %87 = phi i1 [ false, %72 ], [ false, %68 ], [ %85, %79 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %6, align 8
  br label %68

91:                                               ; preds = %86
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, 1
  %94 = load i64, i64* %5, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %111, label %96

96:                                               ; preds = %91
  %97 = load i8*, i8** %4, align 8
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 46
  br i1 %102, label %111, label %103

103:                                              ; preds = %96
  %104 = load i8*, i8** %4, align 8
  %105 = load i64, i64* %6, align 8
  %106 = add i64 %105, 1
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 32
  br i1 %110, label %111, label %112

111:                                              ; preds = %103, %96, %91
  store i64 0, i64* %3, align 8
  br label %125

112:                                              ; preds = %103
  %113 = load i8*, i8** %4, align 8
  %114 = load i64, i64* %6, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i64, i64* %5, align 8
  %117 = load i64, i64* %6, align 8
  %118 = sub i64 %116, %117
  %119 = call i64 @is_next_headerline(i8* %115, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  store i64 0, i64* %3, align 8
  br label %125

122:                                              ; preds = %112
  %123 = load i64, i64* %6, align 8
  %124 = add i64 %123, 2
  store i64 %124, i64* %3, align 8
  br label %125

125:                                              ; preds = %122, %121, %111, %66
  %126 = load i64, i64* %3, align 8
  ret i64 %126
}

declare dso_local i64 @is_next_headerline(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
