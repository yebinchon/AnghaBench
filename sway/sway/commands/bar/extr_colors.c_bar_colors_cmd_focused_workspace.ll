; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/bar/extr_colors.c_bar_colors_cmd_focused_workspace.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/bar/extr_colors.c_bar_colors_cmd_focused_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.cmd_results = type { i32 }

@config = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"focused_workspace\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @bar_colors_cmd_focused_workspace(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [3 x i8**], align 16
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = getelementptr inbounds [3 x i8**], [3 x i8**]* %5, i64 0, i64 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i8** %11, i8*** %6, align 8
  %12 = getelementptr inbounds i8**, i8*** %6, i64 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i8** %17, i8*** %12, align 8
  %18 = getelementptr inbounds i8**, i8*** %12, i64 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i8** %23, i8*** %18, align 8
  %24 = getelementptr inbounds [3 x i8**], [3 x i8**]* %5, i64 0, i64 0
  %25 = load i32, i32* %3, align 4
  %26 = load i8**, i8*** %4, align 8
  %27 = call %struct.cmd_results* @parse_three_colors(i8*** %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %25, i8** %26)
  ret %struct.cmd_results* %27
}

declare dso_local %struct.cmd_results* @parse_three_colors(i8***, i8*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
