; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_get_mouse_bindsym.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_get_mouse_bindsym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"button\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"Only buttons 1-9 are supported. For other mouse buttons, use the name of the event code.\00", align 1
@get_mouse_bindsym.buttons = internal constant [9 x i32] [i32 135, i32 134, i32 133, i32 128, i32 131, i32 130, i32 129, i32 132, i32 136], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"BTN_\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Unknown event %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mouse_bindsym(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strncasecmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 6)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 6
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = sub nsw i32 %16, 48
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %27, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 9
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = icmp ugt i64 %25, 7
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %20, %12
  %28 = call i8* @strdup(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8**, i8*** %5, align 8
  store i8* %28, i8** %29, align 8
  store i32 0, i32* %3, align 4
  br label %68

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* @get_mouse_bindsym.buttons, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %68

36:                                               ; preds = %2
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @strncmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 4)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load i32, i32* @EV_KEY, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @libevdev_event_code_from_name(i32 %41, i8* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @snprintf(i8* null, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i8* @malloc(i64 %51)
  %53 = load i8**, i8*** %5, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i8**, i8*** %5, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  %58 = load i8**, i8*** %5, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @snprintf(i8* %59, i64 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %57, %46
  store i32 0, i32* %3, align 4
  br label %68

64:                                               ; preds = %40
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %36
  br label %67

67:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %64, %63, %30, %27
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @libevdev_event_code_from_name(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
