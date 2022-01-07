; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_describe_view.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_describe_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i8*, %struct.TYPE_12__*, i32, i32, %struct.TYPE_10__, i64, i64, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i8** }
%struct.wlr_box = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"app_id\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"marks\00", align 1
@B_PIXEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"window_rect\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"geometry\00", align 1
@SWAY_VIEW_XWAYLAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*, i32*)* @ipc_json_describe_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipc_json_describe_view(%struct.sway_container* %0, i32* %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wlr_box, align 8
  %11 = alloca %struct.wlr_box, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %14 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i32* @json_object_new_int(i64 %17)
  %19 = call i32 @json_object_object_add(i32* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %21 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = call i8* @view_get_app_id(%struct.TYPE_12__* %22)
  store i8* %23, i8** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i8*, i8** %5, align 8
  %29 = call i32* @json_object_new_string(i8* %28)
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32* [ %29, %27 ], [ null, %30 ]
  %33 = call i32 @json_object_object_add(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %32)
  %34 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %35 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %34, i32 0, i32 1
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = call i32 @view_is_visible(%struct.TYPE_12__* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32* @json_object_new_boolean(i32 %39)
  %41 = call i32 @json_object_object_add(i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %40)
  %42 = call i32* (...) @json_object_new_array()
  store i32* %42, i32** %7, align 8
  %43 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %44 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %43, i32 0, i32 7
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %63, %31
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32* @json_object_new_string(i8* %60)
  %62 = call i32 @json_object_array_add(i32* %53, i32* %61)
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %46

66:                                               ; preds = %46
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @json_object_object_add(i32* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %68)
  %70 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 0
  %71 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %72 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %75 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %70, align 8
  %79 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 1
  %80 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %81 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @B_PIXEL, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %66
  %87 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %88 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  br label %92

91:                                               ; preds = %66
  br label %92

92:                                               ; preds = %91, %86
  %93 = phi i32 [ %90, %86 ], [ 0, %91 ]
  store i32 %93, i32* %79, align 4
  %94 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 2
  %95 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %96 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %94, align 8
  %98 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %10, i32 0, i32 3
  %99 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %100 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %98, align 8
  %103 = load i32*, i32** %4, align 8
  %104 = call i32* @ipc_json_create_rect(%struct.wlr_box* %10)
  %105 = call i32 @json_object_object_add(i32* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %104)
  %106 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %11, i32 0, i32 0
  store i32 0, i32* %106, align 8
  %107 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %11, i32 0, i32 1
  store i32 0, i32* %107, align 4
  %108 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %11, i32 0, i32 2
  %109 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %110 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %109, i32 0, i32 1
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %108, align 8
  %114 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %11, i32 0, i32 3
  %115 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %116 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %115, i32 0, i32 1
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %114, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = call i32* @ipc_json_create_rect(%struct.wlr_box* %11)
  %123 = call i32 @json_object_object_add(i32* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %122)
  ret void
}

declare dso_local i32 @json_object_object_add(i32*, i8*, i32*) #1

declare dso_local i32* @json_object_new_int(i64) #1

declare dso_local i8* @view_get_app_id(%struct.TYPE_12__*) #1

declare dso_local i32* @json_object_new_string(i8*) #1

declare dso_local i32 @view_is_visible(%struct.TYPE_12__*) #1

declare dso_local i32* @json_object_new_boolean(i32) #1

declare dso_local i32* @json_object_new_array(...) #1

declare dso_local i32 @json_object_array_add(i32*, i32*) #1

declare dso_local i32* @ipc_json_create_rect(%struct.wlr_box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
