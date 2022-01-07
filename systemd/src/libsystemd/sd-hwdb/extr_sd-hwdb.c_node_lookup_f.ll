; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_sd-hwdb.c_node_lookup_f.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_sd-hwdb.c_node_lookup_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.trie_node_f = type { i32 }
%struct.trie_child_entry_f = type { i32, i32 }

@trie_children_cmp_f = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trie_node_f* (%struct.TYPE_6__*, %struct.trie_node_f*, i32)* @node_lookup_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trie_node_f* @node_lookup_f(%struct.TYPE_6__* %0, %struct.trie_node_f* %1, i32 %2) #0 {
  %4 = alloca %struct.trie_node_f*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.trie_node_f*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.trie_child_entry_f*, align 8
  %9 = alloca %struct.trie_child_entry_f, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.trie_node_f* %1, %struct.trie_node_f** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = getelementptr inbounds %struct.trie_child_entry_f, %struct.trie_child_entry_f* %9, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load %struct.trie_node_f*, %struct.trie_node_f** %6, align 8
  %13 = bitcast %struct.trie_node_f* %12 to i8*
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le64toh(i32 %18)
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %13, i64 %20
  %22 = load %struct.trie_node_f*, %struct.trie_node_f** %6, align 8
  %23 = getelementptr inbounds %struct.trie_node_f, %struct.trie_node_f* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le64toh(i32 %29)
  %31 = load i32, i32* @trie_children_cmp_f, align 4
  %32 = call %struct.trie_child_entry_f* @bsearch(%struct.trie_child_entry_f* %9, i8* %21, i32 %24, i32 %30, i32 %31)
  store %struct.trie_child_entry_f* %32, %struct.trie_child_entry_f** %8, align 8
  %33 = load %struct.trie_child_entry_f*, %struct.trie_child_entry_f** %8, align 8
  %34 = icmp ne %struct.trie_child_entry_f* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = load %struct.trie_child_entry_f*, %struct.trie_child_entry_f** %8, align 8
  %38 = getelementptr inbounds %struct.trie_child_entry_f, %struct.trie_child_entry_f* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.trie_node_f* @trie_node_from_off(%struct.TYPE_6__* %36, i32 %39)
  store %struct.trie_node_f* %40, %struct.trie_node_f** %4, align 8
  br label %42

41:                                               ; preds = %3
  store %struct.trie_node_f* null, %struct.trie_node_f** %4, align 8
  br label %42

42:                                               ; preds = %41, %35
  %43 = load %struct.trie_node_f*, %struct.trie_node_f** %4, align 8
  ret %struct.trie_node_f* %43
}

declare dso_local %struct.trie_child_entry_f* @bsearch(%struct.trie_child_entry_f*, i8*, i32, i32, i32) #1

declare dso_local i32 @le64toh(i32) #1

declare dso_local %struct.trie_node_f* @trie_node_from_off(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
