; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_node.c_node_get_name.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_node.c_node_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_node = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @node_get_name(%struct.sway_node* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sway_node*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %3, align 8
  %4 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %5 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %28 [
    i32 129, label %7
    i32 130, label %8
    i32 128, label %16
    i32 131, label %22
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %10 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %2, align 8
  br label %29

16:                                               ; preds = %1
  %17 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %18 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %17, i32 0, i32 2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %2, align 8
  br label %29

22:                                               ; preds = %1
  %23 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %24 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %2, align 8
  br label %29

28:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %29

29:                                               ; preds = %28, %22, %16, %8, %7
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
