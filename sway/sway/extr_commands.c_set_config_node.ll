; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_commands.c_set_config_node.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_commands.c_set_config_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__*, %struct.sway_node* }
%struct.TYPE_4__ = type { i32* }
%struct.sway_node = type { i32, i32*, %struct.TYPE_4__* }

@config = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_node*)* @set_config_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_config_node(%struct.sway_node* %0) #0 {
  %2 = alloca %struct.sway_node*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %2, align 8
  %3 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store %struct.sway_node* %3, %struct.sway_node** %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %14 = icmp eq %struct.sway_node* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %18 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %43 [
    i32 131, label %20
    i32 128, label %35
    i32 129, label %42
    i32 130, label %42
  ]

20:                                               ; preds = %16
  %21 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %22 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %26, align 8
  %27 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %28 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32* %31, i32** %34, align 8
  br label %43

35:                                               ; preds = %16
  %36 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %37 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32* %38, i32** %41, align 8
  br label %43

42:                                               ; preds = %16, %16
  br label %43

43:                                               ; preds = %15, %16, %42, %35, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
