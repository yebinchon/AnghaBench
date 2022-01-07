; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_vms_mms.c_main.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_vms_mms.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mms\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s/output=tmp:errors.vim_tmp %s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"tmp:errors.vim_tmp\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%CC-\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"At line\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [132 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [132 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* @BUFSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i32 1
  store i8** %24, i8*** %5, align 8
  br label %25

25:                                               ; preds = %70, %2
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %4, align 4
  %28 = icmp sgt i32 %26, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %31, i8*** %5, align 8
  %32 = load i8*, i8** %30, align 8
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %37, label %59

37:                                               ; preds = %29
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %11, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %57 [
    i32 109, label %42
    i32 101, label %45
  ]

42:                                               ; preds = %37
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %11, align 8
  store i8* %44, i8** %14, align 8
  br label %58

45:                                               ; preds = %37
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %11, align 8
  store i8* %47, i8** %12, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %5, align 8
  %53 = load i8*, i8** %51, align 8
  store i8* %53, i8** %12, align 8
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %50, %45
  br label %58

57:                                               ; preds = %37
  br label %58

58:                                               ; preds = %57, %56, %42
  br label %70

59:                                               ; preds = %29
  %60 = getelementptr inbounds [132 x i8], [132 x i8]* %13, i64 0, i64 0
  %61 = load i8, i8* %60, align 16
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = getelementptr inbounds [132 x i8], [132 x i8]* %13, i64 0, i64 0
  %65 = call i32 @strcat(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %59
  %67 = getelementptr inbounds [132 x i8], [132 x i8]* %13, i64 0, i64 0
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @strcat(i8* %67, i8* %68)
  br label %70

70:                                               ; preds = %66, %58
  br label %25

71:                                               ; preds = %25
  %72 = getelementptr inbounds [132 x i8], [132 x i8]* %8, i64 0, i64 0
  %73 = load i8*, i8** %14, align 8
  %74 = getelementptr inbounds [132 x i8], [132 x i8]* %13, i64 0, i64 0
  %75 = call i32 @vim_snprintf(i8* %72, i32 132, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %73, i8* %74)
  %76 = getelementptr inbounds [132 x i8], [132 x i8]* %8, i64 0, i64 0
  %77 = call i32 @system(i8* %76)
  %78 = call i32* @fopen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %78, i32** %6, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = call i32* @fopen(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %80, i32** %7, align 8
  br label %81

81:                                               ; preds = %115, %71
  %82 = load i32, i32* @BUFSIZ, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = call i64 @fgets(i8* %20, i32 %82, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %118

86:                                               ; preds = %81
  %87 = call i32 @memcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %16, align 4
  %92 = call i32 @strlen(i8* %20)
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %20, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %115

98:                                               ; preds = %86
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = call i32 @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %103 = call i64 @strstr(i8* %20, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  store i32 0, i32* %16, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 (i32*, i8*, ...) @fprintf(i32* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %113

108:                                              ; preds = %101
  %109 = call i32 @strlen(i8* %20)
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %20, i64 %111
  store i8 0, i8* %112, align 1
  br label %113

113:                                              ; preds = %108, %105
  br label %114

114:                                              ; preds = %113, %98
  br label %115

115:                                              ; preds = %114, %89
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 (i32*, i8*, ...) @fprintf(i32* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %20)
  br label %81

118:                                              ; preds = %81
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @fclose(i32* %119)
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @fclose(i32* %121)
  br label %123

123:                                              ; preds = %127, %118
  %124 = call i32 @delete(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %123

128:                                              ; preds = %123
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 44, i32 1
  %133 = call i32 @exit(i32 %132) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @vim_snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @system(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @strstr(i8*, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @delete(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
