; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_switch_binding_add.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_switch_binding_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.sway_switch_binding** }
%struct.sway_switch_binding = type { i8* }
%struct.cmd_results = type { i32 }

@config = common dso_local global %struct.TYPE_7__* null, align 8
@SWAY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Overwriting binding '%s' to `%s` from `%s`\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Overwriting binding'%s' to `%s` from `%s`\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"%s - Bound %s to command `%s`\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (%struct.sway_switch_binding*, i8*, i8*, i32)* @switch_binding_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @switch_binding_add(%struct.sway_switch_binding* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sway_switch_binding*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sway_switch_binding*, align 8
  store %struct.sway_switch_binding* %0, %struct.sway_switch_binding** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %68, %4
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %71

24:                                               ; preds = %18
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.sway_switch_binding**, %struct.sway_switch_binding*** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sway_switch_binding*, %struct.sway_switch_binding** %27, i64 %29
  %31 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %30, align 8
  store %struct.sway_switch_binding* %31, %struct.sway_switch_binding** %12, align 8
  %32 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %5, align 8
  %33 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %12, align 8
  %34 = call i64 @binding_switch_compare(%struct.sway_switch_binding* %32, %struct.sway_switch_binding* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %24
  %37 = load i32, i32* @SWAY_INFO, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %5, align 8
  %40 = getelementptr inbounds %struct.sway_switch_binding, %struct.sway_switch_binding* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %12, align 8
  %43 = getelementptr inbounds %struct.sway_switch_binding, %struct.sway_switch_binding* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @sway_log(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %41, i8* %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %36
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %5, align 8
  %51 = getelementptr inbounds %struct.sway_switch_binding, %struct.sway_switch_binding* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %12, align 8
  %54 = getelementptr inbounds %struct.sway_switch_binding, %struct.sway_switch_binding* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @config_add_swaynag_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %52, i8* %55)
  br label %57

57:                                               ; preds = %48, %36
  %58 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %12, align 8
  %59 = call i32 @free_switch_binding(%struct.sway_switch_binding* %58)
  %60 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %5, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load %struct.sway_switch_binding**, %struct.sway_switch_binding*** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.sway_switch_binding*, %struct.sway_switch_binding** %63, i64 %65
  store %struct.sway_switch_binding* %60, %struct.sway_switch_binding** %66, align 8
  store i32 1, i32* %10, align 4
  br label %67

67:                                               ; preds = %57, %24
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %18

71:                                               ; preds = %18
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %71
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %76 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %5, align 8
  %77 = call i32 @list_add(%struct.TYPE_6__* %75, %struct.sway_switch_binding* %76)
  %78 = load i32, i32* @SWAY_DEBUG, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %5, align 8
  %82 = getelementptr inbounds %struct.sway_switch_binding, %struct.sway_switch_binding* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @sway_log(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %79, i8* %80, i8* %83)
  br label %85

85:                                               ; preds = %74, %71
  %86 = load i32, i32* @CMD_SUCCESS, align 4
  %87 = call %struct.cmd_results* @cmd_results_new(i32 %86, i32* null)
  ret %struct.cmd_results* %87
}

declare dso_local i64 @binding_switch_compare(%struct.sway_switch_binding*, %struct.sway_switch_binding*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @config_add_swaynag_warning(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free_switch_binding(%struct.sway_switch_binding*) #1

declare dso_local i32 @list_add(%struct.TYPE_6__*, %struct.sway_switch_binding*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
