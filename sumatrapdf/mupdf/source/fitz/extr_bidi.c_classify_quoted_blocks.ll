; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bidi.c_classify_quoted_blocks.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bidi.c_classify_quoted_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BDI_PDF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64)* @classify_quoted_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @classify_quoted_blocks(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %11, align 4
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %34, %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @direction_from_type(i32 %26)
  switch i32 %27, label %32 [
    i32 129, label %28
    i32 128, label %30
  ]

28:                                               ; preds = %22
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %10, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %11, align 4
  br label %33

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %30, %28
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %18

37:                                               ; preds = %18
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40, %37
  br label %121

44:                                               ; preds = %40
  store i64 0, i64* %7, align 8
  br label %45

45:                                               ; preds = %118, %44
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %121

49:                                               ; preds = %45
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 34
  br i1 %55, label %56, label %117

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @BDI_PDF, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %59
  br label %116

70:                                               ; preds = %56
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %8, align 4
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %12, align 8
  br label %75

75:                                               ; preds = %112, %70
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i8*, i8** %4, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 34
  br label %89

89:                                               ; preds = %82, %78, %75
  %90 = phi i1 [ false, %78 ], [ false, %75 ], [ %88, %82 ]
  br i1 %90, label %91, label %115

91:                                               ; preds = %89
  %92 = load i32*, i32** %5, align 8
  %93 = load i64, i64* %12, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %110 [
    i32 130, label %96
    i32 132, label %96
    i32 133, label %98
    i32 134, label %98
    i32 131, label %104
    i32 135, label %104
  ]

96:                                               ; preds = %91, %91
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %13, align 4
  br label %111

98:                                               ; preds = %91, %91
  %99 = load i32*, i32** %5, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32 132, i32* %101, align 4
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %13, align 4
  br label %111

104:                                              ; preds = %91, %91
  %105 = load i32*, i32** %5, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 130, i32* %107, align 4
  %108 = load i32, i32* @TRUE, align 4
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* @TRUE, align 4
  store i32 %109, i32* %13, align 4
  br label %111

110:                                              ; preds = %91
  br label %111

111:                                              ; preds = %110, %104, %98, %96
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %12, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %12, align 8
  br label %75

115:                                              ; preds = %89
  br label %116

116:                                              ; preds = %115, %69
  br label %117

117:                                              ; preds = %116, %49
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %7, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %7, align 8
  br label %45

121:                                              ; preds = %43, %45
  ret void
}

declare dso_local i32 @direction_from_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
