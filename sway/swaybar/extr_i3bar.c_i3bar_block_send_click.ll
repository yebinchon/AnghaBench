; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_i3bar.c_i3bar_block_send_click.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_i3bar.c_i3bar_block_send_click.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status_line = type { i32, i32, i32 }
%struct.i3bar_block = type { i64, i64 }
%struct.json_object = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"block %s clicked\00", align 1
@HOTSPOT_PROCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"instance\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"button\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"relative_x\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"relative_y\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"[failed to write click event]\00", align 1
@HOTSPOT_IGNORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i3bar_block_send_click(%struct.status_line* %0, %struct.i3bar_block* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.status_line*, align 8
  %12 = alloca %struct.i3bar_block*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.json_object*, align 8
  store %struct.status_line* %0, %struct.status_line** %11, align 8
  store %struct.i3bar_block* %1, %struct.i3bar_block** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %21 = load i32, i32* @SWAY_DEBUG, align 4
  %22 = load %struct.i3bar_block*, %struct.i3bar_block** %12, align 8
  %23 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @sway_log(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load %struct.i3bar_block*, %struct.i3bar_block** %12, align 8
  %27 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %9
  %31 = load %struct.status_line*, %struct.status_line** %11, align 8
  %32 = getelementptr inbounds %struct.status_line, %struct.status_line* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30, %9
  %36 = load i32, i32* @HOTSPOT_PROCESS, align 4
  store i32 %36, i32* %10, align 4
  br label %112

37:                                               ; preds = %30
  %38 = call %struct.json_object* (...) @json_object_new_object()
  store %struct.json_object* %38, %struct.json_object** %20, align 8
  %39 = load %struct.json_object*, %struct.json_object** %20, align 8
  %40 = load %struct.i3bar_block*, %struct.i3bar_block** %12, align 8
  %41 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @json_object_new_string(i64 %42)
  %44 = call i32 @json_object_object_add(%struct.json_object* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.i3bar_block*, %struct.i3bar_block** %12, align 8
  %46 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %37
  %50 = load %struct.json_object*, %struct.json_object** %20, align 8
  %51 = load %struct.i3bar_block*, %struct.i3bar_block** %12, align 8
  %52 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @json_object_new_string(i64 %53)
  %55 = call i32 @json_object_object_add(%struct.json_object* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %49, %37
  %57 = load %struct.json_object*, %struct.json_object** %20, align 8
  %58 = load i32, i32* %19, align 4
  %59 = call i32 @event_to_x11_button(i32 %58)
  %60 = call i32 @json_object_new_int(i32 %59)
  %61 = call i32 @json_object_object_add(%struct.json_object* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load %struct.json_object*, %struct.json_object** %20, align 8
  %63 = load i32, i32* %19, align 4
  %64 = call i32 @json_object_new_int(i32 %63)
  %65 = call i32 @json_object_object_add(%struct.json_object* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load %struct.json_object*, %struct.json_object** %20, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @json_object_new_int(i32 %67)
  %69 = call i32 @json_object_object_add(%struct.json_object* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  %70 = load %struct.json_object*, %struct.json_object** %20, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @json_object_new_int(i32 %71)
  %73 = call i32 @json_object_object_add(%struct.json_object* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  %74 = load %struct.json_object*, %struct.json_object** %20, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @json_object_new_int(i32 %75)
  %77 = call i32 @json_object_object_add(%struct.json_object* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %76)
  %78 = load %struct.json_object*, %struct.json_object** %20, align 8
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @json_object_new_int(i32 %79)
  %81 = call i32 @json_object_object_add(%struct.json_object* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %80)
  %82 = load %struct.json_object*, %struct.json_object** %20, align 8
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @json_object_new_int(i32 %83)
  %85 = call i32 @json_object_object_add(%struct.json_object* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %84)
  %86 = load %struct.json_object*, %struct.json_object** %20, align 8
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @json_object_new_int(i32 %87)
  %89 = call i32 @json_object_object_add(%struct.json_object* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %88)
  %90 = load %struct.status_line*, %struct.status_line** %11, align 8
  %91 = getelementptr inbounds %struct.status_line, %struct.status_line* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.status_line*, %struct.status_line** %11, align 8
  %94 = getelementptr inbounds %struct.status_line, %struct.status_line* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %99 = load %struct.json_object*, %struct.json_object** %20, align 8
  %100 = call i32 @json_object_to_json_string(%struct.json_object* %99)
  %101 = call i64 @dprintf(i32 %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %98, i32 %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %56
  %104 = load %struct.status_line*, %struct.status_line** %11, align 8
  %105 = call i32 @status_error(%struct.status_line* %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %56
  %107 = load %struct.status_line*, %struct.status_line** %11, align 8
  %108 = getelementptr inbounds %struct.status_line, %struct.status_line* %107, i32 0, i32 0
  store i32 1, i32* %108, align 4
  %109 = load %struct.json_object*, %struct.json_object** %20, align 8
  %110 = call i32 @json_object_put(%struct.json_object* %109)
  %111 = load i32, i32* @HOTSPOT_IGNORE, align 4
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %106, %35
  %113 = load i32, i32* %10, align 4
  ret i32 %113
}

declare dso_local i32 @sway_log(i32, i8*, i64) #1

declare dso_local %struct.json_object* @json_object_new_object(...) #1

declare dso_local i32 @json_object_object_add(%struct.json_object*, i8*, i32) #1

declare dso_local i32 @json_object_new_string(i64) #1

declare dso_local i32 @json_object_new_int(i32) #1

declare dso_local i32 @event_to_x11_button(i32) #1

declare dso_local i64 @dprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @json_object_to_json_string(%struct.json_object*) #1

declare dso_local i32 @status_error(%struct.status_line*, i8*) #1

declare dso_local i32 @json_object_put(%struct.json_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
