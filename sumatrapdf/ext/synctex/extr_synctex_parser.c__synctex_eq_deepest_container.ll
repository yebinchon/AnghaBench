; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_eq_deepest_container.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_eq_deepest_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32, %struct.TYPE_12__*, i32)* @_synctex_eq_deepest_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @_synctex_eq_deepest_container(i32 %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %13 = icmp ne %struct.TYPE_12__* %12, null
  br i1 %13, label %14, label %84

14:                                               ; preds = %3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %83 [
    i32 128, label %20
    i32 129, label %20
  ]

20:                                               ; preds = %14, %14
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = call %struct.TYPE_12__* @SYNCTEX_CHILD(%struct.TYPE_12__* %21)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %9, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %34, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.TYPE_12__* @_synctex_eq_deepest_container(i32 %26, %struct.TYPE_12__* %27, i32 %28)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %8, align 8
  %30 = icmp ne %struct.TYPE_12__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %4, align 8
  br label %85

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = call %struct.TYPE_12__* @SYNCTEX_SIBLING(%struct.TYPE_12__* %35)
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %9, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %25, label %38

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @_synctex_point_in_box(i32 %40, %struct.TYPE_12__* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %82

45:                                               ; preds = %39
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 128
  br i1 %51, label %52, label %80

52:                                               ; preds = %45
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = call %struct.TYPE_12__* @SYNCTEX_CHILD(%struct.TYPE_12__* %53)
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %9, align 8
  %55 = icmp ne %struct.TYPE_12__* %54, null
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load i32, i32* @INT_MAX, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %75, %56
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = call %struct.TYPE_12__* @SYNCTEX_CHILD(%struct.TYPE_12__* %59)
  %61 = icmp ne %struct.TYPE_12__* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @_synctex_node_distance_to_point(i32 %63, %struct.TYPE_12__* %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %10, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %6, align 8
  br label %73

73:                                               ; preds = %70, %62
  br label %74

74:                                               ; preds = %73, %58
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %77 = call %struct.TYPE_12__* @SYNCTEX_SIBLING(%struct.TYPE_12__* %76)
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %9, align 8
  %78 = icmp ne %struct.TYPE_12__* %77, null
  br i1 %78, label %58, label %79

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79, %52, %45
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %4, align 8
  br label %85

82:                                               ; preds = %39
  br label %83

83:                                               ; preds = %82, %14
  br label %84

84:                                               ; preds = %83, %3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %85

85:                                               ; preds = %84, %80, %31
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %86
}

declare dso_local %struct.TYPE_12__* @SYNCTEX_CHILD(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @SYNCTEX_SIBLING(%struct.TYPE_12__*) #1

declare dso_local i32 @_synctex_point_in_box(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @_synctex_node_distance_to_point(i32, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
