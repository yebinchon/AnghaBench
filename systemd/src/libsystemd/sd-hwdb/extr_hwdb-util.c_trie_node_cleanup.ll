; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_hwdb-util.c_trie_node_cleanup.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_hwdb-util.c_trie_node_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trie_node = type { i64, %struct.trie_node*, %struct.trie_node*, %struct.trie_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trie_node*)* @trie_node_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trie_node_cleanup(%struct.trie_node* %0) #0 {
  %2 = alloca %struct.trie_node*, align 8
  %3 = alloca i64, align 8
  store %struct.trie_node* %0, %struct.trie_node** %2, align 8
  %4 = load %struct.trie_node*, %struct.trie_node** %2, align 8
  %5 = icmp ne %struct.trie_node* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %36

7:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %22, %7
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.trie_node*, %struct.trie_node** %2, align 8
  %11 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.trie_node*, %struct.trie_node** %2, align 8
  %16 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %15, i32 0, i32 2
  %17 = load %struct.trie_node*, %struct.trie_node** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %17, i64 %18
  %20 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %19, i32 0, i32 3
  %21 = load %struct.trie_node*, %struct.trie_node** %20, align 8
  call void @trie_node_cleanup(%struct.trie_node* %21)
  br label %22

22:                                               ; preds = %14
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %8

25:                                               ; preds = %8
  %26 = load %struct.trie_node*, %struct.trie_node** %2, align 8
  %27 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %26, i32 0, i32 2
  %28 = load %struct.trie_node*, %struct.trie_node** %27, align 8
  %29 = call i32 @free(%struct.trie_node* %28)
  %30 = load %struct.trie_node*, %struct.trie_node** %2, align 8
  %31 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %30, i32 0, i32 1
  %32 = load %struct.trie_node*, %struct.trie_node** %31, align 8
  %33 = call i32 @free(%struct.trie_node* %32)
  %34 = load %struct.trie_node*, %struct.trie_node** %2, align 8
  %35 = call i32 @free(%struct.trie_node* %34)
  br label %36

36:                                               ; preds = %25, %6
  ret void
}

declare dso_local i32 @free(%struct.trie_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
