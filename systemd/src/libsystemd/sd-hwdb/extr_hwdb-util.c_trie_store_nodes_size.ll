; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_hwdb-util.c_trie_store_nodes_size.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_hwdb-util.c_trie_store_nodes_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trie_f = type { i32 }
%struct.trie_node = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.trie_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trie_f*, %struct.trie_node*, i32)* @trie_store_nodes_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trie_store_nodes_size(%struct.trie_f* %0, %struct.trie_node* %1, i32 %2) #0 {
  %4 = alloca %struct.trie_f*, align 8
  %5 = alloca %struct.trie_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.trie_f* %0, %struct.trie_f** %4, align 8
  store %struct.trie_node* %1, %struct.trie_node** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %24, %3
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.trie_node*, %struct.trie_node** %5, align 8
  %11 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load %struct.trie_f*, %struct.trie_f** %4, align 8
  %16 = load %struct.trie_node*, %struct.trie_node** %5, align 8
  %17 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.trie_node*, %struct.trie_node** %21, align 8
  %23 = load i32, i32* %6, align 4
  call void @trie_store_nodes_size(%struct.trie_f* %15, %struct.trie_node* %22, i32 %23)
  br label %24

24:                                               ; preds = %14
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %7, align 8
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.trie_f*, %struct.trie_f** %4, align 8
  %29 = getelementptr inbounds %struct.trie_f, %struct.trie_f* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  store i64 0, i64* %7, align 8
  br label %34

34:                                               ; preds = %47, %27
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.trie_node*, %struct.trie_node** %5, align 8
  %37 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load %struct.trie_f*, %struct.trie_f** %4, align 8
  %42 = getelementptr inbounds %struct.trie_f, %struct.trie_f* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 4
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  br label %47

47:                                               ; preds = %40
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %34

50:                                               ; preds = %34
  store i64 0, i64* %7, align 8
  br label %51

51:                                               ; preds = %68, %50
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.trie_node*, %struct.trie_node** %5, align 8
  %54 = getelementptr inbounds %struct.trie_node, %struct.trie_node* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i64 4, i64 4
  %62 = load %struct.trie_f*, %struct.trie_f** %4, align 8
  %63 = getelementptr inbounds %struct.trie_f, %struct.trie_f* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  br label %68

68:                                               ; preds = %57
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %51

71:                                               ; preds = %51
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
