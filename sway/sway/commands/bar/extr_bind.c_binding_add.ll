; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/bar/extr_bind.c_binding_add.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/bar/extr_bind.c_binding_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.cmd_results = type { i32 }
%struct.bar_binding = type { i64, i64 }
%struct.TYPE_7__ = type { i32, %struct.bar_binding** }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"[bar %s] Updated binding for %u (%s)%s\00", align 1
@config = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c" - release\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"[bar %s] Added binding for %u (%s)%s\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (%struct.bar_binding*, %struct.TYPE_7__*)* @binding_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @binding_add(%struct.bar_binding* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.bar_binding*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bar_binding*, align 8
  store %struct.bar_binding* %0, %struct.bar_binding** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.bar_binding*, %struct.bar_binding** %3, align 8
  %10 = getelementptr inbounds %struct.bar_binding, %struct.bar_binding* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i8* @get_mouse_button_name(i64 %11)
  store i8* %12, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %70, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %73

19:                                               ; preds = %13
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.bar_binding**, %struct.bar_binding*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bar_binding*, %struct.bar_binding** %22, i64 %24
  %26 = load %struct.bar_binding*, %struct.bar_binding** %25, align 8
  store %struct.bar_binding* %26, %struct.bar_binding** %8, align 8
  %27 = load %struct.bar_binding*, %struct.bar_binding** %8, align 8
  %28 = getelementptr inbounds %struct.bar_binding, %struct.bar_binding* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bar_binding*, %struct.bar_binding** %3, align 8
  %31 = getelementptr inbounds %struct.bar_binding, %struct.bar_binding* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %19
  %35 = load %struct.bar_binding*, %struct.bar_binding** %8, align 8
  %36 = getelementptr inbounds %struct.bar_binding, %struct.bar_binding* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.bar_binding*, %struct.bar_binding** %3, align 8
  %39 = getelementptr inbounds %struct.bar_binding, %struct.bar_binding* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  %43 = load %struct.bar_binding*, %struct.bar_binding** %3, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.bar_binding**, %struct.bar_binding*** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.bar_binding*, %struct.bar_binding** %46, i64 %48
  store %struct.bar_binding* %43, %struct.bar_binding** %49, align 8
  %50 = load %struct.bar_binding*, %struct.bar_binding** %8, align 8
  %51 = call i32 @free_bar_binding(%struct.bar_binding* %50)
  %52 = load i32, i32* @SWAY_DEBUG, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bar_binding*, %struct.bar_binding** %3, align 8
  %59 = getelementptr inbounds %struct.bar_binding, %struct.bar_binding* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load %struct.bar_binding*, %struct.bar_binding** %3, align 8
  %63 = getelementptr inbounds %struct.bar_binding, %struct.bar_binding* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %68 = call i32 @sway_log(i32 %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %57, i64 %60, i8* %61, i8* %67)
  br label %73

69:                                               ; preds = %34, %19
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %13

73:                                               ; preds = %42, %13
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %97, label %76

76:                                               ; preds = %73
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = load %struct.bar_binding*, %struct.bar_binding** %3, align 8
  %79 = call i32 @list_add(%struct.TYPE_7__* %77, %struct.bar_binding* %78)
  %80 = load i32, i32* @SWAY_DEBUG, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bar_binding*, %struct.bar_binding** %3, align 8
  %87 = getelementptr inbounds %struct.bar_binding, %struct.bar_binding* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load %struct.bar_binding*, %struct.bar_binding** %3, align 8
  %91 = getelementptr inbounds %struct.bar_binding, %struct.bar_binding* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %96 = call i32 @sway_log(i32 %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %85, i64 %88, i8* %89, i8* %95)
  br label %97

97:                                               ; preds = %76, %73
  %98 = load i32, i32* @CMD_SUCCESS, align 4
  %99 = call %struct.cmd_results* @cmd_results_new(i32 %98, i32* null)
  ret %struct.cmd_results* %99
}

declare dso_local i8* @get_mouse_button_name(i64) #1

declare dso_local i32 @free_bar_binding(%struct.bar_binding*) #1

declare dso_local i32 @sway_log(i32, i8*, i32, i64, i8*, i8*) #1

declare dso_local i32 @list_add(%struct.TYPE_7__*, %struct.bar_binding*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
