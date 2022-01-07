; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_get_mouse_bindcode.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_get_mouse_bindcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Button event code must be a positive integer.\00", align 1
@ERANGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Button event code out of range.\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"BTN_\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Event code %d (%s) is not a button\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mouse_bindcode(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* @errno, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strtol(i8* %10, i8** %6, i32 10)
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = call i8* @strdup(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %20 = load i8**, i8*** %5, align 8
  store i8* %19, i8** %20, align 8
  store i32 0, i32* %3, align 4
  br label %62

21:                                               ; preds = %15, %2
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @ERANGE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = call i8* @strdup(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i8**, i8*** %5, align 8
  store i8* %26, i8** %27, align 8
  store i32 0, i32* %3, align 4
  br label %62

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* @EV_KEY, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i8* @libevdev_event_code_get_name(i32 %30, i32 %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i64 @strncmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %35, %29
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @snprintf(i8* null, i64 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %41, i8* %42)
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i8* @malloc(i64 %46)
  %48 = load i8**, i8*** %5, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  %53 = load i8**, i8*** %5, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @snprintf(i8* %54, i64 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %56, i8* %57)
  br label %59

59:                                               ; preds = %52, %40
  store i32 0, i32* %3, align 4
  br label %62

60:                                               ; preds = %35
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %59, %25, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @libevdev_event_code_get_name(i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i8*) #1

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
