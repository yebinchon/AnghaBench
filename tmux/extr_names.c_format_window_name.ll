; ModuleID = '/home/carl/AnghaBench/tmux/extr_names.c_format_window_name.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_names.c_format_window_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { i32, i32, i32 }
%struct.format_tree = type { i32 }

@FORMAT_WINDOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"automatic-rename-format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.window*)* @format_window_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_window_name(%struct.window* %0) #0 {
  %2 = alloca %struct.window*, align 8
  %3 = alloca %struct.format_tree*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.window* %0, %struct.window** %2, align 8
  %6 = load i32, i32* @FORMAT_WINDOW, align 4
  %7 = load %struct.window*, %struct.window** %2, align 8
  %8 = getelementptr inbounds %struct.window, %struct.window* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %6, %9
  %11 = call %struct.format_tree* @format_create(i32* null, i32* null, i32 %10, i32 0)
  store %struct.format_tree* %11, %struct.format_tree** %3, align 8
  %12 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %13 = load %struct.window*, %struct.window** %2, align 8
  %14 = call i32 @format_defaults_window(%struct.format_tree* %12, %struct.window* %13)
  %15 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %16 = load %struct.window*, %struct.window** %2, align 8
  %17 = getelementptr inbounds %struct.window, %struct.window* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @format_defaults_pane(%struct.format_tree* %15, i32 %18)
  %20 = load %struct.window*, %struct.window** %2, align 8
  %21 = getelementptr inbounds %struct.window, %struct.window* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @options_get_string(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %4, align 8
  %24 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @format_expand(%struct.format_tree* %24, i8* %25)
  store i8* %26, i8** %5, align 8
  %27 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %28 = call i32 @format_free(%struct.format_tree* %27)
  %29 = load i8*, i8** %5, align 8
  ret i8* %29
}

declare dso_local %struct.format_tree* @format_create(i32*, i32*, i32, i32) #1

declare dso_local i32 @format_defaults_window(%struct.format_tree*, %struct.window*) #1

declare dso_local i32 @format_defaults_pane(%struct.format_tree*, i32) #1

declare dso_local i8* @options_get_string(i32, i8*) #1

declare dso_local i8* @format_expand(%struct.format_tree*, i8*) #1

declare dso_local i32 @format_free(%struct.format_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
