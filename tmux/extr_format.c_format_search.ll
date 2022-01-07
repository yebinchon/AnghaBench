; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_search.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_modifier = type { i32, i32* }
%struct.window_pane = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.format_modifier*, %struct.window_pane*, i8*)* @format_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_search(%struct.format_modifier* %0, %struct.window_pane* %1, i8* %2) #0 {
  %4 = alloca %struct.format_modifier*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.format_modifier* %0, %struct.format_modifier** %4, align 8
  store %struct.window_pane* %1, %struct.window_pane** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.format_modifier*, %struct.format_modifier** %4, align 8
  %11 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sge i32 %12, 1
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = load %struct.format_modifier*, %struct.format_modifier** %4, align 8
  %16 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @strchr(i32 %19, i8 signext 105)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* %7, align 4
  br label %23

23:                                               ; preds = %22, %14
  %24 = load %struct.format_modifier*, %struct.format_modifier** %4, align 8
  %25 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @strchr(i32 %28, i8 signext 114)
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %8, align 4
  br label %32

32:                                               ; preds = %31, %23
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @window_pane_search(%struct.window_pane* %34, i8* %35, i32 %36, i32 %37)
  %39 = call i32 @xasprintf(i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i8*, i8** %9, align 8
  ret i8* %40
}

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i32 @xasprintf(i8**, i8*, i32) #1

declare dso_local i32 @window_pane_search(%struct.window_pane*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
