; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/bar/extr_position.c_bar_cmd_position.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/bar/extr_position.c_bar_cmd_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"position\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@__const.bar_cmd_position.valid = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)], align 16
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Setting bar position '%s' for bar: %s\00", align 1
@config = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_SUCCESS = common dso_local global i32 0, align 4
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Invalid value %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @bar_cmd_position(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %11 = call %struct.cmd_results* @checkarg(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10, i32 1)
  store %struct.cmd_results* %11, %struct.cmd_results** %6, align 8
  %12 = icmp ne %struct.cmd_results* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %14, %struct.cmd_results** %3, align 8
  br label %66

15:                                               ; preds = %2
  %16 = bitcast [2 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([2 x i8*]* @__const.bar_cmd_position.valid to i8*), i64 16, i1 false)
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %57, %15
  %18 = load i64, i64* %8, align 8
  %19 = icmp ult i64 %18, 2
  br i1 %19, label %20, label %60

20:                                               ; preds = %17
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strcasecmp(i8* %23, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %20
  %30 = load i32, i32* @SWAY_DEBUG, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sway_log(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %33, i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @free(i32 %44)
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strdup(i8* %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* @CMD_SUCCESS, align 4
  %55 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %54, i8* null)
  store %struct.cmd_results* %55, %struct.cmd_results** %3, align 8
  br label %66

56:                                               ; preds = %20
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %8, align 8
  br label %17

60:                                               ; preds = %17
  %61 = load i32, i32* @CMD_INVALID, align 4
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  store %struct.cmd_results* %65, %struct.cmd_results** %3, align 8
  br label %66

66:                                               ; preds = %60, %29, %13
  %67 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %67
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
