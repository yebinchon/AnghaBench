; ModuleID = '/home/carl/AnghaBench/streem/src/extr_node.c_node_free.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_node.c_node_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_13__ = type { %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_14__ = type { %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_12__ = type { %struct.TYPE_19__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @node_free(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %3 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %4 = icmp ne %struct.TYPE_19__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %94

6:                                                ; preds = %1
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %93 [
    i32 140, label %10
    i32 133, label %13
    i32 136, label %28
    i32 130, label %35
    i32 131, label %46
    i32 137, label %58
    i32 129, label %65
    i32 134, label %69
    i32 139, label %77
    i32 132, label %81
    i32 135, label %81
    i32 138, label %84
    i32 128, label %85
  ]

10:                                               ; preds = %6
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %12 = call i32 @node_args_free(%struct.TYPE_19__* %11)
  br label %94

13:                                               ; preds = %6
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %15 = bitcast %struct.TYPE_19__* %14 to %struct.TYPE_15__*
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  call void @node_free(%struct.TYPE_19__* %17)
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %19 = bitcast %struct.TYPE_19__* %18 to %struct.TYPE_15__*
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  call void @node_free(%struct.TYPE_19__* %21)
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %23 = bitcast %struct.TYPE_19__* %22 to %struct.TYPE_15__*
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  call void @node_free(%struct.TYPE_19__* %25)
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %27 = call i32 @free(%struct.TYPE_19__* %26)
  br label %94

28:                                               ; preds = %6
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %30 = bitcast %struct.TYPE_19__* %29 to %struct.TYPE_17__*
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  call void @node_free(%struct.TYPE_19__* %32)
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %34 = call i32 @free(%struct.TYPE_19__* %33)
  br label %94

35:                                               ; preds = %6
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %37 = bitcast %struct.TYPE_19__* %36 to %struct.TYPE_13__*
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  call void @node_free(%struct.TYPE_19__* %39)
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %41 = bitcast %struct.TYPE_19__* %40 to %struct.TYPE_13__*
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  call void @node_free(%struct.TYPE_19__* %43)
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %45 = call i32 @free(%struct.TYPE_19__* %44)
  br label %94

46:                                               ; preds = %6
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %48 = bitcast %struct.TYPE_19__* %47 to %struct.TYPE_14__*
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  %51 = call i32 @node_args_free(%struct.TYPE_19__* %50)
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %53 = bitcast %struct.TYPE_19__* %52 to %struct.TYPE_14__*
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  call void @node_free(%struct.TYPE_19__* %55)
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %57 = call i32 @free(%struct.TYPE_19__* %56)
  br label %94

58:                                               ; preds = %6
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %60 = bitcast %struct.TYPE_19__* %59 to %struct.TYPE_18__*
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  call void @node_free(%struct.TYPE_19__* %62)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %64 = call i32 @free(%struct.TYPE_19__* %63)
  br label %94

65:                                               ; preds = %6
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  call void @node_free(%struct.TYPE_19__* %66)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %68 = call i32 @free(%struct.TYPE_19__* %67)
  br label %94

69:                                               ; preds = %6
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %71 = bitcast %struct.TYPE_19__* %70 to %struct.TYPE_16__*
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = call i32 @free(%struct.TYPE_19__* %73)
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %76 = call i32 @free(%struct.TYPE_19__* %75)
  br label %94

77:                                               ; preds = %6
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %79 = bitcast %struct.TYPE_19__* %78 to i32*
  %80 = call i32 @node_array_free(i32* %79)
  br label %94

81:                                               ; preds = %6, %6
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %83 = call i32 @free(%struct.TYPE_19__* %82)
  br label %94

84:                                               ; preds = %6
  br label %94

85:                                               ; preds = %6
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %87 = bitcast %struct.TYPE_19__* %86 to %struct.TYPE_12__*
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = call i32 @free(%struct.TYPE_19__* %89)
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %92 = call i32 @free(%struct.TYPE_19__* %91)
  br label %94

93:                                               ; preds = %6
  br label %94

94:                                               ; preds = %5, %84, %93, %85, %81, %77, %69, %65, %58, %46, %35, %28, %13, %10
  ret void
}

declare dso_local i32 @node_args_free(%struct.TYPE_19__*) #1

declare dso_local i32 @free(%struct.TYPE_19__*) #1

declare dso_local i32 @node_array_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
