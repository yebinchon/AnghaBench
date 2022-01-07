; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_redact.c_update_avl_trees.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_redact.c_update_avl_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redact_node = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.redact_node*)* @update_avl_trees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_avl_trees(i32* %0, i32* %1, %struct.redact_node* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.redact_node*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.redact_node* %2, %struct.redact_node** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.redact_node*, %struct.redact_node** %6, align 8
  %9 = call i32 @avl_remove(i32* %7, %struct.redact_node* %8)
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.redact_node*, %struct.redact_node** %6, align 8
  %12 = call i32 @avl_remove(i32* %10, %struct.redact_node* %11)
  %13 = load %struct.redact_node*, %struct.redact_node** %6, align 8
  %14 = getelementptr inbounds %struct.redact_node, %struct.redact_node* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.redact_node*, %struct.redact_node** %6, align 8
  %18 = getelementptr inbounds %struct.redact_node, %struct.redact_node* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @get_next_redact_record(i32* %16, i32 %19)
  %21 = load %struct.redact_node*, %struct.redact_node** %6, align 8
  %22 = getelementptr inbounds %struct.redact_node, %struct.redact_node* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.redact_node*, %struct.redact_node** %6, align 8
  %25 = call i32 @avl_add(i32* %23, %struct.redact_node* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.redact_node*, %struct.redact_node** %6, align 8
  %28 = call i32 @avl_add(i32* %26, %struct.redact_node* %27)
  %29 = load %struct.redact_node*, %struct.redact_node** %6, align 8
  %30 = getelementptr inbounds %struct.redact_node, %struct.redact_node* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  ret i32 %33
}

declare dso_local i32 @avl_remove(i32*, %struct.redact_node*) #1

declare dso_local i32 @get_next_redact_record(i32*, i32) #1

declare dso_local i32 @avl_add(i32*, %struct.redact_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
