; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_floating_minmax_size.c_handle_command.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_floating_minmax_size.c_handle_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_results = type { i32 }

@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@CMD_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i32, i8**, i8*, i8*, i32*, i32*)* @handle_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @handle_command(i32 %0, i8** %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.cmd_results*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.cmd_results*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8** %1, i8*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %21 = call %struct.cmd_results* @checkarg(i32 %18, i8* %19, i32 %20, i32 3)
  store %struct.cmd_results* %21, %struct.cmd_results** %14, align 8
  %22 = icmp ne %struct.cmd_results* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load %struct.cmd_results*, %struct.cmd_results** %14, align 8
  store %struct.cmd_results* %24, %struct.cmd_results** %7, align 8
  br label %71

25:                                               ; preds = %6
  %26 = load i8**, i8*** %9, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strtol(i8* %28, i8** %15, i32 10)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %16, align 4
  %31 = load i8*, i8** %15, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load i32, i32* @CMD_INVALID, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %35, i8* %36, i8* %37)
  store %struct.cmd_results* %38, %struct.cmd_results** %7, align 8
  br label %71

39:                                               ; preds = %25
  %40 = load i8**, i8*** %9, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* @CMD_INVALID, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %46, i8* %47, i8* %48)
  store %struct.cmd_results* %49, %struct.cmd_results** %7, align 8
  br label %71

50:                                               ; preds = %39
  %51 = load i8**, i8*** %9, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strtol(i8* %53, i8** %15, i32 10)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %17, align 4
  %56 = load i8*, i8** %15, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load i32, i32* @CMD_INVALID, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %60, i8* %61, i8* %62)
  store %struct.cmd_results* %63, %struct.cmd_results** %7, align 8
  br label %71

64:                                               ; preds = %50
  %65 = load i32, i32* %16, align 4
  %66 = load i32*, i32** %12, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32*, i32** %13, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @CMD_SUCCESS, align 4
  %70 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %69, i8* null)
  store %struct.cmd_results* %70, %struct.cmd_results** %7, align 8
  br label %71

71:                                               ; preds = %64, %59, %45, %34, %23
  %72 = load %struct.cmd_results*, %struct.cmd_results** %7, align 8
  ret %struct.cmd_results* %72
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
