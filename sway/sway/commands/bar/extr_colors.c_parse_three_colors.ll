; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/bar/extr_colors.c_parse_three_colors.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/bar/extr_colors.c_parse_three_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_results = type { i32 }

@CMD_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Command '%s' requires exactly three color values\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i8***, i8*, i32, i8**)* @parse_three_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @parse_three_colors(i8*** %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca %struct.cmd_results*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.cmd_results*, align 8
  %11 = alloca i64, align 8
  store i8*** %0, i8**** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %10, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* @CMD_INVALID, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %15, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %16)
  store %struct.cmd_results* %17, %struct.cmd_results** %5, align 8
  br label %59

18:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %19

19:                                               ; preds = %53, %18
  %20 = load i64, i64* %11, align 8
  %21 = icmp ult i64 %20, 3
  br i1 %21, label %22, label %56

22:                                               ; preds = %19
  %23 = load i8***, i8**** %6, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds i8**, i8*** %23, i64 %24
  %26 = load i8**, i8*** %25, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %22
  %30 = call i8* @malloc(i32 10)
  %31 = load i8***, i8**** %6, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds i8**, i8*** %31, i64 %32
  %34 = load i8**, i8*** %33, align 8
  store i8* %30, i8** %34, align 8
  %35 = icmp ne i8* %30, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store %struct.cmd_results* null, %struct.cmd_results** %5, align 8
  br label %59

37:                                               ; preds = %29, %22
  %38 = load i8***, i8**** %6, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds i8**, i8*** %38, i64 %39
  %41 = load i8**, i8*** %40, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %9, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call %struct.cmd_results* @add_color(i8* %42, i8* %46)
  store %struct.cmd_results* %47, %struct.cmd_results** %10, align 8
  %48 = load %struct.cmd_results*, %struct.cmd_results** %10, align 8
  %49 = icmp ne %struct.cmd_results* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load %struct.cmd_results*, %struct.cmd_results** %10, align 8
  store %struct.cmd_results* %51, %struct.cmd_results** %5, align 8
  br label %59

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %11, align 8
  br label %19

56:                                               ; preds = %19
  %57 = load i32, i32* @CMD_SUCCESS, align 4
  %58 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %57, i8* null)
  store %struct.cmd_results* %58, %struct.cmd_results** %5, align 8
  br label %59

59:                                               ; preds = %56, %50, %36, %14
  %60 = load %struct.cmd_results*, %struct.cmd_results** %5, align 8
  ret %struct.cmd_results* %60
}

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local %struct.cmd_results* @add_color(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
