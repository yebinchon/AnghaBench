; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_update_representation.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_update_representation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i64, %struct.sway_container*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unable to allocate title string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_update_representation(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca i64, align 8
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %4 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %5 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %1
  %9 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %10 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %13 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @container_build_representation(i32 %11, i32 %14, i32* null)
  store i64 %15, i64* %3, align 8
  %16 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %17 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @free(i32* %18)
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  %22 = call i32* @calloc(i64 %21, i32 1)
  %23 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %24 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %26 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @sway_assert(i32* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %8
  br label %66

31:                                               ; preds = %8
  %32 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %33 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %36 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %39 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @container_build_representation(i32 %34, i32 %37, i32* %40)
  %42 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %43 = call i32 @container_calculate_title_height(%struct.sway_container* %42)
  %44 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %45 = call i32 @container_update_title_textures(%struct.sway_container* %44)
  br label %46

46:                                               ; preds = %31, %1
  %47 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %48 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %47, i32 0, i32 1
  %49 = load %struct.sway_container*, %struct.sway_container** %48, align 8
  %50 = icmp ne %struct.sway_container* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %53 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %52, i32 0, i32 1
  %54 = load %struct.sway_container*, %struct.sway_container** %53, align 8
  call void @container_update_representation(%struct.sway_container* %54)
  br label %66

55:                                               ; preds = %46
  %56 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %57 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %62 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @workspace_update_representation(i64 %63)
  br label %65

65:                                               ; preds = %60, %55
  br label %66

66:                                               ; preds = %30, %65, %51
  ret void
}

declare dso_local i64 @container_build_representation(i32, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32 @sway_assert(i32*, i8*) #1

declare dso_local i32 @container_calculate_title_height(%struct.sway_container*) #1

declare dso_local i32 @container_update_title_textures(%struct.sway_container*) #1

declare dso_local i32 @workspace_update_representation(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
