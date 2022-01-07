; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_default_orientation.c_cmd_default_orientation.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_default_orientation.c_cmd_default_orientation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"default_orientation\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1
@L_HORIZ = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@L_VERT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Expected 'orientation <horizontal|vertical|auto>'\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_default_orientation(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %9 = call %struct.cmd_results* @checkarg(i32 %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %8, i32 1)
  store %struct.cmd_results* %9, %struct.cmd_results** %6, align 8
  %10 = icmp ne %struct.cmd_results* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %12, %struct.cmd_results** %3, align 8
  br label %48

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strcasecmp(i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @L_HORIZ, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %45

23:                                               ; preds = %13
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strcasecmp(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @L_VERT, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %44

33:                                               ; preds = %23
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcasecmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @CMD_INVALID, align 4
  %42 = call %struct.cmd_results* @cmd_results_new(i32 %41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  store %struct.cmd_results* %42, %struct.cmd_results** %3, align 8
  br label %48

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %29
  br label %45

45:                                               ; preds = %44, %19
  %46 = load i32, i32* @CMD_SUCCESS, align 4
  %47 = call %struct.cmd_results* @cmd_results_new(i32 %46, i8* null)
  store %struct.cmd_results* %47, %struct.cmd_results** %3, align 8
  br label %48

48:                                               ; preds = %45, %40, %11
  %49 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %49
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
