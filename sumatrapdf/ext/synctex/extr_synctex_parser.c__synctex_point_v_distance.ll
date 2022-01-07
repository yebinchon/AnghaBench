; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_point_v_distance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_point_v_distance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_synctex_point_v_distance(i32 %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i32 %0, i32* %10, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  br i1 %12, label %13, label %88

13:                                               ; preds = %3
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %87 [
    i32 133, label %19
    i32 130, label %50
    i32 128, label %50
    i32 129, label %50
    i32 132, label %81
    i32 134, label %81
    i32 131, label %81
  ]

19:                                               ; preds = %13
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = call i32 @SYNCTEX_VERT_V(%struct.TYPE_14__* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = call i32 @SYNCTEX_ABS_DEPTH_V(%struct.TYPE_14__* %23)
  %25 = add nsw i32 %22, %24
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = call i32 @SYNCTEX_ABS_HEIGHT_V(%struct.TYPE_14__* %26)
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load i32, i32* %8, align 4
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %35, %37
  store i32 %38, i32* %4, align 4
  br label %90

39:                                               ; preds = %19
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %45, %47
  store i32 %48, i32* %4, align 4
  br label %90

49:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %90

50:                                               ; preds = %13, %13, %13
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %52 = call i32 @SYNCTEX_VERT(%struct.TYPE_14__* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = call i32 @SYNCTEX_ABS_DEPTH(%struct.TYPE_14__* %54)
  %56 = add nsw i32 %53, %55
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = call i32 @SYNCTEX_ABS_HEIGHT(%struct.TYPE_14__* %57)
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %50
  %66 = load i32, i32* %8, align 4
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %66, %68
  store i32 %69, i32* %4, align 4
  br label %90

70:                                               ; preds = %50
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %76, %78
  store i32 %79, i32* %4, align 4
  br label %90

80:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %90

81:                                               ; preds = %13, %13, %13
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %83 = call i32 @SYNCTEX_VERT(%struct.TYPE_14__* %82)
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %83, %85
  store i32 %86, i32* %4, align 4
  br label %90

87:                                               ; preds = %13
  br label %88

88:                                               ; preds = %87, %3
  %89 = load i32, i32* @INT_MAX, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %81, %80, %75, %65, %49, %44, %34
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @SYNCTEX_VERT_V(%struct.TYPE_14__*) #1

declare dso_local i32 @SYNCTEX_ABS_DEPTH_V(%struct.TYPE_14__*) #1

declare dso_local i32 @SYNCTEX_ABS_HEIGHT_V(%struct.TYPE_14__*) #1

declare dso_local i32 @SYNCTEX_VERT(%struct.TYPE_14__*) #1

declare dso_local i32 @SYNCTEX_ABS_DEPTH(%struct.TYPE_14__*) #1

declare dso_local i32 @SYNCTEX_ABS_HEIGHT(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
