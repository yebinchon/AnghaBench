; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_create_node.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlr_box = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rect\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"focused\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"focus\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"border\00", align 1
@B_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"current_border_width\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@L_HORIZ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"window_rect\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"deco_rect\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"geometry\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"urgent\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"floating_nodes\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"sticky\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i8*, i32, i32*, %struct.wlr_box*)* @ipc_json_create_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ipc_json_create_node(i32 %0, i8* %1, i32 %2, i32* %3, %struct.wlr_box* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.wlr_box*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.wlr_box* %4, %struct.wlr_box** %10, align 8
  %12 = call i32* (...) @json_object_new_object()
  store i32* %12, i32** %11, align 8
  %13 = load i32*, i32** %11, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32* @json_object_new_int(i32 %14)
  %16 = call i32 @json_object_object_add(i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %15)
  %17 = load i32*, i32** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i8*, i8** %7, align 8
  %22 = call i32* @json_object_new_string(i8* %21)
  br label %24

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32* [ %22, %20 ], [ null, %23 ]
  %26 = call i32 @json_object_object_add(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %25)
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.wlr_box*, %struct.wlr_box** %10, align 8
  %29 = call i32* @ipc_json_create_rect(%struct.wlr_box* %28)
  %30 = call i32 @json_object_object_add(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %29)
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32* @json_object_new_boolean(i32 %32)
  %34 = call i32 @json_object_object_add(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %33)
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @json_object_object_add(i32* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %36)
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* @B_NONE, align 4
  %40 = call i8* @ipc_json_border_description(i32 %39)
  %41 = call i32* @json_object_new_string(i8* %40)
  %42 = call i32 @json_object_object_add(i32* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %41)
  %43 = load i32*, i32** %11, align 8
  %44 = call i32* @json_object_new_int(i32 0)
  %45 = call i32 @json_object_object_add(i32* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32* %44)
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* @L_HORIZ, align 4
  %48 = call i8* @ipc_json_layout_description(i32 %47)
  %49 = call i32* @json_object_new_string(i8* %48)
  %50 = call i32 @json_object_object_add(i32* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %49)
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* @L_HORIZ, align 4
  %53 = call i8* @ipc_json_orientation_description(i32 %52)
  %54 = call i32* @json_object_new_string(i8* %53)
  %55 = call i32 @json_object_object_add(i32* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %54)
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @json_object_object_add(i32* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* null)
  %58 = load i32*, i32** %11, align 8
  %59 = call i32* (...) @ipc_json_create_empty_rect()
  %60 = call i32 @json_object_object_add(i32* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32* %59)
  %61 = load i32*, i32** %11, align 8
  %62 = call i32* (...) @ipc_json_create_empty_rect()
  %63 = call i32 @json_object_object_add(i32* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* %62)
  %64 = load i32*, i32** %11, align 8
  %65 = call i32* (...) @ipc_json_create_empty_rect()
  %66 = call i32 @json_object_object_add(i32* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32* %65)
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @json_object_object_add(i32* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32* null)
  %69 = load i32*, i32** %11, align 8
  %70 = call i32* @json_object_new_boolean(i32 0)
  %71 = call i32 @json_object_object_add(i32* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32* %70)
  %72 = load i32*, i32** %11, align 8
  %73 = call i32* (...) @json_object_new_array()
  %74 = call i32 @json_object_object_add(i32* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32* %73)
  %75 = load i32*, i32** %11, align 8
  %76 = call i32* @json_object_new_boolean(i32 0)
  %77 = call i32 @json_object_object_add(i32* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32* %76)
  %78 = load i32*, i32** %11, align 8
  ret i32* %78
}

declare dso_local i32* @json_object_new_object(...) #1

declare dso_local i32 @json_object_object_add(i32*, i8*, i32*) #1

declare dso_local i32* @json_object_new_int(i32) #1

declare dso_local i32* @json_object_new_string(i8*) #1

declare dso_local i32* @ipc_json_create_rect(%struct.wlr_box*) #1

declare dso_local i32* @json_object_new_boolean(i32) #1

declare dso_local i8* @ipc_json_border_description(i32) #1

declare dso_local i8* @ipc_json_layout_description(i32) #1

declare dso_local i8* @ipc_json_orientation_description(i32) #1

declare dso_local i32* @ipc_json_create_empty_rect(...) #1

declare dso_local i32* @json_object_new_array(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
