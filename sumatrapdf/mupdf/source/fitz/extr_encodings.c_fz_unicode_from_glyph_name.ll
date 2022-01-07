; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encodings.c_fz_unicode_from_glyph_name.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encodings.c_fz_unicode_from_glyph_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@single_name_list = common dso_local global i32* null, align 8
@single_code_list = common dso_local global i32* null, align 8
@FZ_REPLACEMENT_CHARACTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_unicode_from_glyph_name(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32*, i32** @single_name_list, align 8
  %12 = call i32 @nelem(i32* %11)
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @fz_strlcpy(i8* %14, i8* %15, i32 64)
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %18 = call i8* @strchr(i8* %17, i8 signext 46)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %23, align 1
  br label %24

24:                                               ; preds = %21, %1
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %26 = call i8* @strchr(i8* %25, i8 signext 95)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %31, align 1
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %67, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %9, align 4
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %43 = load i32*, i32** @single_name_list, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strcmp(i8* %42, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %67

54:                                               ; preds = %37
  %55 = load i32, i32* %10, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %66

60:                                               ; preds = %54
  %61 = load i32*, i32** @single_code_list, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %2, align 4
  br label %129

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %51
  br label %33

68:                                               ; preds = %33
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %70 = load i8, i8* %69, align 16
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 117
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 110
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 2
  %80 = load i8, i8* %79, align 2
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 105
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %85 = getelementptr inbounds i8, i8* %84, i64 3
  %86 = call i32 @strtol(i8* %85, i32* null, i32 16)
  store i32 %86, i32* %8, align 4
  br label %117

87:                                               ; preds = %78, %73, %68
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %89 = load i8, i8* %88, align 16
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 117
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = call i32 @strtol(i8* %94, i32* null, i32 16)
  store i32 %95, i32* %8, align 4
  br label %116

96:                                               ; preds = %87
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %98 = load i8, i8* %97, align 16
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 97
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 2
  %108 = load i8, i8* %107, align 2
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = call i32 @strtol(i8* %113, i32* null, i32 10)
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %111, %106, %101, %96
  br label %116

116:                                              ; preds = %115, %92
  br label %117

117:                                              ; preds = %116, %83
  %118 = load i32, i32* %8, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32, i32* %8, align 4
  %122 = icmp sle i32 %121, 1114111
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, i32* %8, align 4
  br label %127

125:                                              ; preds = %120, %117
  %126 = load i32, i32* @FZ_REPLACEMENT_CHARACTER, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %60
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @nelem(i32*) #1

declare dso_local i32 @fz_strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
