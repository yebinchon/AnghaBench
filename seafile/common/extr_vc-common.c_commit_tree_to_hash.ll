; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_vc-common.c_commit_tree_to_hash.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_vc-common.c_commit_tree_to_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@g_free = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_5__* null, align 8
@add_to_commit_hash = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*)* @commit_tree_to_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @commit_tree_to_hash(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load i32, i32* @g_str_hash, align 4
  %7 = load i32, i32* @g_str_equal, align 4
  %8 = load i32, i32* @g_free, align 4
  %9 = call i32* @g_hash_table_new_full(i32 %6, i32 %7, i32 %8, i32* null)
  store i32* %9, i32** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @add_to_commit_hash, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @seaf_commit_manager_traverse_commit_tree(i32 %12, i32 %15, i32 %18, i32 %21, i32 %22, i32* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %31

29:                                               ; preds = %1
  %30 = load i32*, i32** %4, align 8
  store i32* %30, i32** %2, align 8
  br label %34

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @g_hash_table_destroy(i32* %32)
  store i32* null, i32** %2, align 8
  br label %34

34:                                               ; preds = %31, %29
  %35 = load i32*, i32** %2, align 8
  ret i32* %35
}

declare dso_local i32* @g_hash_table_new_full(i32, i32, i32, i32*) #1

declare dso_local i32 @seaf_commit_manager_traverse_commit_tree(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @g_hash_table_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
