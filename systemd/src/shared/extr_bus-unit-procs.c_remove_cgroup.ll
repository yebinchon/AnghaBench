; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-procs.c_remove_cgroup.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-procs.c_remove_cgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CGroupInfo = type { %struct.TYPE_2__*, i32, %struct.CGroupInfo*, i32, %struct.CGroupInfo* }
%struct.TYPE_2__ = type { i32 }

@siblings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CGroupInfo*, %struct.CGroupInfo*)* @remove_cgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_cgroup(%struct.CGroupInfo* %0, %struct.CGroupInfo* %1) #0 {
  %3 = alloca %struct.CGroupInfo*, align 8
  %4 = alloca %struct.CGroupInfo*, align 8
  store %struct.CGroupInfo* %0, %struct.CGroupInfo** %3, align 8
  store %struct.CGroupInfo* %1, %struct.CGroupInfo** %4, align 8
  %5 = load %struct.CGroupInfo*, %struct.CGroupInfo** %3, align 8
  %6 = call i32 @assert(%struct.CGroupInfo* %5)
  %7 = load %struct.CGroupInfo*, %struct.CGroupInfo** %4, align 8
  %8 = call i32 @assert(%struct.CGroupInfo* %7)
  br label %9

9:                                                ; preds = %14, %2
  %10 = load %struct.CGroupInfo*, %struct.CGroupInfo** %4, align 8
  %11 = getelementptr inbounds %struct.CGroupInfo, %struct.CGroupInfo* %10, i32 0, i32 4
  %12 = load %struct.CGroupInfo*, %struct.CGroupInfo** %11, align 8
  %13 = icmp ne %struct.CGroupInfo* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.CGroupInfo*, %struct.CGroupInfo** %3, align 8
  %16 = load %struct.CGroupInfo*, %struct.CGroupInfo** %4, align 8
  %17 = getelementptr inbounds %struct.CGroupInfo, %struct.CGroupInfo* %16, i32 0, i32 4
  %18 = load %struct.CGroupInfo*, %struct.CGroupInfo** %17, align 8
  call void @remove_cgroup(%struct.CGroupInfo* %15, %struct.CGroupInfo* %18)
  br label %9

19:                                               ; preds = %9
  %20 = load %struct.CGroupInfo*, %struct.CGroupInfo** %3, align 8
  %21 = load %struct.CGroupInfo*, %struct.CGroupInfo** %4, align 8
  %22 = getelementptr inbounds %struct.CGroupInfo, %struct.CGroupInfo* %21, i32 0, i32 2
  %23 = load %struct.CGroupInfo*, %struct.CGroupInfo** %22, align 8
  %24 = call i32 @hashmap_remove(%struct.CGroupInfo* %20, %struct.CGroupInfo* %23)
  %25 = load %struct.CGroupInfo*, %struct.CGroupInfo** %4, align 8
  %26 = getelementptr inbounds %struct.CGroupInfo, %struct.CGroupInfo* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %19
  %30 = load %struct.CGroupInfo*, %struct.CGroupInfo** %4, align 8
  %31 = getelementptr inbounds %struct.CGroupInfo, %struct.CGroupInfo* %30, i32 0, i32 2
  %32 = load %struct.CGroupInfo*, %struct.CGroupInfo** %31, align 8
  %33 = call i32 @free(%struct.CGroupInfo* %32)
  br label %34

34:                                               ; preds = %29, %19
  %35 = load %struct.CGroupInfo*, %struct.CGroupInfo** %4, align 8
  %36 = getelementptr inbounds %struct.CGroupInfo, %struct.CGroupInfo* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @hashmap_free(i32 %37)
  %39 = load %struct.CGroupInfo*, %struct.CGroupInfo** %4, align 8
  %40 = getelementptr inbounds %struct.CGroupInfo, %struct.CGroupInfo* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = icmp ne %struct.TYPE_2__* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = load i32, i32* @siblings, align 4
  %45 = load %struct.CGroupInfo*, %struct.CGroupInfo** %4, align 8
  %46 = getelementptr inbounds %struct.CGroupInfo, %struct.CGroupInfo* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.CGroupInfo*, %struct.CGroupInfo** %4, align 8
  %51 = call i32 @LIST_REMOVE(i32 %44, i32 %49, %struct.CGroupInfo* %50)
  br label %52

52:                                               ; preds = %43, %34
  %53 = load %struct.CGroupInfo*, %struct.CGroupInfo** %4, align 8
  %54 = call i32 @free(%struct.CGroupInfo* %53)
  ret void
}

declare dso_local i32 @assert(%struct.CGroupInfo*) #1

declare dso_local i32 @hashmap_remove(%struct.CGroupInfo*, %struct.CGroupInfo*) #1

declare dso_local i32 @free(%struct.CGroupInfo*) #1

declare dso_local i32 @hashmap_free(i32) #1

declare dso_local i32 @LIST_REMOVE(i32, i32, %struct.CGroupInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
