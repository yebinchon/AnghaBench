; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_monitor_active_from_id_focused.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_monitor_active_from_id_focused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i32, i32, i64, i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@xcb = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [66 x i8] c"Failed to get active window, falling back to mouse location (-5).\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Failed to get parent window, falling back to mouse location (-5).\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"Failed to get geometry of active window, falling back to mouse location (-5).\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [88 x i8] c"Failed to get translate position of active window, falling back to mouse location (-5).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_13__*)* @monitor_active_from_id_focused to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monitor_active_from_id_focused(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xcb, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xcb, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @xcb_ewmh_get_active_window(i32* %17, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xcb, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @xcb_ewmh_get_active_window_reply(i32* %23, i32 %24, i32* %7, i32* null)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = call i32 @g_debug(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %146

30:                                               ; preds = %2
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xcb, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @xcb_query_tree(i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xcb, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call %struct.TYPE_12__* @xcb_query_tree_reply(i32 %38, i32 %39, i32* null)
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %10, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = icmp ne %struct.TYPE_12__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %30
  %44 = call i32 @g_debug(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %146

46:                                               ; preds = %30
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xcb, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @xcb_get_geometry(i32 %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xcb, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call %struct.TYPE_12__* @xcb_get_geometry_reply(i32 %54, i32 %55, i32* null)
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %12, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %58 = icmp ne %struct.TYPE_12__* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %46
  %60 = call i32 @g_debug(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %62 = call i32 @free(%struct.TYPE_12__* %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %146

64:                                               ; preds = %46
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xcb, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @xcb_translate_coordinates(i32 %67, i32 %70, i32 %73, i64 %76, i64 %79)
  store i32 %80, i32* %13, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** @xcb, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call %struct.TYPE_12__* @xcb_translate_coordinates_reply(i32 %83, i32 %84, i32* null)
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %14, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %87 = icmp ne %struct.TYPE_12__* %86, null
  br i1 %87, label %88, label %138

88:                                               ; preds = %64
  %89 = load i32, i32* %4, align 4
  %90 = icmp eq i32 %89, -2
  br i1 %90, label %91, label %121

91:                                               ; preds = %88
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 3
  store i64 %98, i64* %100, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* %6, align 4
  br label %135

121:                                              ; preds = %88
  %122 = load i32, i32* %4, align 4
  %123 = icmp eq i32 %122, -4
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = call i32 @monitor_dimensions(i64 %127, i64 %130, %struct.TYPE_13__* %131)
  %133 = load i32, i32* @TRUE, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %124, %121
  br label %135

135:                                              ; preds = %134, %91
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %137 = call i32 @free(%struct.TYPE_12__* %136)
  br label %140

138:                                              ; preds = %64
  %139 = call i32 @g_debug(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %135
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %142 = call i32 @free(%struct.TYPE_12__* %141)
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %144 = call i32 @free(%struct.TYPE_12__* %143)
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %140, %59, %43, %27
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @xcb_ewmh_get_active_window(i32*, i32) #1

declare dso_local i32 @xcb_ewmh_get_active_window_reply(i32*, i32, i32*, i32*) #1

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32 @xcb_query_tree(i32, i32) #1

declare dso_local %struct.TYPE_12__* @xcb_query_tree_reply(i32, i32, i32*) #1

declare dso_local i32 @xcb_get_geometry(i32, i32) #1

declare dso_local %struct.TYPE_12__* @xcb_get_geometry_reply(i32, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @xcb_translate_coordinates(i32, i32, i32, i64, i64) #1

declare dso_local %struct.TYPE_12__* @xcb_translate_coordinates_reply(i32, i32, i32*) #1

declare dso_local i32 @monitor_dimensions(i64, i64, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
