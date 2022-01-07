; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_log.c_seafile_log_init.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_log.c_seafile_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G_LOG_LEVEL_MASK = common dso_local global i32 0, align 4
@G_LOG_FLAG_FATAL = common dso_local global i32 0, align 4
@G_LOG_FLAG_RECURSION = common dso_local global i32 0, align 4
@seafile_log = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Ccnet\00", align 1
@ccnet_log = common dso_local global i32 0, align 4
@G_LOG_LEVEL_INFO = common dso_local global i32 0, align 4
@ccnet_log_level = common dso_local global i8* null, align 8
@G_LOG_LEVEL_DEBUG = common dso_local global i32 0, align 4
@seafile_log_level = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = common dso_local global i32* null, align 8
@logfp = common dso_local global i32* null, align 8
@logfile = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to open file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seafile_log_init(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* @G_LOG_LEVEL_MASK, align 4
  %9 = load i32, i32* @G_LOG_FLAG_FATAL, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @G_LOG_FLAG_RECURSION, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @seafile_log, align 4
  %14 = call i32 @g_log_set_handler(i8* null, i32 %12, i32 %13, i32* null)
  %15 = load i32, i32* @G_LOG_LEVEL_MASK, align 4
  %16 = load i32, i32* @G_LOG_FLAG_FATAL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @G_LOG_FLAG_RECURSION, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @ccnet_log, align 4
  %21 = call i32 @g_log_set_handler(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32* null)
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @G_LOG_LEVEL_INFO, align 4
  %24 = call i8* @get_debug_level(i8* %22, i32 %23)
  store i8* %24, i8** @ccnet_log_level, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @G_LOG_LEVEL_DEBUG, align 4
  %27 = call i8* @get_debug_level(i8* %25, i32 %26)
  store i8* %27, i8** @seafile_log_level, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load i32*, i32** @stdout, align 8
  store i32* %32, i32** @logfp, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @g_strdup(i8* %33)
  store i32 %34, i32* @logfile, align 4
  br label %45

35:                                               ; preds = %3
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @ccnet_expand_path(i8* %36)
  store i32 %37, i32* @logfile, align 4
  %38 = load i32, i32* @logfile, align 4
  %39 = call i32* @g_fopen(i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %39, i32** @logfp, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @logfile, align 4
  %43 = call i32 @seaf_message(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  store i32 -1, i32* %4, align 4
  br label %46

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %31
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @g_log_set_handler(i8*, i32, i32, i32*) #1

declare dso_local i8* @get_debug_level(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @g_strdup(i8*) #1

declare dso_local i32 @ccnet_expand_path(i8*) #1

declare dso_local i32* @g_fopen(i32, i8*) #1

declare dso_local i32 @seaf_message(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
