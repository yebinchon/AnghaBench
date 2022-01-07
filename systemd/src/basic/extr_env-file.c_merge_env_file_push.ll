; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_env-file.c_merge_env_file_push.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_env-file.c_merge_env_file_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"%s:%u: invalid syntax (around \22%s\22), ignoring.\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%s:%u: invalid variable name \22%s\22, ignoring.\00", align 1
@REPLACE_ENV_USE_ENVIRONMENT = common dso_local global i32 0, align 4
@REPLACE_ENV_ALLOW_BRACELESS = common dso_local global i32 0, align 4
@REPLACE_ENV_ALLOW_EXTENDED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%s:%u: setting %s=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, i8*, i32*)* @merge_env_file_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_env_file_push(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8***, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = bitcast i8* %16 to i8***
  store i8*** %17, i8**** %14, align 8
  %18 = load i8***, i8**** %14, align 8
  %19 = call i32 @assert(i8*** %18)
  %20 = load i8*, i8** %11, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %6
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strna(i8* %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @log_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i8* %26)
  store i32 0, i32* %7, align 4
  br label %71

28:                                               ; preds = %6
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @env_name_is_valid(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @strna(i8* %33)
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @log_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35, i8* %36)
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @free(i8* %38)
  store i32 0, i32* %7, align 4
  br label %71

40:                                               ; preds = %28
  %41 = load i8*, i8** %11, align 8
  %42 = load i8***, i8**** %14, align 8
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* @REPLACE_ENV_USE_ENVIRONMENT, align 4
  %45 = load i32, i32* @REPLACE_ENV_ALLOW_BRACELESS, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @REPLACE_ENV_ALLOW_EXTENDED, align 4
  %48 = or i32 %46, %47
  %49 = call i8* @replace_env(i8* %41, i8** %43, i32 %48)
  store i8* %49, i8** %15, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %40
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %71

55:                                               ; preds = %40
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = call i32 @free_and_replace(i8* %56, i8* %57)
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %59, i32 %60, i8* %61, i8* %62)
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i8***, i8**** %14, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @load_env_file_push(i8* %64, i32 %65, i8* %66, i8* %67, i8*** %68, i32* %69)
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %55, %52, %32, %22
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @assert(i8***) #1

declare dso_local i32 @log_error(i8*, i32, i32, i8*) #1

declare dso_local i32 @strna(i8*) #1

declare dso_local i32 @env_name_is_valid(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @replace_env(i8*, i8**, i32) #1

declare dso_local i32 @free_and_replace(i8*, i8*) #1

declare dso_local i32 @log_debug(i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @load_env_file_push(i8*, i32, i8*, i8*, i8***, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
