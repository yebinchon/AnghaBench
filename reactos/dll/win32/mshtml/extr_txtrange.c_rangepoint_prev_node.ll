; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_rangepoint_prev_node.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_rangepoint_prev_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@TEXT_NODE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@NS_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @rangepoint_prev_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rangepoint_prev_node(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, 1
  %19 = call i32* @get_child_node(i32 %14, i64 %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @get_node_type(i32* %24)
  %26 = load i64, i64* @TEXT_NODE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %11
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @get_text_length(i32* %29)
  br label %34

31:                                               ; preds = %11
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @get_child_count(i32* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i32 [ %30, %28 ], [ %33, %31 ]
  store i32 %35, i32* %5, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = call i32 @free_rangepoint(%struct.TYPE_5__* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @init_rangepoint(%struct.TYPE_5__* %38, i32* %39, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @nsIDOMNode_Release(i32* %42)
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %2, align 4
  br label %72

45:                                               ; preds = %1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @nsIDOMNode_GetParentNode(i32 %48, i32** %4)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @NS_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %45
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %2, align 4
  br label %72

59:                                               ; preds = %45
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @get_child_index(i32* %60, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = call i32 @free_rangepoint(%struct.TYPE_5__* %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @init_rangepoint(%struct.TYPE_5__* %67, i32* %68, i32 %69)
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %59, %57, %34
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32* @get_child_node(i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_node_type(i32*) #1

declare dso_local i32 @get_text_length(i32*) #1

declare dso_local i32 @get_child_count(i32*) #1

declare dso_local i32 @free_rangepoint(%struct.TYPE_5__*) #1

declare dso_local i32 @init_rangepoint(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

declare dso_local i64 @nsIDOMNode_GetParentNode(i32, i32**) #1

declare dso_local i32 @get_child_index(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
