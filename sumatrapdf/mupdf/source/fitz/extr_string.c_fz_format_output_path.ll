; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_string.c_fz_format_output_path.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_string.c_fz_format_output_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"path name buffer overflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_format_output_path(i32* %0, i8* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [40 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %29, %5
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i32, i32* %10, align 4
  %22 = srem i32 %21, 10
  %23 = add nsw i32 48, %22
  %24 = trunc i32 %23 to i8
  %25 = load i32, i32* %14, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %14, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 %27
  store i8 %24, i8* %28, align 1
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %10, align 4
  %31 = sdiv i32 %30, 10
  store i32 %31, i32* %10, align 4
  br label %17

32:                                               ; preds = %17
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 %34
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %9, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 37)
  store i8* %37, i8** %12, align 8
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %32
  %41 = load i8*, i8** %12, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %12, align 8
  br label %43

43:                                               ; preds = %55, %40
  %44 = load i8*, i8** %12, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sge i32 %46, 48
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i8*, i8** %12, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sle i32 %51, 57
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i1 [ false, %43 ], [ %52, %48 ]
  br i1 %54, label %55, label %64

55:                                               ; preds = %53
  %56 = load i32, i32* %16, align 4
  %57 = mul nsw i32 %56, 10
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %12, align 8
  %60 = load i8, i8* %58, align 1
  %61 = sext i8 %60 to i32
  %62 = sub nsw i32 %61, 48
  %63 = add nsw i32 %57, %62
  store i32 %63, i32* %16, align 4
  br label %43

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %32
  %66 = load i8*, i8** %12, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i8*, i8** %12, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 100
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %12, align 8
  br label %88

76:                                               ; preds = %68, %65
  %77 = load i8*, i8** %9, align 8
  %78 = call i8* @strrchr(i8* %77, i8 signext 46)
  store i8* %78, i8** %12, align 8
  store i8* %78, i8** %11, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %9, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  store i8* %86, i8** %12, align 8
  store i8* %86, i8** %11, align 8
  br label %87

87:                                               ; preds = %81, %76
  br label %88

88:                                               ; preds = %87, %73
  %89 = load i32, i32* %16, align 4
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 1, i32* %16, align 4
  br label %92

92:                                               ; preds = %91, %88
  br label %93

93:                                               ; preds = %102, %92
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %98, 40
  br label %100

100:                                              ; preds = %97, %93
  %101 = phi i1 [ false, %93 ], [ %99, %97 ]
  br i1 %101, label %102, label %107

102:                                              ; preds = %100
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 %105
  store i8 48, i8* %106, align 1
  br label %93

107:                                              ; preds = %100
  %108 = load i8*, i8** %11, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @strlen(i8* %117)
  %119 = add nsw i32 %116, %118
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %8, align 8
  %122 = icmp uge i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %107
  %124 = load i32*, i32** %6, align 8
  %125 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %126 = call i32 @fz_throw(i32* %124, i32 %125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %127

127:                                              ; preds = %123, %107
  %128 = load i8*, i8** %7, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @memcpy(i8* %128, i8* %129, i32 %130)
  br label %132

132:                                              ; preds = %135, %127
  %133 = load i32, i32* %14, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = load i8*, i8** %7, align 8
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %15, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8, i8* %141, i64 %144
  store i8 %140, i8* %145, align 1
  br label %132

146:                                              ; preds = %132
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8*, i8** %12, align 8
  %152 = load i64, i64* %8, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = sub i64 %152, %154
  %156 = call i32 @fz_strlcpy(i8* %150, i8* %151, i64 %155)
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fz_strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
