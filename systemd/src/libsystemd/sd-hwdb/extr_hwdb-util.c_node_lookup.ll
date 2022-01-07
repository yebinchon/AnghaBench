; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_hwdb-util.c_node_lookup.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_hwdb-util.c_node_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trie_node = type { i32, i32 }
%struct.trie_child_entry = type { %struct.trie_node*, i32 }

@trie_children_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trie_node* (%struct.trie_node*, i32)* @node_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trie_node* @node_lookup(%struct.trie_node* %0, i32 %1) #0 {
  %3 = alloca %struct.trie_node*, align 8
  %4 = alloca %struct.trie_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trie_child_entry*, align 8
  %7 = alloca %struct.trie_child_entry, align 8
  store %struct.trie_node* %0, %struct.trie_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = getelementptr inbounds %struct.trie_child_entry, %struct.trie_child_entry* %7, i32 0, i32 1
  store i32 %8, i32* %9, align 8
  %10 = load %struct.trie_node*, %struct.trie_node** %4, align 8
  %11 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.trie_node*, %struct.trie_node** %4, align 8
  %14 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @trie_children_cmp, align 4
  %17 = call %struct.trie_child_entry* @typesafe_bsearch(%struct.trie_child_entry* %7, i32 %12, i32 %15, i32 %16)
  store %struct.trie_child_entry* %17, %struct.trie_child_entry** %6, align 8
  %18 = load %struct.trie_child_entry*, %struct.trie_child_entry** %6, align 8
  %19 = icmp ne %struct.trie_child_entry* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.trie_child_entry*, %struct.trie_child_entry** %6, align 8
  %22 = getelementptr inbounds %struct.trie_child_entry, %struct.trie_child_entry* %21, i32 0, i32 0
  %23 = load %struct.trie_node*, %struct.trie_node** %22, align 8
  store %struct.trie_node* %23, %struct.trie_node** %3, align 8
  br label %25

24:                                               ; preds = %2
  store %struct.trie_node* null, %struct.trie_node** %3, align 8
  br label %25

25:                                               ; preds = %24, %20
  %26 = load %struct.trie_node*, %struct.trie_node** %3, align 8
  ret %struct.trie_node* %26
}

declare dso_local %struct.trie_child_entry* @typesafe_bsearch(%struct.trie_child_entry*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
