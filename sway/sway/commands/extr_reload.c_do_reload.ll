; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_reload.c_do_reload.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_reload.c_do_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.bar_config** }
%struct.bar_config = type { i32 }
%struct.TYPE_8__ = type { i32, i32* }

@config = common dso_local global %struct.TYPE_9__* null, align 8
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error(s) reloading config\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"reload\00", align 1
@rebuild_textures_iterator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_reload(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bar_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bar_config*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = call %struct.TYPE_8__* (...) @create_list()
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @config, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %10
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @config, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.bar_config**, %struct.bar_config*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bar_config*, %struct.bar_config** %23, i64 %25
  %27 = load %struct.bar_config*, %struct.bar_config** %26, align 8
  store %struct.bar_config* %27, %struct.bar_config** %5, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = load %struct.bar_config*, %struct.bar_config** %5, align 8
  %30 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strdup(i32 %31)
  %33 = call i32 @list_add(%struct.TYPE_8__* %28, i32 %32)
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %10

37:                                               ; preds = %10
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @config, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @load_main_config(i32 %40, i32 1, i32 0)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @SWAY_ERROR, align 4
  %45 = call i32 @sway_log(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = call i32 @list_free_items_and_destroy(%struct.TYPE_8__* %46)
  br label %106

48:                                               ; preds = %37
  %49 = call i32 @ipc_event_workspace(i32* null, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 (...) @load_swaybars()
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %96, %48
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @config, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %52, %57
  br i1 %58, label %59, label %99

59:                                               ; preds = %51
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** @config, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load %struct.bar_config**, %struct.bar_config*** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.bar_config*, %struct.bar_config** %64, i64 %66
  %68 = load %struct.bar_config*, %struct.bar_config** %67, align 8
  store %struct.bar_config* %68, %struct.bar_config** %7, align 8
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %92, %59
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %69
  %76 = load %struct.bar_config*, %struct.bar_config** %7, align 8
  %77 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @strcmp(i32 %78, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %75
  %89 = load %struct.bar_config*, %struct.bar_config** %7, align 8
  %90 = call i32 @ipc_event_barconfig_update(%struct.bar_config* %89)
  br label %95

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %69

95:                                               ; preds = %88, %69
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %51

99:                                               ; preds = %51
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = call i32 @list_free_items_and_destroy(%struct.TYPE_8__* %100)
  %102 = call i32 @config_update_font_height(i32 1)
  %103 = load i32, i32* @rebuild_textures_iterator, align 4
  %104 = call i32 @root_for_each_container(i32 %103, i32* null)
  %105 = call i32 (...) @arrange_root()
  br label %106

106:                                              ; preds = %99, %43
  ret void
}

declare dso_local %struct.TYPE_8__* @create_list(...) #1

declare dso_local i32 @list_add(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @load_main_config(i32, i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @list_free_items_and_destroy(%struct.TYPE_8__*) #1

declare dso_local i32 @ipc_event_workspace(i32*, i32*, i8*) #1

declare dso_local i32 @load_swaybars(...) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @ipc_event_barconfig_update(%struct.bar_config*) #1

declare dso_local i32 @config_update_font_height(i32) #1

declare dso_local i32 @root_for_each_container(i32, i32*) #1

declare dso_local i32 @arrange_root(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
