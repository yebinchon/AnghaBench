; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c___ParseLocaleString.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c___ParseLocaleString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"_\00", align 1
@MAX_LANG_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@MAX_CTRY_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@MAX_CP_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ParseLocaleString(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %160

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strcspn(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %21, i64* %11, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 95
  br i1 %27, label %28, label %49

28:                                               ; preds = %19
  %29 = load i64, i64* %11, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @MAX_LANG_LEN, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %28
  store i32 -1, i32* %5, align 4
  br label %160

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* @MAX_LANG_LEN, align 8
  %39 = add i64 %38, 1
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @_STLP_STRNCPY(i8* %37, i64 %39, i8* %40, i64 %41)
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %43, 1
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  store i8* %46, i8** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %36, %19
  store i64 -1, i64* %11, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @strcspn(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 %51, i64* %12, align 8
  br label %52

52:                                               ; preds = %59, %49
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 46
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load i64, i64* %12, align 8
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %12, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = call i64 @strcspn(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %12, align 8
  br label %52

69:                                               ; preds = %52
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, -1
  br i1 %71, label %72, label %119

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %72
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @MAX_LANG_LEN, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 -1, i32* %5, align 4
  br label %160

80:                                               ; preds = %75
  %81 = load i64, i64* %11, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %93

86:                                               ; preds = %80
  %87 = load i8*, i8** %7, align 8
  %88 = load i64, i64* @MAX_LANG_LEN, align 8
  %89 = add i64 %88, 1
  %90 = load i8*, i8** %6, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @_STLP_STRNCPY(i8* %87, i64 %89, i8* %90, i64 %91)
  br label %93

93:                                               ; preds = %86, %83
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %112

96:                                               ; preds = %72
  %97 = load i64, i64* %11, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 -1, i32* %5, align 4
  br label %160

100:                                              ; preds = %96
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* @MAX_CTRY_LEN, align 8
  %103 = icmp ugt i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 -1, i32* %5, align 4
  br label %160

105:                                              ; preds = %100
  %106 = load i8*, i8** %8, align 8
  %107 = load i64, i64* @MAX_CTRY_LEN, align 8
  %108 = add i64 %107, 1
  %109 = load i8*, i8** %6, align 8
  %110 = load i64, i64* %11, align 8
  %111 = call i32 @_STLP_STRNCPY(i8* %106, i64 %108, i8* %109, i64 %110)
  br label %112

112:                                              ; preds = %105, %93
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  %115 = load i64, i64* %11, align 8
  %116 = add i64 %115, 1
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 %116
  store i8* %118, i8** %6, align 8
  br label %119

119:                                              ; preds = %112, %69
  %120 = load i8*, i8** %6, align 8
  %121 = call i64 @strcspn(i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i64 %121, i64* %11, align 8
  %122 = load i32, i32* %10, align 4
  switch i32 %122, label %147 [
    i32 0, label %123
    i32 1, label %135
  ]

123:                                              ; preds = %119
  %124 = load i64, i64* %11, align 8
  %125 = load i64, i64* @MAX_LANG_LEN, align 8
  %126 = icmp ugt i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 -1, i32* %5, align 4
  br label %160

128:                                              ; preds = %123
  %129 = load i8*, i8** %7, align 8
  %130 = load i64, i64* @MAX_LANG_LEN, align 8
  %131 = add i64 %130, 1
  %132 = load i8*, i8** %6, align 8
  %133 = load i64, i64* %11, align 8
  %134 = call i32 @_STLP_STRNCPY(i8* %129, i64 %131, i8* %132, i64 %133)
  br label %159

135:                                              ; preds = %119
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* @MAX_CTRY_LEN, align 8
  %138 = icmp ugt i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i32 -1, i32* %5, align 4
  br label %160

140:                                              ; preds = %135
  %141 = load i8*, i8** %8, align 8
  %142 = load i64, i64* @MAX_CTRY_LEN, align 8
  %143 = add i64 %142, 1
  %144 = load i8*, i8** %6, align 8
  %145 = load i64, i64* %11, align 8
  %146 = call i32 @_STLP_STRNCPY(i8* %141, i64 %143, i8* %144, i64 %145)
  br label %159

147:                                              ; preds = %119
  %148 = load i64, i64* %11, align 8
  %149 = load i64, i64* @MAX_CP_LEN, align 8
  %150 = icmp ugt i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i32 -1, i32* %5, align 4
  br label %160

152:                                              ; preds = %147
  %153 = load i8*, i8** %9, align 8
  %154 = load i64, i64* @MAX_CP_LEN, align 8
  %155 = add i64 %154, 1
  %156 = load i8*, i8** %6, align 8
  %157 = load i64, i64* %11, align 8
  %158 = call i32 @_STLP_STRNCPY(i8* %153, i64 %155, i8* %156, i64 %157)
  br label %159

159:                                              ; preds = %152, %140, %128
  store i32 0, i32* %5, align 4
  br label %160

160:                                              ; preds = %159, %151, %139, %127, %104, %99, %79, %35, %18
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @_STLP_STRNCPY(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
