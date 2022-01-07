; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_node.c_node_init.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_node.c_node_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_node = type { i32, %struct.TYPE_2__, i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@node_init.next_id = internal global i64 1, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @node_init(%struct.sway_node* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.sway_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* @node_init.next_id, align 8
  %8 = add i64 %7, 1
  store i64 %8, i64* @node_init.next_id, align 8
  %9 = trunc i64 %7 to i32
  %10 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %11 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %14 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %17 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %19 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @wl_signal_init(i32* %20)
  ret void
}

declare dso_local i32 @wl_signal_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
