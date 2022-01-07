; ModuleID = '/home/carl/AnghaBench/tmux/extr_arguments.c_args_escape.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_arguments.c_args_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@args_escape.quoted = internal constant [9 x i8] c" #\22';${}\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@VIS_OCTAL = common dso_local global i32 0, align 4
@VIS_CSTYLE = common dso_local global i32 0, align 4
@VIS_TAB = common dso_local global i32 0, align 4
@VIS_NL = common dso_local global i32 0, align 4
@VIS_DQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"\22\\%s\22\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\\%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @args_escape(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @xstrdup(i8* %12)
  store i8* %13, i8** %2, align 8
  br label %100

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 32
  br i1 %19, label %20, label %45

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = call i32* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @args_escape.quoted, i64 0, i64 0), i8 signext %23)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 126
  br i1 %31, label %32, label %45

32:                                               ; preds = %26, %20
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = call i32 (i8**, i8*, ...) @xasprintf(i8** %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i8*, i8** %4, align 8
  store i8* %44, i8** %2, align 8
  br label %100

45:                                               ; preds = %32, %26, %14
  %46 = load i32, i32* @VIS_OCTAL, align 4
  %47 = load i32, i32* @VIS_CSTYLE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @VIS_TAB, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @VIS_NL, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %6, align 4
  %53 = load i8*, i8** %3, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = call i64 @strcspn(i8* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @args_escape.quoted, i64 0, i64 0))
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %45
  %61 = load i32, i32* @VIS_DQ, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %45
  %65 = load i8*, i8** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @utf8_stravis(i8** %4, i8* %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @VIS_DQ, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %64
  %73 = load i8*, i8** %4, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 126
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 (i8**, i8*, ...) @xasprintf(i8** %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  br label %83

80:                                               ; preds = %72
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 (i8**, i8*, ...) @xasprintf(i8** %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %80, %77
  br label %96

84:                                               ; preds = %64
  %85 = load i8*, i8** %4, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 126
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 (i8**, i8*, ...) @xasprintf(i8** %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  br label %95

92:                                               ; preds = %84
  %93 = load i8*, i8** %4, align 8
  %94 = call i8* @xstrdup(i8* %93)
  store i8* %94, i8** %5, align 8
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %83
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i8*, i8** %5, align 8
  store i8* %99, i8** %2, align 8
  br label %100

100:                                              ; preds = %96, %38, %11
  %101 = load i8*, i8** %2, align 8
  ret i8* %101
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @xasprintf(i8**, i8*, ...) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @utf8_stravis(i8**, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
