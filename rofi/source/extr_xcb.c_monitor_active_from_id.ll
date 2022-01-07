; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_monitor_active_from_id.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_monitor_active_from_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@xcb = common dso_local global %struct.TYPE_15__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"Viewport does not exist for current desktop: %d, falling back to mouse location (-5)\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"Failed to get viewport for current desktop: %d, falling back to mouse location (-5).\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Failed to get current desktop, falling back to mouse location (-5).\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"Failed to find monitor, fall back to monitor showing mouse.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_14__*)* @monitor_active_from_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monitor_active_from_id(i32 %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** @xcb, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, -3
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @pointer_get(i32 %21, i32* %7, i32* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = call i32 @monitor_dimensions(i32 %25, i32 %26, %struct.TYPE_14__* %27)
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %3, align 4
  br label %136

36:                                               ; preds = %20
  br label %132

37:                                               ; preds = %2
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %100

40:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** @xcb, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** @xcb, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @xcb_ewmh_get_current_desktop(i32* %42, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** @xcb, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @xcb_ewmh_get_current_desktop_reply(i32* %48, i32 %49, i32* %9, i32* null)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %97

52:                                               ; preds = %40
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** @xcb, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** @xcb, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @xcb_ewmh_get_desktop_viewport(i32* %54, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** @xcb, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @xcb_ewmh_get_desktop_viewport_reply(i32* %60, i32 %61, %struct.TYPE_13__* %12, i32* null)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %52
  %65 = load i32, i32* %9, align 4
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ult i32 %65, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = call i32 @monitor_dimensions(i32 %76, i32 %83, %struct.TYPE_14__* %84)
  %86 = call i32 @xcb_ewmh_get_desktop_viewport_reply_wipe(%struct.TYPE_13__* %12)
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %3, align 4
  br label %136

88:                                               ; preds = %64
  %89 = load i32, i32* %9, align 4
  %90 = call i32 (i8*, ...) @g_debug(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88
  %92 = call i32 @xcb_ewmh_get_desktop_viewport_reply_wipe(%struct.TYPE_13__* %12)
  br label %96

93:                                               ; preds = %52
  %94 = load i32, i32* %9, align 4
  %95 = call i32 (i8*, ...) @g_debug(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %93, %91
  br label %99

97:                                               ; preds = %40
  %98 = call i32 (i8*, ...) @g_debug(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %96
  br label %131

100:                                              ; preds = %37
  %101 = load i32, i32* %4, align 4
  %102 = icmp eq i32 %101, -2
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %104, -4
  br i1 %105, label %106, label %114

106:                                              ; preds = %103, %100
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %109 = call i64 @monitor_active_from_id_focused(i32 %107, %struct.TYPE_14__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* @TRUE, align 4
  store i32 %112, i32* %3, align 4
  br label %136

113:                                              ; preds = %106
  br label %130

114:                                              ; preds = %103
  %115 = load i32, i32* %4, align 4
  %116 = icmp eq i32 %115, -5
  br i1 %116, label %117, label %129

117:                                              ; preds = %114
  %118 = load i32, i32* %6, align 4
  %119 = call i64 @pointer_get(i32 %118, i32* %7, i32* %8)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %125 = call i32 @monitor_dimensions(i32 %122, i32 %123, %struct.TYPE_14__* %124)
  %126 = load i32, i32* @TRUE, align 4
  store i32 %126, i32* %3, align 4
  br label %136

127:                                              ; preds = %117
  %128 = load i32, i32* @FALSE, align 4
  store i32 %128, i32* %3, align 4
  br label %136

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %113
  br label %131

131:                                              ; preds = %130, %99
  br label %132

132:                                              ; preds = %131, %36
  %133 = call i32 (i8*, ...) @g_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %135 = call i32 @monitor_active_from_id(i32 -5, %struct.TYPE_14__* %134)
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %132, %127, %121, %111, %69, %24
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i64 @pointer_get(i32, i32*, i32*) #1

declare dso_local i32 @monitor_dimensions(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @xcb_ewmh_get_current_desktop(i32*, i32) #1

declare dso_local i64 @xcb_ewmh_get_current_desktop_reply(i32*, i32, i32*, i32*) #1

declare dso_local i32 @xcb_ewmh_get_desktop_viewport(i32*, i32) #1

declare dso_local i64 @xcb_ewmh_get_desktop_viewport_reply(i32*, i32, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @xcb_ewmh_get_desktop_viewport_reply_wipe(%struct.TYPE_13__*) #1

declare dso_local i32 @g_debug(i8*, ...) #1

declare dso_local i64 @monitor_active_from_id_focused(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
