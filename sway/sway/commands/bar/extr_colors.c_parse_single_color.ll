; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/bar/extr_colors.c_parse_single_color.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/bar/extr_colors.c_parse_single_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_results = type { i32 }

@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i8**, i8*, i32, i8**)* @parse_single_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @parse_single_color(i8** %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca %struct.cmd_results*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.cmd_results*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %14 = call %struct.cmd_results* @checkarg(i32 %11, i8* %12, i32 %13, i32 1)
  store %struct.cmd_results* %14, %struct.cmd_results** %10, align 8
  %15 = icmp ne %struct.cmd_results* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load %struct.cmd_results*, %struct.cmd_results** %10, align 8
  store %struct.cmd_results* %17, %struct.cmd_results** %5, align 8
  br label %41

18:                                               ; preds = %4
  %19 = load i8**, i8*** %6, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = call i8* @malloc(i32 10)
  %24 = load i8**, i8*** %6, align 8
  store i8* %23, i8** %24, align 8
  %25 = icmp ne i8* %23, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store %struct.cmd_results* null, %struct.cmd_results** %5, align 8
  br label %41

27:                                               ; preds = %22, %18
  %28 = load i8**, i8*** %6, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i8**, i8*** %9, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call %struct.cmd_results* @add_color(i8* %29, i8* %32)
  store %struct.cmd_results* %33, %struct.cmd_results** %10, align 8
  %34 = load %struct.cmd_results*, %struct.cmd_results** %10, align 8
  %35 = icmp ne %struct.cmd_results* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load %struct.cmd_results*, %struct.cmd_results** %10, align 8
  store %struct.cmd_results* %37, %struct.cmd_results** %5, align 8
  br label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @CMD_SUCCESS, align 4
  %40 = call %struct.cmd_results* @cmd_results_new(i32 %39, i32* null)
  store %struct.cmd_results* %40, %struct.cmd_results** %5, align 8
  br label %41

41:                                               ; preds = %38, %36, %26, %16
  %42 = load %struct.cmd_results*, %struct.cmd_results** %5, align 8
  ret %struct.cmd_results* %42
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local %struct.cmd_results* @add_color(i8*, i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
