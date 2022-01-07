; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_move.c_container_move_to_container_from_direction.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_move.c_container_move_to_container_from_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sway_container = type { i64, i64, %struct.sway_node, i64, i64, i64, i64, %struct.TYPE_4__*, i32, i64 }
%struct.sway_node = type { %struct.sway_container* }
%struct.TYPE_4__ = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Swapping siblings\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Promoting to sibling of cousin\00", align 1
@WLR_DIRECTION_LEFT = common dso_local global i32 0, align 4
@WLR_DIRECTION_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Reparenting container (parallel)\00", align 1
@WLR_DIRECTION_RIGHT = common dso_local global i32 0, align 4
@WLR_DIRECTION_DOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Reparenting container (perpendicular)\00", align 1
@config = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*, %struct.sway_container*, i32)* @container_move_to_container_from_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @container_move_to_container_from_direction(%struct.sway_container* %0, %struct.sway_container* %1, i32 %2) #0 {
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.sway_container*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sway_node*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %4, align 8
  store %struct.sway_container* %1, %struct.sway_container** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %15 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %14, i32 0, i32 9
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %95

18:                                               ; preds = %3
  %19 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %20 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %23 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %18
  %27 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %28 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %31 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %26
  %35 = load i32, i32* @SWAY_DEBUG, align 4
  %36 = call i32 @sway_log(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %38 = call i32* @container_get_siblings(%struct.sway_container* %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %41 = call i32 @list_find(i32* %39, %struct.sway_container* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %44 = call i32 @list_find(i32* %42, %struct.sway_container* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @list_swap(i32* %45, i32 %46, i32 %47)
  br label %94

49:                                               ; preds = %26, %18
  %50 = load i32, i32* @SWAY_DEBUG, align 4
  %51 = call i32 @sway_log(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @WLR_DIRECTION_LEFT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @WLR_DIRECTION_UP, align 4
  %58 = icmp eq i32 %56, %57
  br label %59

59:                                               ; preds = %55, %49
  %60 = phi i1 [ true, %49 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %63 = call i32 @container_sibling_index(%struct.sway_container* %62)
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %11, align 4
  %66 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %67 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %59
  %71 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %72 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.sway_container*
  %75 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @container_insert_child(%struct.sway_container* %74, %struct.sway_container* %75, i32 %76)
  br label %85

78:                                               ; preds = %59
  %79 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %80 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @workspace_insert_tiling(i64 %81, %struct.sway_container* %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %70
  %86 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %87 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %86, i32 0, i32 5
  store i64 0, i64* %87, align 8
  %88 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %89 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %88, i32 0, i32 6
  store i64 0, i64* %89, align 8
  %90 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %91 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %93 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %92, i32 0, i32 4
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %85, %34
  br label %160

95:                                               ; preds = %3
  %96 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %97 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i64 @is_parallel(i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %133

102:                                              ; preds = %95
  %103 = load i32, i32* @SWAY_DEBUG, align 4
  %104 = call i32 @sway_log(i32 %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @WLR_DIRECTION_RIGHT, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @WLR_DIRECTION_DOWN, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108, %102
  br label %119

113:                                              ; preds = %108
  %114 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %115 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %114, i32 0, i32 7
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  br label %119

119:                                              ; preds = %113, %112
  %120 = phi i32 [ 0, %112 ], [ %118, %113 ]
  store i32 %120, i32* %12, align 4
  %121 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %122 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @container_insert_child(%struct.sway_container* %121, %struct.sway_container* %122, i32 %123)
  %125 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %126 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %125, i32 0, i32 5
  store i64 0, i64* %126, align 8
  %127 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %128 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %127, i32 0, i32 6
  store i64 0, i64* %128, align 8
  %129 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %130 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %129, i32 0, i32 3
  store i64 0, i64* %130, align 8
  %131 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %132 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %131, i32 0, i32 4
  store i64 0, i64* %132, align 8
  br label %160

133:                                              ; preds = %95
  %134 = load i32, i32* @SWAY_DEBUG, align 4
  %135 = call i32 @sway_log(i32 %134, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %141 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %140, i32 0, i32 2
  %142 = call %struct.sway_node* @seat_get_active_tiling_child(i32 %139, %struct.sway_node* %141)
  store %struct.sway_node* %142, %struct.sway_node** %13, align 8
  %143 = load %struct.sway_node*, %struct.sway_node** %13, align 8
  %144 = icmp ne %struct.sway_node* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %133
  %146 = load %struct.sway_node*, %struct.sway_node** %13, align 8
  %147 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %148 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %147, i32 0, i32 2
  %149 = icmp eq %struct.sway_node* %146, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %145, %133
  %151 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %152 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %153 = call i32 @container_add_child(%struct.sway_container* %151, %struct.sway_container* %152)
  br label %160

154:                                              ; preds = %145
  %155 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %156 = load %struct.sway_node*, %struct.sway_node** %13, align 8
  %157 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %156, i32 0, i32 0
  %158 = load %struct.sway_container*, %struct.sway_container** %157, align 8
  %159 = load i32, i32* %6, align 4
  call void @container_move_to_container_from_direction(%struct.sway_container* %155, %struct.sway_container* %158, i32 %159)
  br label %160

160:                                              ; preds = %154, %150, %119, %94
  ret void
}

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32* @container_get_siblings(%struct.sway_container*) #1

declare dso_local i32 @list_find(i32*, %struct.sway_container*) #1

declare dso_local i32 @list_swap(i32*, i32, i32) #1

declare dso_local i32 @container_sibling_index(%struct.sway_container*) #1

declare dso_local i32 @container_insert_child(%struct.sway_container*, %struct.sway_container*, i32) #1

declare dso_local i32 @workspace_insert_tiling(i64, %struct.sway_container*, i32) #1

declare dso_local i64 @is_parallel(i32, i32) #1

declare dso_local %struct.sway_node* @seat_get_active_tiling_child(i32, %struct.sway_node*) #1

declare dso_local i32 @container_add_child(%struct.sway_container*, %struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
