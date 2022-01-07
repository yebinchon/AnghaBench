; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_floating_modifier.c_cmd_floating_modifier.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_floating_modifier.c_cmd_floating_modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"floating_modifier\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid modifier\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@config = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"inverse\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Usage: floating_modifier <mod> [inverse|normal]\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_floating_modifier(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %10 = call %struct.cmd_results* @checkarg(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %9, i32 1)
  store %struct.cmd_results* %10, %struct.cmd_results** %6, align 8
  %11 = icmp ne %struct.cmd_results* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %13, %struct.cmd_results** %3, align 8
  br label %55

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @get_modifier_mask_by_name(i8* %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @CMD_INVALID, align 4
  %23 = call %struct.cmd_results* @cmd_results_new(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %23, %struct.cmd_results** %3, align 8
  br label %55

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strcasecmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %24
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %49

36:                                               ; preds = %27
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strcasecmp(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @CMD_INVALID, align 4
  %47 = call %struct.cmd_results* @cmd_results_new(i32 %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  store %struct.cmd_results* %47, %struct.cmd_results** %3, align 8
  br label %55

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* @CMD_SUCCESS, align 4
  %54 = call %struct.cmd_results* @cmd_results_new(i32 %53, i8* null)
  store %struct.cmd_results* %54, %struct.cmd_results** %3, align 8
  br label %55

55:                                               ; preds = %49, %45, %21, %12
  %56 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %56
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i64 @get_modifier_mask_by_name(i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
