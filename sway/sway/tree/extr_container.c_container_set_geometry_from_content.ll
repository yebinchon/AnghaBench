; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_set_geometry_from_content.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_set_geometry_from_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Expected a view\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Expected a floating view\00", align 1
@B_CSD = common dso_local global i64 0, align 8
@B_NONE = common dso_local global i64 0, align 8
@B_NORMAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_set_geometry_from_content(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %5 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %6 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %5, i32 0, i32 11
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @sway_assert(i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %81

11:                                               ; preds = %1
  %12 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %13 = call i32 @container_is_floating(%struct.sway_container* %12)
  %14 = call i32 @sway_assert(i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %81

17:                                               ; preds = %11
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %18 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %19 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @B_CSD, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %17
  %24 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %25 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %28 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @B_NONE, align 8
  %31 = icmp ne i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = mul nsw i32 %26, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %3, align 8
  %35 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %36 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @B_NORMAL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = call i64 (...) @container_titlebar_height()
  br label %44

42:                                               ; preds = %23
  %43 = load i64, i64* %3, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %44, %17
  %47 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %48 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %47, i32 0, i32 9
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %3, align 8
  %51 = sub i64 %49, %50
  %52 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %53 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %52, i32 0, i32 10
  store i64 %51, i64* %53, align 8
  %54 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %55 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = sub i64 %56, %57
  %59 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %60 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %59, i32 0, i32 8
  store i64 %58, i64* %60, align 8
  %61 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %62 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %3, align 8
  %65 = mul i64 %64, 2
  %66 = add i64 %63, %65
  %67 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %68 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %67, i32 0, i32 6
  store i64 %66, i64* %68, align 8
  %69 = load i64, i64* %4, align 8
  %70 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %71 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %69, %72
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %73, %74
  %76 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %77 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %76, i32 0, i32 4
  store i64 %75, i64* %77, align 8
  %78 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %79 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %78, i32 0, i32 2
  %80 = call i32 @node_set_dirty(i32* %79)
  br label %81

81:                                               ; preds = %46, %16, %10
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @container_is_floating(%struct.sway_container*) #1

declare dso_local i64 @container_titlebar_height(...) #1

declare dso_local i32 @node_set_dirty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
