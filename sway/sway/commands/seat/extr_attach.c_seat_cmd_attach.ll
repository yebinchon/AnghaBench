; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/seat/extr_attach.c_seat_cmd_attach.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/seat/extr_attach.c_seat_cmd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cmd_results = type { i32 }
%struct.seat_attachment_config = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"attach\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_6__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"No seat defined\00", align 1
@CMD_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to allocate seat attachment config\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @seat_cmd_attach(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.seat_attachment_config*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %10 = call %struct.cmd_results* @checkarg(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %9, i32 1)
  store %struct.cmd_results* %10, %struct.cmd_results** %6, align 8
  %11 = icmp ne %struct.cmd_results* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %13, %struct.cmd_results** %3, align 8
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @CMD_FAILURE, align 4
  %22 = call %struct.cmd_results* @cmd_results_new(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %22, %struct.cmd_results** %3, align 8
  br label %55

23:                                               ; preds = %14
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @CMD_DEFER, align 4
  %30 = call %struct.cmd_results* @cmd_results_new(i32 %29, i8* null)
  store %struct.cmd_results* %30, %struct.cmd_results** %3, align 8
  br label %55

31:                                               ; preds = %23
  %32 = call %struct.seat_attachment_config* (...) @seat_attachment_config_new()
  store %struct.seat_attachment_config* %32, %struct.seat_attachment_config** %7, align 8
  %33 = load %struct.seat_attachment_config*, %struct.seat_attachment_config** %7, align 8
  %34 = icmp ne %struct.seat_attachment_config* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @CMD_FAILURE, align 4
  %37 = call %struct.cmd_results* @cmd_results_new(i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cmd_results* %37, %struct.cmd_results** %3, align 8
  br label %55

38:                                               ; preds = %31
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strdup(i8* %41)
  %43 = load %struct.seat_attachment_config*, %struct.seat_attachment_config** %7, align 8
  %44 = getelementptr inbounds %struct.seat_attachment_config, %struct.seat_attachment_config* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.seat_attachment_config*, %struct.seat_attachment_config** %7, align 8
  %52 = call i32 @list_add(i32 %50, %struct.seat_attachment_config* %51)
  %53 = load i32, i32* @CMD_SUCCESS, align 4
  %54 = call %struct.cmd_results* @cmd_results_new(i32 %53, i8* null)
  store %struct.cmd_results* %54, %struct.cmd_results** %3, align 8
  br label %55

55:                                               ; preds = %38, %35, %28, %20, %12
  %56 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %56
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local %struct.seat_attachment_config* @seat_attachment_config_new(...) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @list_add(i32, %struct.seat_attachment_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
