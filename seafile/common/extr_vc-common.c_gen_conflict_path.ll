; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_vc-common.c_gen_conflict_path.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_vc-common.c_gen_conflict_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"%Y-%m-%d-%H-%M-%S\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s (SFConflict %s %s).%s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s (SFConflict %s).%s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%s (SFConflict %s %s)\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s (SFConflict %s)\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gen_conflict_path(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @g_strdup(i8* %14)
  store i8* %15, i8** %9, align 8
  %16 = call i32* @g_string_new(i32* null)
  store i32* %16, i32** %10, align 8
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %18 = call i32 @localtime(i32* %8)
  %19 = call i32 @strftime(i8* %17, i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i8*, i8** %9, align 8
  %21 = call i8* @strrchr(i8* %20, i8 signext 46)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %3
  %25 = load i8*, i8** %11, align 8
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32*, i32** %10, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 (i32*, i8*, i8*, i8*, ...) @g_string_printf(i32* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %32, i8* %33, i8* %34, i8* %35)
  br label %43

37:                                               ; preds = %24
  %38 = load i32*, i32** %10, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 (i32*, i8*, i8*, i8*, ...) @g_string_printf(i32* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %39, i8* %40, i8* %41)
  br label %43

43:                                               ; preds = %37, %30
  br label %59

44:                                               ; preds = %3
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32*, i32** %10, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %52 = call i32 (i32*, i8*, i8*, i8*, ...) @g_string_printf(i32* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %49, i8* %50, i8* %51)
  br label %58

53:                                               ; preds = %44
  %54 = load i32*, i32** %10, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %57 = call i32 (i32*, i8*, i8*, i8*, ...) @g_string_printf(i32* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %53, %47
  br label %59

59:                                               ; preds = %58, %43
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @g_free(i8* %60)
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i8* @g_string_free(i32* %62, i32 %63)
  ret i8* %64
}

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32* @g_string_new(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime(i32*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @g_string_printf(i32*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_string_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
