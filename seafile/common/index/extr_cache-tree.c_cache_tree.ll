; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_cache-tree.c_cache_tree.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_cache-tree.c_cache_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_tree = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cache_tree* @cache_tree() #0 {
  %1 = alloca %struct.cache_tree*, align 8
  %2 = call %struct.cache_tree* @calloc(i32 1, i32 4)
  store %struct.cache_tree* %2, %struct.cache_tree** %1, align 8
  %3 = load %struct.cache_tree*, %struct.cache_tree** %1, align 8
  %4 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %3, i32 0, i32 0
  store i32 -1, i32* %4, align 4
  %5 = load %struct.cache_tree*, %struct.cache_tree** %1, align 8
  ret %struct.cache_tree* %5
}

declare dso_local %struct.cache_tree* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
