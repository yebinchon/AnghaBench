; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/seat/extr_xcursor_theme.c_seat_cmd_xcursor_theme.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/seat/extr_xcursor_theme.c_seat_cmd_xcursor_theme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"xcursor_theme\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@EXPECTED_AT_MOST = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_8__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"No seat defined\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Expected a positive integer size\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @seat_cmd_xcursor_theme(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %12 = call %struct.cmd_results* @checkarg(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1)
  store %struct.cmd_results* %12, %struct.cmd_results** %6, align 8
  %13 = icmp ne %struct.cmd_results* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @EXPECTED_AT_MOST, align 4
  %17 = call %struct.cmd_results* @checkarg(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %16, i32 2)
  store %struct.cmd_results* %17, %struct.cmd_results** %6, align 8
  %18 = icmp ne %struct.cmd_results* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %2
  %20 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %20, %struct.cmd_results** %3, align 8
  br label %74

21:                                               ; preds = %14
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @CMD_FAILURE, align 4
  %29 = call %struct.cmd_results* @cmd_results_new(i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %29, %struct.cmd_results** %3, align 8
  br label %74

30:                                               ; preds = %21
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %7, align 8
  store i32 24, i32* %8, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strtoul(i8* %39, i8** %9, i32 10)
  store i32 %40, i32* %8, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @CMD_INVALID, align 4
  %46 = call %struct.cmd_results* @cmd_results_new(i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cmd_results* %46, %struct.cmd_results** %3, align 8
  br label %74

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %30
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @free(i32 %55)
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strdup(i8* %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i32 %58, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 %65, i32* %71, align 4
  %72 = load i32, i32* @CMD_SUCCESS, align 4
  %73 = call %struct.cmd_results* @cmd_results_new(i32 %72, i8* null)
  store %struct.cmd_results* %73, %struct.cmd_results** %3, align 8
  br label %74

74:                                               ; preds = %48, %44, %27, %19
  %75 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %75
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
