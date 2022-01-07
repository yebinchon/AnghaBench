; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_history.c_history_get_list.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_history.c_history_get_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to open file: %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to close history file: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @history_get_list(i8* %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8** null, i8*** %3, align 8
  br label %39

12:                                               ; preds = %2
  store i8** null, i8*** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32* @g_fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @ENOENT, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* @errno, align 8
  %23 = call i32 @g_strerror(i64 %22)
  %24 = call i32 @g_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  store i8** null, i8*** %3, align 8
  br label %39

26:                                               ; preds = %12
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i8** @__history_get_element_list_fields(i32* %27, i32* %28)
  store i8** %29, i8*** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @fclose(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i64, i64* @errno, align 8
  %35 = call i32 @g_strerror(i64 %34)
  %36 = call i32 @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i8**, i8*** %6, align 8
  store i8** %38, i8*** %3, align 8
  br label %39

39:                                               ; preds = %37, %25, %11
  %40 = load i8**, i8*** %3, align 8
  ret i8** %40
}

declare dso_local i32* @g_fopen(i8*, i8*) #1

declare dso_local i32 @g_warning(i8*, i32) #1

declare dso_local i32 @g_strerror(i64) #1

declare dso_local i8** @__history_get_element_list_fields(i32*, i32*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
