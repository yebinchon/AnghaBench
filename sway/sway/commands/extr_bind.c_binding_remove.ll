; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_binding_remove.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_binding_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_results = type { i32 }
%struct.sway_binding = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.sway_binding** }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s - Unbound `%s` from device '%s'\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Could not find binding `%s` for the given flags\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (%struct.sway_binding*, %struct.TYPE_4__*, i8*, i8*)* @binding_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @binding_remove(%struct.sway_binding* %0, %struct.TYPE_4__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.cmd_results*, align 8
  %6 = alloca %struct.sway_binding*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sway_binding*, align 8
  store %struct.sway_binding* %0, %struct.sway_binding** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %48, %4
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %12
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.sway_binding**, %struct.sway_binding*** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.sway_binding*, %struct.sway_binding** %21, i64 %23
  %25 = load %struct.sway_binding*, %struct.sway_binding** %24, align 8
  store %struct.sway_binding* %25, %struct.sway_binding** %11, align 8
  %26 = load %struct.sway_binding*, %struct.sway_binding** %6, align 8
  %27 = load %struct.sway_binding*, %struct.sway_binding** %11, align 8
  %28 = call i64 @binding_key_compare(%struct.sway_binding* %26, %struct.sway_binding* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %18
  %31 = load i32, i32* @SWAY_DEBUG, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.sway_binding*, %struct.sway_binding** %6, align 8
  %35 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sway_log(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %33, i32 %36)
  %38 = load %struct.sway_binding*, %struct.sway_binding** %11, align 8
  %39 = call i32 @free_sway_binding(%struct.sway_binding* %38)
  %40 = load %struct.sway_binding*, %struct.sway_binding** %6, align 8
  %41 = call i32 @free_sway_binding(%struct.sway_binding* %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @list_del(%struct.TYPE_4__* %42, i32 %43)
  %45 = load i32, i32* @CMD_SUCCESS, align 4
  %46 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %45, i8* null)
  store %struct.cmd_results* %46, %struct.cmd_results** %5, align 8
  br label %57

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %12

51:                                               ; preds = %12
  %52 = load %struct.sway_binding*, %struct.sway_binding** %6, align 8
  %53 = call i32 @free_sway_binding(%struct.sway_binding* %52)
  %54 = load i32, i32* @CMD_FAILURE, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  store %struct.cmd_results* %56, %struct.cmd_results** %5, align 8
  br label %57

57:                                               ; preds = %51, %30
  %58 = load %struct.cmd_results*, %struct.cmd_results** %5, align 8
  ret %struct.cmd_results* %58
}

declare dso_local i64 @binding_key_compare(%struct.sway_binding*, %struct.sway_binding*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @free_sway_binding(%struct.sway_binding*) #1

declare dso_local i32 @list_del(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
