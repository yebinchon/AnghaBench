; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { %struct.TYPE_3__, i32, i32, i32, %struct.sway_workspace*, %struct.sway_workspace*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [58 x i8] c"Tried to free workspace which wasn't marked as destroying\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Tried to free workspace which is still referenced by transactions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workspace_destroy(%struct.sway_workspace* %0) #0 {
  %2 = alloca %struct.sway_workspace*, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %2, align 8
  %3 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %4 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %3, i32 0, i32 6
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @sway_assert(i32 %6, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %53

10:                                               ; preds = %1
  %11 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %12 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @sway_assert(i32 %16, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %53

20:                                               ; preds = %10
  %21 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %22 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %21, i32 0, i32 5
  %23 = load %struct.sway_workspace*, %struct.sway_workspace** %22, align 8
  %24 = call i32 @free(%struct.sway_workspace* %23)
  %25 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %26 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %25, i32 0, i32 4
  %27 = load %struct.sway_workspace*, %struct.sway_workspace** %26, align 8
  %28 = call i32 @free(%struct.sway_workspace* %27)
  %29 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %30 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @list_free_items_and_destroy(i32 %31)
  %33 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %34 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @list_free(i32 %35)
  %37 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %38 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @list_free(i32 %39)
  %41 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %42 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @list_free(i32 %44)
  %46 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %47 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @list_free(i32 %49)
  %51 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %52 = call i32 @free(%struct.sway_workspace* %51)
  br label %53

53:                                               ; preds = %20, %19, %9
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @free(%struct.sway_workspace*) #1

declare dso_local i32 @list_free_items_and_destroy(i32) #1

declare dso_local i32 @list_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
