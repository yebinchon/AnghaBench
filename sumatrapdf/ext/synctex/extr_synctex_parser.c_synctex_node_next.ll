; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c_synctex_node_next.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c_synctex_node_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@synctex_node_type_sheet = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @synctex_node_next(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %5 = call %struct.TYPE_12__* @SYNCTEX_CHILD(%struct.TYPE_12__* %4)
  %6 = icmp ne %struct.TYPE_12__* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = call %struct.TYPE_12__* @SYNCTEX_CHILD(%struct.TYPE_12__* %8)
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %2, align 8
  br label %33

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %31, %10
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = call %struct.TYPE_12__* @SYNCTEX_SIBLING(%struct.TYPE_12__* %12)
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = call %struct.TYPE_12__* @SYNCTEX_SIBLING(%struct.TYPE_12__* %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %2, align 8
  br label %33

18:                                               ; preds = %11
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = call %struct.TYPE_12__* @SYNCTEX_PARENT(%struct.TYPE_12__* %19)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %3, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @synctex_node_type_sheet, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %33

31:                                               ; preds = %22
  br label %11

32:                                               ; preds = %18
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %33

33:                                               ; preds = %32, %30, %15, %7
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %34
}

declare dso_local %struct.TYPE_12__* @SYNCTEX_CHILD(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @SYNCTEX_SIBLING(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @SYNCTEX_PARENT(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
