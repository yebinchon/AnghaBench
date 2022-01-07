; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_output_prev_next_impl.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_output_prev_next_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { %struct.sway_output* }
%struct.sway_output = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.sway_workspace** }
%struct.TYPE_3__ = type { i32 }
%struct.sway_seat = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"No focused workspace to base prev/next on output off of\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_workspace* (%struct.sway_output*, i32, i32)* @workspace_output_prev_next_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_workspace* @workspace_output_prev_next_impl(%struct.sway_output* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_seat*, align 8
  %9 = alloca %struct.sway_workspace*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sway_output*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.sway_output* %0, %struct.sway_output** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %14, %struct.sway_seat** %8, align 8
  %15 = load %struct.sway_seat*, %struct.sway_seat** %8, align 8
  %16 = call %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat* %15)
  store %struct.sway_workspace* %16, %struct.sway_workspace** %9, align 8
  %17 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %18 = icmp ne %struct.sway_workspace* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @SWAY_DEBUG, align 4
  %21 = call i32 @sway_log(i32 %20, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store %struct.sway_workspace* null, %struct.sway_workspace** %4, align 8
  br label %82

22:                                               ; preds = %3
  %23 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %24 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %27 = call i32 @list_find(%struct.TYPE_4__* %25, %struct.sway_workspace* %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %29 = call i32 @workspace_is_empty(%struct.sway_workspace* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %64, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %35, %36
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %40, %41
  %43 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %44 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %39, %34
  %50 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %51 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %50, i32 0, i32 0
  %52 = load %struct.sway_output*, %struct.sway_output** %51, align 8
  store %struct.sway_output* %52, %struct.sway_output** %11, align 8
  %53 = load %struct.sway_output*, %struct.sway_output** %11, align 8
  %54 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @workspace_next_name(i32 %57)
  store i8* %58, i8** %12, align 8
  %59 = load %struct.sway_output*, %struct.sway_output** %11, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @workspace_create(%struct.sway_output* %59, i8* %60)
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @free(i8* %62)
  br label %64

64:                                               ; preds = %49, %39, %31, %22
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %65, %66
  %68 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %69 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @wrap(i32 %67, i32 %72)
  store i64 %73, i64* %13, align 8
  %74 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %75 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load %struct.sway_workspace**, %struct.sway_workspace*** %77, align 8
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds %struct.sway_workspace*, %struct.sway_workspace** %78, i64 %79
  %81 = load %struct.sway_workspace*, %struct.sway_workspace** %80, align 8
  store %struct.sway_workspace* %81, %struct.sway_workspace** %4, align 8
  br label %82

82:                                               ; preds = %64, %19
  %83 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  ret %struct.sway_workspace* %83
}

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat*) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @list_find(%struct.TYPE_4__*, %struct.sway_workspace*) #1

declare dso_local i32 @workspace_is_empty(%struct.sway_workspace*) #1

declare dso_local i8* @workspace_next_name(i32) #1

declare dso_local i32 @workspace_create(%struct.sway_output*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @wrap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
