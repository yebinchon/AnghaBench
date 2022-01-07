; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_log.c_get_debug_level.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_log.c_get_debug_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@G_LOG_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@G_LOG_LEVEL_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@G_LOG_LEVEL_WARNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @get_debug_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_debug_level(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @G_LOG_LEVEL_DEBUG, align 4
  store i32 %10, i32* %3, align 4
  br label %25

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @G_LOG_LEVEL_INFO, align 4
  store i32 %16, i32* %3, align 4
  br label %25

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @G_LOG_LEVEL_WARNING, align 4
  store i32 %22, i32* %3, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %21, %15, %9
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
