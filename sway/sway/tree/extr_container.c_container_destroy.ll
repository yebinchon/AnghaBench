; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, %struct.sway_container*, %struct.sway_container*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, %struct.sway_container* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [58 x i8] c"Tried to free container which wasn't marked as destroying\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Tried to free container which is still referenced by transactions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_destroy(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %3 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %4 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %3, i32 0, i32 15
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @sway_assert(i32 %6, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %111

10:                                               ; preds = %1
  %11 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %12 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %11, i32 0, i32 15
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @sway_assert(i32 %16, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %111

20:                                               ; preds = %10
  %21 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %22 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %21, i32 0, i32 14
  %23 = load %struct.sway_container*, %struct.sway_container** %22, align 8
  %24 = call i32 @free(%struct.sway_container* %23)
  %25 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %26 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %25, i32 0, i32 13
  %27 = load %struct.sway_container*, %struct.sway_container** %26, align 8
  %28 = call i32 @free(%struct.sway_container* %27)
  %29 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %30 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %29, i32 0, i32 12
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @wlr_texture_destroy(i32 %31)
  %33 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %34 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @wlr_texture_destroy(i32 %35)
  %37 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %38 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @wlr_texture_destroy(i32 %39)
  %41 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %42 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @wlr_texture_destroy(i32 %43)
  %45 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %46 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @list_free(i32 %47)
  %49 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %50 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @list_free(i32 %52)
  %54 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %55 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @list_free(i32 %56)
  %58 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %59 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @list_free_items_and_destroy(i32 %60)
  %62 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %63 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @wlr_texture_destroy(i32 %64)
  %66 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %67 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @wlr_texture_destroy(i32 %68)
  %70 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %71 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @wlr_texture_destroy(i32 %72)
  %74 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %75 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @wlr_texture_destroy(i32 %76)
  %78 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %79 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = icmp ne %struct.TYPE_6__* %80, null
  br i1 %81, label %82, label %108

82:                                               ; preds = %20
  %83 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %84 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load %struct.sway_container*, %struct.sway_container** %86, align 8
  %88 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %89 = icmp eq %struct.sway_container* %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %92 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store %struct.sway_container* null, %struct.sway_container** %94, align 8
  br label %95

95:                                               ; preds = %90, %82
  %96 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %97 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %104 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = call i32 @view_destroy(%struct.TYPE_6__* %105)
  br label %107

107:                                              ; preds = %102, %95
  br label %108

108:                                              ; preds = %107, %20
  %109 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %110 = call i32 @free(%struct.sway_container* %109)
  br label %111

111:                                              ; preds = %108, %19, %9
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @free(%struct.sway_container*) #1

declare dso_local i32 @wlr_texture_destroy(i32) #1

declare dso_local i32 @list_free(i32) #1

declare dso_local i32 @list_free_items_and_destroy(i32) #1

declare dso_local i32 @view_destroy(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
