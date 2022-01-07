; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_hwdb-util.c_node_add_child.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_hwdb-util.c_node_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trie = type { i32, i32 }
%struct.trie_node = type { i32, %struct.trie_child_entry* }
%struct.trie_child_entry = type { %struct.trie_node*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@trie_children_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trie*, %struct.trie_node*, %struct.trie_node*, i32)* @node_add_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_add_child(%struct.trie* %0, %struct.trie_node* %1, %struct.trie_node* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trie*, align 8
  %7 = alloca %struct.trie_node*, align 8
  %8 = alloca %struct.trie_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.trie_child_entry*, align 8
  store %struct.trie* %0, %struct.trie** %6, align 8
  store %struct.trie_node* %1, %struct.trie_node** %7, align 8
  store %struct.trie_node* %2, %struct.trie_node** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.trie_node*, %struct.trie_node** %7, align 8
  %12 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %11, i32 0, i32 1
  %13 = load %struct.trie_child_entry*, %struct.trie_child_entry** %12, align 8
  %14 = load %struct.trie_node*, %struct.trie_node** %7, align 8
  %15 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  %18 = call %struct.trie_child_entry* @reallocarray(%struct.trie_child_entry* %13, i32 %17, i32 16)
  store %struct.trie_child_entry* %18, %struct.trie_child_entry** %10, align 8
  %19 = load %struct.trie_child_entry*, %struct.trie_child_entry** %10, align 8
  %20 = icmp ne %struct.trie_child_entry* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %69

24:                                               ; preds = %4
  %25 = load %struct.trie_child_entry*, %struct.trie_child_entry** %10, align 8
  %26 = load %struct.trie_node*, %struct.trie_node** %7, align 8
  %27 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %26, i32 0, i32 1
  store %struct.trie_child_entry* %25, %struct.trie_child_entry** %27, align 8
  %28 = load %struct.trie*, %struct.trie** %6, align 8
  %29 = getelementptr inbounds %struct.trie, %struct.trie* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.trie_node*, %struct.trie_node** %7, align 8
  %34 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %33, i32 0, i32 1
  %35 = load %struct.trie_child_entry*, %struct.trie_child_entry** %34, align 8
  %36 = load %struct.trie_node*, %struct.trie_node** %7, align 8
  %37 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.trie_child_entry, %struct.trie_child_entry* %35, i64 %39
  %41 = getelementptr inbounds %struct.trie_child_entry, %struct.trie_child_entry* %40, i32 0, i32 1
  store i32 %32, i32* %41, align 8
  %42 = load %struct.trie_node*, %struct.trie_node** %8, align 8
  %43 = load %struct.trie_node*, %struct.trie_node** %7, align 8
  %44 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %43, i32 0, i32 1
  %45 = load %struct.trie_child_entry*, %struct.trie_child_entry** %44, align 8
  %46 = load %struct.trie_node*, %struct.trie_node** %7, align 8
  %47 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.trie_child_entry, %struct.trie_child_entry* %45, i64 %49
  %51 = getelementptr inbounds %struct.trie_child_entry, %struct.trie_child_entry* %50, i32 0, i32 0
  store %struct.trie_node* %42, %struct.trie_node** %51, align 8
  %52 = load %struct.trie_node*, %struct.trie_node** %7, align 8
  %53 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.trie_node*, %struct.trie_node** %7, align 8
  %57 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %56, i32 0, i32 1
  %58 = load %struct.trie_child_entry*, %struct.trie_child_entry** %57, align 8
  %59 = load %struct.trie_node*, %struct.trie_node** %7, align 8
  %60 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = load i32, i32* @trie_children_cmp, align 4
  %64 = call i32 @typesafe_qsort(%struct.trie_child_entry* %58, i64 %62, i32 %63)
  %65 = load %struct.trie*, %struct.trie** %6, align 8
  %66 = getelementptr inbounds %struct.trie, %struct.trie* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %24, %21
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.trie_child_entry* @reallocarray(%struct.trie_child_entry*, i32, i32) #1

declare dso_local i32 @typesafe_qsort(%struct.trie_child_entry*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
