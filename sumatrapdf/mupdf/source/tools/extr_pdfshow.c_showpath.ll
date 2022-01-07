; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showpath.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@ctx = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"null\0A\00", align 1
@tight = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @showpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showpath(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1000 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %138

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %138

17:                                               ; preds = %11
  %18 = load i32, i32* @SEP, align 4
  %19 = call i8* @fz_strsep(i8** %3, i32 %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %133

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %133

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %108, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ctx, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = call i64 @pdf_is_array(i32 %33, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %32
  %38 = load i32, i32* @ctx, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @pdf_array_len(i32 %38, i32* %39)
  store i32 %40, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %63, %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = load i8*, i8** %3, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @fz_strlcpy(i8* %49, i8* %50, i32 1000)
  %52 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %53 = load i32, i32* @ctx, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32* @pdf_array_get(i32 %53, i32* %54, i32 %55)
  call void @showpath(i8* %52, i32* %56)
  br label %62

57:                                               ; preds = %45
  %58 = load i32, i32* @ctx, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32* @pdf_array_get(i32 %58, i32* %59, i32 %60)
  call void @showpath(i8* null, i32* %61)
  br label %62

62:                                               ; preds = %57, %48
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %41

66:                                               ; preds = %41
  br label %107

67:                                               ; preds = %32
  %68 = load i32, i32* @ctx, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = call i64 @pdf_is_dict(i32 %68, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %67
  %73 = load i32, i32* @ctx, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @pdf_dict_len(i32 %73, i32* %74)
  store i32 %75, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %98, %72
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  %81 = load i8*, i8** %3, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 @fz_strlcpy(i8* %84, i8* %85, i32 1000)
  %87 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %88 = load i32, i32* @ctx, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32* @pdf_dict_get_val(i32 %88, i32* %89, i32 %90)
  call void @showpath(i8* %87, i32* %91)
  br label %97

92:                                               ; preds = %80
  %93 = load i32, i32* @ctx, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32* @pdf_dict_get_val(i32 %93, i32* %94, i32 %95)
  call void @showpath(i8* null, i32* %96)
  br label %97

97:                                               ; preds = %92, %83
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %76

101:                                              ; preds = %76
  br label %106

102:                                              ; preds = %67
  %103 = load i32, i32* @ctx, align 4
  %104 = load i32, i32* @out, align 4
  %105 = call i32 @fz_write_string(i32 %103, i32 %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %102, %101
  br label %107

107:                                              ; preds = %106, %66
  br label %132

108:                                              ; preds = %28
  %109 = load i8*, i8** %5, align 8
  %110 = call i64 @isnumber(i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %108
  %113 = load i32, i32* @ctx, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = call i64 @pdf_is_array(i32 %113, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load i8*, i8** %3, align 8
  %119 = load i32, i32* @ctx, align 4
  %120 = load i32*, i32** %4, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 @atoi(i8* %121)
  %123 = sub nsw i32 %122, 1
  %124 = call i32* @pdf_array_get(i32 %119, i32* %120, i32 %123)
  call void @showpath(i8* %118, i32* %124)
  br label %131

125:                                              ; preds = %112, %108
  %126 = load i8*, i8** %3, align 8
  %127 = load i32, i32* @ctx, align 4
  %128 = load i32*, i32** %4, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = call i32* @pdf_dict_gets(i32 %127, i32* %128, i8* %129)
  call void @showpath(i8* %126, i32* %130)
  br label %131

131:                                              ; preds = %125, %117
  br label %132

132:                                              ; preds = %131, %107
  br label %137

133:                                              ; preds = %22, %17
  %134 = load i32, i32* @ctx, align 4
  %135 = load i32, i32* @out, align 4
  %136 = call i32 @fz_write_string(i32 %134, i32 %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %137

137:                                              ; preds = %133, %132
  br label %156

138:                                              ; preds = %11, %2
  %139 = load i32, i32* @ctx, align 4
  %140 = load i32*, i32** %4, align 8
  %141 = call i64 @pdf_is_indirect(i32 %139, i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @showobject(i32* %144)
  br label %155

146:                                              ; preds = %138
  %147 = load i32, i32* @ctx, align 4
  %148 = load i32, i32* @out, align 4
  %149 = load i32*, i32** %4, align 8
  %150 = load i32, i32* @tight, align 4
  %151 = call i32 @pdf_print_obj(i32 %147, i32 %148, i32* %149, i32 %150, i32 0)
  %152 = load i32, i32* @ctx, align 4
  %153 = load i32, i32* @out, align 4
  %154 = call i32 @fz_write_string(i32 %152, i32 %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %155

155:                                              ; preds = %146, %143
  br label %156

156:                                              ; preds = %155, %137
  ret void
}

declare dso_local i8* @fz_strsep(i8**, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @pdf_is_array(i32, i32*) #1

declare dso_local i32 @pdf_array_len(i32, i32*) #1

declare dso_local i32 @fz_strlcpy(i8*, i8*, i32) #1

declare dso_local i32* @pdf_array_get(i32, i32*, i32) #1

declare dso_local i64 @pdf_is_dict(i32, i32*) #1

declare dso_local i32 @pdf_dict_len(i32, i32*) #1

declare dso_local i32* @pdf_dict_get_val(i32, i32*, i32) #1

declare dso_local i32 @fz_write_string(i32, i32, i8*) #1

declare dso_local i64 @isnumber(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32* @pdf_dict_gets(i32, i32*, i8*) #1

declare dso_local i64 @pdf_is_indirect(i32, i32*) #1

declare dso_local i32 @showobject(i32*) #1

declare dso_local i32 @pdf_print_obj(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
