; ModuleID = '/home/carl/AnghaBench/tmux/extr_input.c_input_osc_4.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input.c_input_osc_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { %struct.window_pane* }
%struct.window_pane = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"bad OSC 4: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_ctx*, i8*)* @input_osc_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_osc_4(%struct.input_ctx* %0, i8* %1) #0 {
  %3 = alloca %struct.input_ctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.input_ctx* %0, %struct.input_ctx** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %13, i32 0, i32 0
  %15 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  store %struct.window_pane* %15, %struct.window_pane** %5, align 8
  store i8* null, i8** %8, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @xstrdup(i8* %16)
  store i8* %17, i8** %7, align 8
  store i8* %17, i8** %6, align 8
  br label %18

18:                                               ; preds = %51, %49, %2
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i1 [ false, %18 ], [ %25, %21 ]
  br i1 %27, label %28, label %60

28:                                               ; preds = %26
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @strtol(i8* %29, i8** %8, i32 10)
  store i64 %30, i64* %9, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  %33 = load i8, i8* %31, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 59
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %63

37:                                               ; preds = %28
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %9, align 8
  %42 = icmp sge i64 %41, 256
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %37
  br label %63

44:                                               ; preds = %40
  %45 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @input_osc_parse_colour(i8* %46, i32* %10, i32* %11, i32* %12)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** %7, align 8
  br label %18

51:                                               ; preds = %44
  %52 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @colour_join_rgb(i32 %54, i32 %55, i32 %56)
  %58 = call i32 @window_pane_set_palette(%struct.window_pane* %52, i64 %53, i32 %57)
  %59 = load i8*, i8** %8, align 8
  store i8* %59, i8** %7, align 8
  br label %18

60:                                               ; preds = %26
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @free(i8* %61)
  br label %68

63:                                               ; preds = %43, %36
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @log_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @free(i8* %66)
  br label %68

68:                                               ; preds = %63, %60
  ret void
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @input_osc_parse_colour(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @window_pane_set_palette(%struct.window_pane*, i64, i32) #1

declare dso_local i32 @colour_join_rgb(i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @log_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
