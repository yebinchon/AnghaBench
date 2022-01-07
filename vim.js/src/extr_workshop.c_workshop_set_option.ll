; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_workshop.c_workshop_set_option.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_workshop.c_workshop_set_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [7 x i8] c"syntax\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"syntax %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"savefiles\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"lineno\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"set %snu\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"parentheses\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"set %ssm\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"balloon\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"balloondelay\00", align 1
@TRUE = common dso_local global i32 0, align 4
@WS_TRACE = common dso_local global i32 0, align 4
@WS_TRACE_VERBOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workshop_set_option(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @BUFSIZ, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i8, i8* @NUL, align 1
  %12 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 %11, i8* %12, align 16
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %76 [
    i32 115, label %16
    i32 108, label %31
    i32 112, label %43
    i32 119, label %55
    i32 98, label %56
  ]

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = trunc i64 %8 to i32
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @vim_snprintf(i8* %10, i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %30

24:                                               ; preds = %16
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28, %24
  br label %30

30:                                               ; preds = %29, %20
  br label %76

31:                                               ; preds = %2
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %41 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %35, %31
  br label %76

43:                                               ; preds = %2
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %53 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %47, %43
  br label %76

55:                                               ; preds = %2
  br label %76

56:                                               ; preds = %2
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 7
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* @NUL, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %75

69:                                               ; preds = %64, %56
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73, %69
  br label %75

75:                                               ; preds = %74, %68
  br label %76

76:                                               ; preds = %2, %75, %55, %54, %42, %30
  %77 = getelementptr inbounds i8, i8* %10, i64 0
  %78 = load i8, i8* %77, align 16
  %79 = sext i8 %78 to i32
  %80 = load i8, i8* @NUL, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* @TRUE, align 4
  %85 = call i32 @coloncmd(i8* %10, i32 %84)
  br label %86

86:                                               ; preds = %83, %76
  %87 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %87)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @vim_snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @coloncmd(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
