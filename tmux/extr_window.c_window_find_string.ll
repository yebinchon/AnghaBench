; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_window_find_string.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_window_find_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { i32 }
%struct.window = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"top-left\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"top-right\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"bottom-left\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"bottom-right\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.window_pane* @window_find_string(%struct.window* %0, i8* %1) #0 {
  %3 = alloca %struct.window_pane*, align 8
  %4 = alloca %struct.window*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.window* %0, %struct.window** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.window*, %struct.window** %4, align 8
  %9 = getelementptr inbounds %struct.window, %struct.window* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sdiv i32 %10, 2
  store i32 %11, i32* %6, align 4
  %12 = load %struct.window*, %struct.window** %4, align 8
  %13 = getelementptr inbounds %struct.window, %struct.window* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %7, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strcasecmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %87

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strcasecmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.window*, %struct.window** %4, align 8
  %26 = getelementptr inbounds %struct.window, %struct.window* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %86

29:                                               ; preds = %20
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strcasecmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %85

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @strcasecmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.window*, %struct.window** %4, align 8
  %40 = getelementptr inbounds %struct.window, %struct.window* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %84

43:                                               ; preds = %34
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @strcasecmp(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %83

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @strcasecmp(i8* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.window*, %struct.window** %4, align 8
  %54 = getelementptr inbounds %struct.window, %struct.window* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %82

57:                                               ; preds = %48
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @strcasecmp(i8* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  %62 = load %struct.window*, %struct.window** %4, align 8
  %63 = getelementptr inbounds %struct.window, %struct.window* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %81

66:                                               ; preds = %57
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 @strcasecmp(i8* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.window*, %struct.window** %4, align 8
  %72 = getelementptr inbounds %struct.window, %struct.window* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  %75 = load %struct.window*, %struct.window** %4, align 8
  %76 = getelementptr inbounds %struct.window, %struct.window* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %80

79:                                               ; preds = %66
  store %struct.window_pane* null, %struct.window_pane** %3, align 8
  br label %92

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %61
  br label %82

82:                                               ; preds = %81, %52
  br label %83

83:                                               ; preds = %82, %47
  br label %84

84:                                               ; preds = %83, %38
  br label %85

85:                                               ; preds = %84, %33
  br label %86

86:                                               ; preds = %85, %24
  br label %87

87:                                               ; preds = %86, %19
  %88 = load %struct.window*, %struct.window** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call %struct.window_pane* @window_get_active_at(%struct.window* %88, i32 %89, i32 %90)
  store %struct.window_pane* %91, %struct.window_pane** %3, align 8
  br label %92

92:                                               ; preds = %87, %79
  %93 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  ret %struct.window_pane* %93
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.window_pane* @window_get_active_at(%struct.window*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
