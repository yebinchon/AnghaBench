; ModuleID = '/home/carl/AnghaBench/vlc/src/config/extr_help.c_config_PrintHelp.c'
source_filename = "/home/carl/AnghaBench/vlc/src/config/extr_help.c_config_PrintHelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"full-help\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"help-verbose\00", align 1
@VLC_VAR_BOOL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"longhelp\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"list-verbose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_PrintHelp(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @var_InheritBool(i32* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @Help(i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %62

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @var_InheritBool(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 (...) @Version()
  store i32 1, i32* %2, align 4
  br label %62

17:                                               ; preds = %11
  %18 = load i32*, i32** %3, align 8
  %19 = call i8* @var_InheritString(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @Help(i32* %23, i8* %24)
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @free(i8* %26)
  store i32 1, i32* %2, align 4
  br label %62

28:                                               ; preds = %17
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @var_InheritBool(i32* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @VLC_VAR_BOOL, align 4
  %35 = call i32 @var_Create(i32* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @var_SetBool(i32* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @Help(i32* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %62

40:                                               ; preds = %28
  %41 = load i32*, i32** %3, align 8
  %42 = call i64 @var_InheritBool(i32* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @Help(i32* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %62

47:                                               ; preds = %40
  %48 = load i32*, i32** %3, align 8
  %49 = call i64 @var_InheritBool(i32* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @ListModules(i32* %52, i32 0)
  store i32 1, i32* %2, align 4
  br label %62

54:                                               ; preds = %47
  %55 = load i32*, i32** %3, align 8
  %56 = call i64 @var_InheritBool(i32* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @ListModules(i32* %59, i32 1)
  store i32 1, i32* %2, align 4
  br label %62

61:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %58, %51, %44, %32, %22, %15, %8
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @var_InheritBool(i32*, i8*) #1

declare dso_local i32 @Help(i32*, i8*) #1

declare dso_local i32 @Version(...) #1

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @var_Create(i32*, i8*, i32) #1

declare dso_local i32 @var_SetBool(i32*, i8*, i32) #1

declare dso_local i32 @ListModules(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
