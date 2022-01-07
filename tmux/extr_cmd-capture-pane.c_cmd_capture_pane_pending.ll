; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-capture-pane.c_cmd_capture_pane_pending.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-capture-pane.c_cmd_capture_pane_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args = type { i32 }
%struct.window_pane = type { i32 }
%struct.evbuffer = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\\%03hho\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.args*, %struct.window_pane*, i64*)* @cmd_capture_pane_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cmd_capture_pane_pending(%struct.args* %0, %struct.window_pane* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.args*, align 8
  %6 = alloca %struct.window_pane*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.evbuffer*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [5 x i8], align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.args* %0, %struct.args** %5, align 8
  store %struct.window_pane* %1, %struct.window_pane** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %15 = call %struct.evbuffer* @input_pending(%struct.window_pane* %14)
  store %struct.evbuffer* %15, %struct.evbuffer** %8, align 8
  %16 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %17 = icmp eq %struct.evbuffer* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %4, align 8
  br label %81

20:                                               ; preds = %3
  %21 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %22 = call i8* @EVBUFFER_DATA(%struct.evbuffer* %21)
  store i8* %22, i8** %10, align 8
  %23 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %24 = call i64 @EVBUFFER_LENGTH(%struct.evbuffer* %23)
  store i64 %24, i64* %12, align 8
  %25 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %9, align 8
  %26 = load %struct.args*, %struct.args** %5, align 8
  %27 = call i64 @args_has(%struct.args* %26, i8 signext 67)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %20
  store i64 0, i64* %13, align 8
  br label %30

30:                                               ; preds = %69, %29
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = load i8*, i8** %10, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sge i32 %39, 32
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 92
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load i8*, i8** %10, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  store i8 %52, i8* %53, align 1
  %54 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 1
  store i8 0, i8* %54, align 1
  br label %62

55:                                               ; preds = %41, %34
  %56 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %57 = load i8*, i8** %10, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @xsnprintf(i8* %56, i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8 signext %60)
  br label %62

62:                                               ; preds = %55, %48
  %63 = load i8*, i8** %9, align 8
  %64 = load i64*, i64** %7, align 8
  %65 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %66 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %67 = call i64 @strlen(i8* %66)
  %68 = call i8* @cmd_capture_pane_append(i8* %63, i64* %64, i8* %65, i64 %67)
  store i8* %68, i8** %9, align 8
  br label %69

69:                                               ; preds = %62
  %70 = load i64, i64* %13, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %13, align 8
  br label %30

72:                                               ; preds = %30
  br label %79

73:                                               ; preds = %20
  %74 = load i8*, i8** %9, align 8
  %75 = load i64*, i64** %7, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i8* @cmd_capture_pane_append(i8* %74, i64* %75, i8* %76, i64 %77)
  store i8* %78, i8** %9, align 8
  br label %79

79:                                               ; preds = %73, %72
  %80 = load i8*, i8** %9, align 8
  store i8* %80, i8** %4, align 8
  br label %81

81:                                               ; preds = %79, %18
  %82 = load i8*, i8** %4, align 8
  ret i8* %82
}

declare dso_local %struct.evbuffer* @input_pending(%struct.window_pane*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @EVBUFFER_DATA(%struct.evbuffer*) #1

declare dso_local i64 @EVBUFFER_LENGTH(%struct.evbuffer*) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i8 signext) #1

declare dso_local i8* @cmd_capture_pane_append(i8*, i64*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
