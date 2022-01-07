; ModuleID = '/home/carl/AnghaBench/tmux/extr_input.c_input_osc_104.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input.c_input_osc_104.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { %struct.window_pane* }
%struct.window_pane = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"bad OSC 104: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_ctx*, i8*)* @input_osc_104 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_osc_104(%struct.input_ctx* %0, i8* %1) #0 {
  %3 = alloca %struct.input_ctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %9, i32 0, i32 0
  %11 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  store %struct.window_pane* %11, %struct.window_pane** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %18 = call i32 @window_pane_reset_palette(%struct.window_pane* %17)
  br label %67

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @xstrdup(i8* %20)
  store i8* %21, i8** %7, align 8
  store i8* %21, i8** %6, align 8
  br label %22

22:                                               ; preds = %58, %19
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %22
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @strtol(i8* %28, i8** %7, i32 10)
  store i64 %29, i64* %8, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 59
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %62

40:                                               ; preds = %34, %27
  %41 = load i64, i64* %8, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %8, align 8
  %45 = icmp sge i64 %44, 256
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40
  br label %62

47:                                               ; preds = %43
  %48 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @window_pane_unset_palette(%struct.window_pane* %48, i64 %49)
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 59
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  br label %58

58:                                               ; preds = %55, %47
  br label %22

59:                                               ; preds = %22
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @free(i8* %60)
  br label %67

62:                                               ; preds = %46, %39
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @log_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @free(i8* %65)
  br label %67

67:                                               ; preds = %62, %59, %16
  ret void
}

declare dso_local i32 @window_pane_reset_palette(%struct.window_pane*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @window_pane_unset_palette(%struct.window_pane*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @log_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
