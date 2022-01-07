; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_sway_cursor_create.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_sway_cursor_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.sway_cursor = type { %struct.sway_cursor*, i32, i32, %struct.TYPE_13__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_10__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, i32, %struct.sway_seat*, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.sway_seat = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.wlr_cursor = type { %struct.wlr_cursor*, i32, i32, %struct.TYPE_13__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_10__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, i32, %struct.sway_seat*, i32, %struct.TYPE_9__, i32 }

@.str = private unnamed_addr constant [31 x i8] c"could not allocate sway cursor\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"could not allocate wlr cursor\00", align 1
@root = common dso_local global %struct.TYPE_16__* null, align 8
@server = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@hide_notify = common dso_local global i32 0, align 4
@handle_cursor_motion_relative = common dso_local global i32 0, align 4
@handle_cursor_motion_absolute = common dso_local global i32 0, align 4
@handle_cursor_button = common dso_local global i32 0, align 4
@handle_cursor_axis = common dso_local global i32 0, align 4
@handle_cursor_frame = common dso_local global i32 0, align 4
@handle_touch_down = common dso_local global i32 0, align 4
@handle_touch_up = common dso_local global i32 0, align 4
@handle_touch_motion = common dso_local global i32 0, align 4
@handle_tool_axis = common dso_local global i32 0, align 4
@handle_tool_tip = common dso_local global i32 0, align 4
@handle_tool_proximity = common dso_local global i32 0, align 4
@handle_tool_button = common dso_local global i32 0, align 4
@handle_request_set_cursor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_cursor* @sway_cursor_create(%struct.sway_seat* %0) #0 {
  %2 = alloca %struct.sway_cursor*, align 8
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_cursor*, align 8
  %5 = alloca %struct.wlr_cursor*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  %6 = call %struct.wlr_cursor* @calloc(i32 1, i32 152)
  %7 = bitcast %struct.wlr_cursor* %6 to %struct.sway_cursor*
  store %struct.sway_cursor* %7, %struct.sway_cursor** %4, align 8
  %8 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %9 = bitcast %struct.sway_cursor* %8 to %struct.wlr_cursor*
  %10 = call i32 @sway_assert(%struct.wlr_cursor* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.sway_cursor* null, %struct.sway_cursor** %2, align 8
  br label %197

13:                                               ; preds = %1
  %14 = call %struct.wlr_cursor* (...) @wlr_cursor_create()
  store %struct.wlr_cursor* %14, %struct.wlr_cursor** %5, align 8
  %15 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %16 = call i32 @sway_assert(%struct.wlr_cursor* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %20 = bitcast %struct.sway_cursor* %19 to %struct.wlr_cursor*
  %21 = call i32 @free(%struct.wlr_cursor* %20)
  store %struct.sway_cursor* null, %struct.sway_cursor** %2, align 8
  br label %197

22:                                               ; preds = %13
  %23 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %24 = getelementptr inbounds %struct.wlr_cursor, %struct.wlr_cursor* %23, i32 0, i32 22
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %27 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %26, i32 0, i32 21
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %30 = getelementptr inbounds %struct.wlr_cursor, %struct.wlr_cursor* %29, i32 0, i32 20
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %33 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %32, i32 0, i32 21
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %36 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %37 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %36, i32 0, i32 19
  store %struct.sway_seat* %35, %struct.sway_seat** %37, align 8
  %38 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** @root, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @wlr_cursor_attach_output_layout(%struct.wlr_cursor* %38, i32 %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 0), align 4
  %44 = load i32, i32* @hide_notify, align 4
  %45 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %46 = bitcast %struct.sway_cursor* %45 to %struct.wlr_cursor*
  %47 = call i32 @wl_event_loop_add_timer(i32 %43, i32 %44, %struct.wlr_cursor* %46)
  %48 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %49 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %48, i32 0, i32 18
  store i32 %47, i32* %49, align 8
  %50 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %51 = getelementptr inbounds %struct.wlr_cursor, %struct.wlr_cursor* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 11
  %53 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %54 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %53, i32 0, i32 17
  %55 = call i32 @wl_signal_add(i32* %52, %struct.TYPE_14__* %54)
  %56 = load i32, i32* @handle_cursor_motion_relative, align 4
  %57 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %58 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %57, i32 0, i32 17
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %61 = getelementptr inbounds %struct.wlr_cursor, %struct.wlr_cursor* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 10
  %63 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %64 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %63, i32 0, i32 16
  %65 = call i32 @wl_signal_add(i32* %62, %struct.TYPE_14__* %64)
  %66 = load i32, i32* @handle_cursor_motion_absolute, align 4
  %67 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %68 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %67, i32 0, i32 16
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %71 = getelementptr inbounds %struct.wlr_cursor, %struct.wlr_cursor* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 9
  %73 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %74 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %73, i32 0, i32 15
  %75 = call i32 @wl_signal_add(i32* %72, %struct.TYPE_14__* %74)
  %76 = load i32, i32* @handle_cursor_button, align 4
  %77 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %78 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %77, i32 0, i32 15
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  %80 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %81 = getelementptr inbounds %struct.wlr_cursor, %struct.wlr_cursor* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 8
  %83 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %84 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %83, i32 0, i32 14
  %85 = call i32 @wl_signal_add(i32* %82, %struct.TYPE_14__* %84)
  %86 = load i32, i32* @handle_cursor_axis, align 4
  %87 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %88 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %87, i32 0, i32 14
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %91 = getelementptr inbounds %struct.wlr_cursor, %struct.wlr_cursor* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 7
  %93 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %94 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %93, i32 0, i32 13
  %95 = call i32 @wl_signal_add(i32* %92, %struct.TYPE_14__* %94)
  %96 = load i32, i32* @handle_cursor_frame, align 4
  %97 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %98 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %97, i32 0, i32 13
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  %100 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %101 = getelementptr inbounds %struct.wlr_cursor, %struct.wlr_cursor* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 6
  %103 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %104 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %103, i32 0, i32 12
  %105 = call i32 @wl_signal_add(i32* %102, %struct.TYPE_14__* %104)
  %106 = load i32, i32* @handle_touch_down, align 4
  %107 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %108 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %107, i32 0, i32 12
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  %110 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %111 = getelementptr inbounds %struct.wlr_cursor, %struct.wlr_cursor* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 5
  %113 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %114 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %113, i32 0, i32 11
  %115 = call i32 @wl_signal_add(i32* %112, %struct.TYPE_14__* %114)
  %116 = load i32, i32* @handle_touch_up, align 4
  %117 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %118 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %117, i32 0, i32 11
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  %120 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %121 = getelementptr inbounds %struct.wlr_cursor, %struct.wlr_cursor* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 4
  %123 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %124 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %123, i32 0, i32 10
  %125 = call i32 @wl_signal_add(i32* %122, %struct.TYPE_14__* %124)
  %126 = load i32, i32* @handle_touch_motion, align 4
  %127 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %128 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %127, i32 0, i32 10
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %131 = getelementptr inbounds %struct.wlr_cursor, %struct.wlr_cursor* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 3
  %133 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %134 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %133, i32 0, i32 9
  %135 = call i32 @wl_signal_add(i32* %132, %struct.TYPE_14__* %134)
  %136 = load i32, i32* @handle_tool_axis, align 4
  %137 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %138 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %137, i32 0, i32 9
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 4
  %140 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %141 = getelementptr inbounds %struct.wlr_cursor, %struct.wlr_cursor* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %144 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %143, i32 0, i32 8
  %145 = call i32 @wl_signal_add(i32* %142, %struct.TYPE_14__* %144)
  %146 = load i32, i32* @handle_tool_tip, align 4
  %147 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %148 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %147, i32 0, i32 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 8
  %150 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %151 = getelementptr inbounds %struct.wlr_cursor, %struct.wlr_cursor* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %154 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %153, i32 0, i32 7
  %155 = call i32 @wl_signal_add(i32* %152, %struct.TYPE_14__* %154)
  %156 = load i32, i32* @handle_tool_proximity, align 4
  %157 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %158 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %157, i32 0, i32 7
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 4
  %160 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %161 = getelementptr inbounds %struct.wlr_cursor, %struct.wlr_cursor* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %164 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %163, i32 0, i32 5
  %165 = call i32 @wl_signal_add(i32* %162, %struct.TYPE_14__* %164)
  %166 = load i32, i32* @handle_tool_button, align 4
  %167 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %168 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 8
  %170 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %171 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %170, i32 0, i32 0
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %176 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %175, i32 0, i32 4
  %177 = call i32 @wl_signal_add(i32* %174, %struct.TYPE_14__* %176)
  %178 = load i32, i32* @handle_request_set_cursor, align 4
  %179 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %180 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 4
  %182 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %183 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = call i32 @wl_list_init(i32* %184)
  %186 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %187 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %186, i32 0, i32 2
  %188 = call i32 @wl_list_init(i32* %187)
  %189 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %190 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %189, i32 0, i32 1
  %191 = call i32 @wl_list_init(i32* %190)
  %192 = load %struct.wlr_cursor*, %struct.wlr_cursor** %5, align 8
  %193 = bitcast %struct.wlr_cursor* %192 to %struct.sway_cursor*
  %194 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  %195 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %194, i32 0, i32 0
  store %struct.sway_cursor* %193, %struct.sway_cursor** %195, align 8
  %196 = load %struct.sway_cursor*, %struct.sway_cursor** %4, align 8
  store %struct.sway_cursor* %196, %struct.sway_cursor** %2, align 8
  br label %197

197:                                              ; preds = %22, %18, %12
  %198 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  ret %struct.sway_cursor* %198
}

declare dso_local %struct.wlr_cursor* @calloc(i32, i32) #1

declare dso_local i32 @sway_assert(%struct.wlr_cursor*, i8*) #1

declare dso_local %struct.wlr_cursor* @wlr_cursor_create(...) #1

declare dso_local i32 @free(%struct.wlr_cursor*) #1

declare dso_local i32 @wlr_cursor_attach_output_layout(%struct.wlr_cursor*, i32) #1

declare dso_local i32 @wl_event_loop_add_timer(i32, i32, %struct.wlr_cursor*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @wl_list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
