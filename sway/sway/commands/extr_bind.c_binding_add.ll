; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_binding_add.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_binding_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_results = type { i32 }
%struct.sway_binding = type { i8*, i8* }

@SWAY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Overwriting binding '%s' for device '%s' to `%s` from `%s`\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Overwriting binding'%s' for device '%s' to `%s` from `%s`\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"%s - Bound %s to command `%s` for device '%s'\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (%struct.sway_binding*, i32*, i8*, i8*, i32)* @binding_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @binding_add(%struct.sway_binding* %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.sway_binding*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sway_binding*, align 8
  store %struct.sway_binding* %0, %struct.sway_binding** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.sway_binding*, %struct.sway_binding** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call %struct.sway_binding* @binding_upsert(%struct.sway_binding* %12, i32* %13)
  store %struct.sway_binding* %14, %struct.sway_binding** %11, align 8
  %15 = load %struct.sway_binding*, %struct.sway_binding** %11, align 8
  %16 = icmp ne %struct.sway_binding* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %5
  %18 = load i32, i32* @SWAY_INFO, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load %struct.sway_binding*, %struct.sway_binding** %6, align 8
  %21 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.sway_binding*, %struct.sway_binding** %6, align 8
  %24 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.sway_binding*, %struct.sway_binding** %11, align 8
  %27 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @sway_log(i32 %18, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %22, i8* %25, i8* %28)
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %17
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.sway_binding*, %struct.sway_binding** %6, align 8
  %35 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.sway_binding*, %struct.sway_binding** %6, align 8
  %38 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.sway_binding*, %struct.sway_binding** %11, align 8
  %41 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @config_add_swaynag_warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %33, i8* %36, i8* %39, i8* %42)
  br label %44

44:                                               ; preds = %32, %17
  %45 = load %struct.sway_binding*, %struct.sway_binding** %11, align 8
  %46 = call i32 @free_sway_binding(%struct.sway_binding* %45)
  br label %58

47:                                               ; preds = %5
  %48 = load i32, i32* @SWAY_DEBUG, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.sway_binding*, %struct.sway_binding** %6, align 8
  %52 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.sway_binding*, %struct.sway_binding** %6, align 8
  %55 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @sway_log(i32 %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %49, i8* %50, i8* %53, i8* %56)
  br label %58

58:                                               ; preds = %47, %44
  %59 = load i32, i32* @CMD_SUCCESS, align 4
  %60 = call %struct.cmd_results* @cmd_results_new(i32 %59, i32* null)
  ret %struct.cmd_results* %60
}

declare dso_local %struct.sway_binding* @binding_upsert(%struct.sway_binding*, i32*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @config_add_swaynag_warning(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free_sway_binding(%struct.sway_binding*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
