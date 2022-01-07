; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_text.c_fz_text_language_from_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_text.c_fz_text_language_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_LANG_UNSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"zh-Hant\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"zh-HK\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"zh-MO\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"zh-SG\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"zh-TW\00", align 1
@FZ_LANG_zh_Hant = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"zh-Hans\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"zh-CN\00", align 1
@FZ_LANG_zh_Hans = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_text_language_from_string(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @FZ_LANG_UNSET, align 4
  store i32 %8, i32* %2, align 4
  br label %174

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25, %21, %17, %13, %9
  %30 = load i32, i32* @FZ_LANG_zh_Hant, align 4
  store i32 %30, i32* %2, align 4
  br label %174

31:                                               ; preds = %25
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @FZ_LANG_zh_Hans, align 4
  store i32 %40, i32* %2, align 4
  br label %174

41:                                               ; preds = %35
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sge i32 %45, 97
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sle i32 %51, 122
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = sub nsw i32 %57, 97
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %81

60:                                               ; preds = %47, %41
  %61 = load i8*, i8** %3, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp sge i32 %64, 65
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %70, 90
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = sub nsw i32 %76, 65
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %80

79:                                               ; preds = %66, %60
  store i32 0, i32* %2, align 4
  br label %174

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %53
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp sge i32 %85, 97
  br i1 %86, label %87, label %103

87:                                               ; preds = %81
  %88 = load i8*, i8** %3, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp sle i32 %91, 122
  br i1 %92, label %93, label %103

93:                                               ; preds = %87
  %94 = load i8*, i8** %3, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = sub nsw i32 %97, 97
  %99 = add nsw i32 %98, 1
  %100 = mul nsw i32 27, %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %4, align 4
  br label %127

103:                                              ; preds = %87, %81
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp sge i32 %107, 65
  br i1 %108, label %109, label %125

109:                                              ; preds = %103
  %110 = load i8*, i8** %3, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp sle i32 %113, 90
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load i8*, i8** %3, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = sub nsw i32 %119, 65
  %121 = add nsw i32 %120, 1
  %122 = mul nsw i32 27, %121
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %4, align 4
  br label %126

125:                                              ; preds = %109, %103
  store i32 0, i32* %2, align 4
  br label %174

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %93
  %128 = load i8*, i8** %3, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp sge i32 %131, 97
  br i1 %132, label %133, label %149

133:                                              ; preds = %127
  %134 = load i8*, i8** %3, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 2
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp sle i32 %137, 122
  br i1 %138, label %139, label %149

139:                                              ; preds = %133
  %140 = load i8*, i8** %3, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 2
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = sub nsw i32 %143, 97
  %145 = add nsw i32 %144, 1
  %146 = mul nsw i32 729, %145
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %4, align 4
  br label %172

149:                                              ; preds = %133, %127
  %150 = load i8*, i8** %3, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 2
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp sge i32 %153, 65
  br i1 %154, label %155, label %171

155:                                              ; preds = %149
  %156 = load i8*, i8** %3, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 2
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp sle i32 %159, 90
  br i1 %160, label %161, label %171

161:                                              ; preds = %155
  %162 = load i8*, i8** %3, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 2
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = sub nsw i32 %165, 65
  %167 = add nsw i32 %166, 1
  %168 = mul nsw i32 729, %167
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %161, %155, %149
  br label %172

172:                                              ; preds = %171, %139
  %173 = load i32, i32* %4, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %172, %125, %79, %39, %29, %7
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
