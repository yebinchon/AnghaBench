; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_move.c_output_in_direction.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_move.c_output_in_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sway_output = type { i32 }
%struct.sway_workspace = type { %struct.sway_output* }
%struct.anon = type { i8*, i32 }
%struct.wlr_output = type { %struct.sway_output* }

@.str = private unnamed_addr constant [8 x i8] c"current\00", align 1
@config = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@WLR_DIRECTION_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@WLR_DIRECTION_DOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@WLR_DIRECTION_LEFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@WLR_DIRECTION_RIGHT = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_output* (i8*, %struct.sway_output*, i32, i32)* @output_in_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_output* @output_in_direction(i8* %0, %struct.sway_output* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sway_output*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sway_workspace*, align 8
  %11 = alloca [4 x %struct.anon], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.wlr_output*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.sway_output* %1, %struct.sway_output** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strcasecmp(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.sway_workspace* @seat_get_focused_workspace(i32 %22)
  store %struct.sway_workspace* %23, %struct.sway_workspace** %10, align 8
  %24 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %25 = icmp ne %struct.sway_workspace* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store %struct.sway_output* null, %struct.sway_output** %5, align 8
  br label %110

27:                                               ; preds = %18
  %28 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %29 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %28, i32 0, i32 0
  %30 = load %struct.sway_output*, %struct.sway_output** %29, align 8
  store %struct.sway_output* %30, %struct.sway_output** %5, align 8
  br label %110

31:                                               ; preds = %4
  %32 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %11, i64 0, i64 0
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 16
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 1
  %35 = load i32, i32* @WLR_DIRECTION_UP, align 4
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %32, i64 1
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %37, align 16
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 1
  %39 = load i32, i32* @WLR_DIRECTION_DOWN, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %36, i64 1
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %41, align 16
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 1
  %43 = load i32, i32* @WLR_DIRECTION_LEFT, align 4
  store i32 %43, i32* %42, align 8
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %40, i64 1
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %45, align 16
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 1
  %47 = load i32, i32* @WLR_DIRECTION_RIGHT, align 4
  store i32 %47, i32* %46, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %48

48:                                               ; preds = %65, %31
  %49 = load i64, i64* %13, align 8
  %50 = icmp ult i64 %49, 4
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %11, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 16
  %56 = load i8*, i8** %6, align 8
  %57 = call i64 @strcasecmp(i8* %55, i8* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %11, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %12, align 4
  br label %68

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %13, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %13, align 8
  br label %48

68:                                               ; preds = %59, %48
  %69 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %70 = icmp ne %struct.sway_output* %69, null
  br i1 %70, label %71, label %107

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %107

74:                                               ; preds = %71
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %80 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call %struct.wlr_output* @wlr_output_layout_adjacent_output(i32 %77, i32 %78, i32 %81, i32 %82, i32 %83)
  store %struct.wlr_output* %84, %struct.wlr_output** %14, align 8
  %85 = load %struct.wlr_output*, %struct.wlr_output** %14, align 8
  %86 = icmp ne %struct.wlr_output* %85, null
  br i1 %86, label %99, label %87

87:                                               ; preds = %74
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @opposite_direction(i32 %91)
  %93 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %94 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call %struct.wlr_output* @wlr_output_layout_farthest_output(i32 %90, i32 %92, i32 %95, i32 %96, i32 %97)
  store %struct.wlr_output* %98, %struct.wlr_output** %14, align 8
  br label %99

99:                                               ; preds = %87, %74
  %100 = load %struct.wlr_output*, %struct.wlr_output** %14, align 8
  %101 = icmp ne %struct.wlr_output* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.wlr_output*, %struct.wlr_output** %14, align 8
  %104 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %103, i32 0, i32 0
  %105 = load %struct.sway_output*, %struct.sway_output** %104, align 8
  store %struct.sway_output* %105, %struct.sway_output** %5, align 8
  br label %110

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %71, %68
  %108 = load i8*, i8** %6, align 8
  %109 = call %struct.sway_output* @output_by_name_or_id(i8* %108)
  store %struct.sway_output* %109, %struct.sway_output** %5, align 8
  br label %110

110:                                              ; preds = %107, %102, %27, %26
  %111 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  ret %struct.sway_output* %111
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.sway_workspace* @seat_get_focused_workspace(i32) #1

declare dso_local %struct.wlr_output* @wlr_output_layout_adjacent_output(i32, i32, i32, i32, i32) #1

declare dso_local %struct.wlr_output* @wlr_output_layout_farthest_output(i32, i32, i32, i32, i32) #1

declare dso_local i32 @opposite_direction(i32) #1

declare dso_local %struct.sway_output* @output_by_name_or_id(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
