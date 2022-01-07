; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_xmdlg.c_style_part.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_xmdlg.c_style_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEMP_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%s oblique\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%s italic\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @style_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @style_part(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @TEMP_BUF_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* @TEMP_BUF_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @get_part(i8* %15, i32 3, i8* %14)
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @get_part(i8* %17, i32 5, i8* %11)
  %19 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %2
  %22 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @TEMP_BUF_SIZE, align 4
  %30 = call i32 (i8*, i32, i8*, i8*, ...) @vim_snprintf(i8* %28, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %14, i8* %11)
  br label %34

31:                                               ; preds = %24, %21, %2
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strcpy(i8* %32, i8* %14)
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @get_part(i8* %35, i32 6, i8* %11)
  %37 = getelementptr inbounds i8, i8* %11, i64 0
  %38 = load i8, i8* %37, align 16
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @TEMP_BUF_SIZE, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 (i8*, i32, i8*, i8*, ...) @vim_snprintf(i8* %14, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %43, i8* %11)
  br label %48

45:                                               ; preds = %34
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @strcpy(i8* %14, i8* %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @get_part(i8* %49, i32 4, i8* %11)
  %51 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53, %48
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* @TEMP_BUF_SIZE, align 4
  %59 = call i32 (i8*, i32, i8*, i8*, ...) @vim_snprintf(i8* %57, i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %14)
  br label %71

60:                                               ; preds = %53
  %61 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63, %60
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* @TEMP_BUF_SIZE, align 4
  %69 = call i32 (i8*, i32, i8*, i8*, ...) @vim_snprintf(i8* %67, i32 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %14)
  br label %70

70:                                               ; preds = %66, %63
  br label %71

71:                                               ; preds = %70, %56
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @strcpy(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %79)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_part(i8*, i32, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @vim_snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
