; ModuleID = '/home/carl/AnghaBench/streem/src/extr_node.c_string_escape.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_node.c_string_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @string_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_escape(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %3, align 8
  store i8* %15, i8** %7, align 8
  br label %16

16:                                               ; preds = %121, %2
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %122

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %115 [
    i32 92, label %24
  ]

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %121

31:                                               ; preds = %24
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %107 [
    i32 110, label %35
    i32 114, label %38
    i32 116, label %41
    i32 101, label %44
    i32 48, label %47
    i32 120, label %50
  ]

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  store i8 10, i8* %36, align 1
  br label %112

38:                                               ; preds = %31
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  store i8 13, i8* %39, align 1
  br label %112

41:                                               ; preds = %31
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %7, align 8
  store i8 9, i8* %42, align 1
  br label %112

44:                                               ; preds = %31
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %7, align 8
  store i8 27, i8* %45, align 1
  br label %112

47:                                               ; preds = %31
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  store i8 0, i8* %48, align 1
  br label %112

50:                                               ; preds = %31
  store i8 0, i8* %8, align 1
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 3
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %98, %50
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = icmp ult i8* %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = icmp ult i8* %60, %61
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i1 [ false, %55 ], [ %62, %59 ]
  br i1 %64, label %65, label %101

65:                                               ; preds = %63
  %66 = load i8*, i8** %5, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  switch i32 %68, label %96 [
    i32 48, label %69
    i32 49, label %69
    i32 50, label %69
    i32 51, label %69
    i32 52, label %69
    i32 53, label %69
    i32 54, label %69
    i32 55, label %69
    i32 56, label %69
    i32 57, label %69
    i32 97, label %82
    i32 98, label %82
    i32 99, label %82
    i32 100, label %82
    i32 101, label %82
    i32 102, label %82
  ]

69:                                               ; preds = %65, %65, %65, %65, %65, %65, %65, %65, %65, %65
  %70 = load i8, i8* %8, align 1
  %71 = zext i8 %70 to i32
  %72 = mul nsw i32 %71, 16
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %8, align 1
  %74 = load i8*, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = sub nsw i32 %76, 48
  %78 = load i8, i8* %8, align 1
  %79 = zext i8 %78 to i32
  %80 = add nsw i32 %79, %77
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %8, align 1
  br label %98

82:                                               ; preds = %65, %65, %65, %65, %65, %65
  %83 = load i8, i8* %8, align 1
  %84 = zext i8 %83 to i32
  %85 = mul nsw i32 %84, 16
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %8, align 1
  %87 = load i8*, i8** %5, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = sub nsw i32 %89, 97
  %91 = add nsw i32 %90, 10
  %92 = load i8, i8* %8, align 1
  %93 = zext i8 %92 to i32
  %94 = add nsw i32 %93, %91
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %8, align 1
  br label %98

96:                                               ; preds = %65
  %97 = load i8*, i8** %5, align 8
  store i8* %97, i8** %9, align 8
  br label %98

98:                                               ; preds = %96, %82, %69
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %5, align 8
  br label %55

101:                                              ; preds = %63
  %102 = load i8, i8* %8, align 1
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %7, align 8
  store i8 %102, i8* %103, align 1
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 -1
  store i8* %106, i8** %5, align 8
  br label %112

107:                                              ; preds = %31
  %108 = load i8*, i8** %5, align 8
  %109 = load i8, i8* %108, align 1
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %7, align 8
  store i8 %109, i8* %110, align 1
  br label %112

112:                                              ; preds = %107, %101, %47, %44, %41, %38, %35
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %5, align 8
  br label %121

115:                                              ; preds = %20
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %5, align 8
  %118 = load i8, i8* %116, align 1
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %7, align 8
  store i8 %118, i8* %119, align 1
  br label %121

121:                                              ; preds = %115, %112, %30
  br label %16

122:                                              ; preds = %16
  %123 = load i8*, i8** %7, align 8
  %124 = load i8*, i8** %3, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  ret i32 %128
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
