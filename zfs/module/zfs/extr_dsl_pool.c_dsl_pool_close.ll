; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_pool.c_dsl_pool_close.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_pool.c_dsl_pool_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_10__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_pool_close(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 21
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 21
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = call i32 @dsl_dataset_rele(i32* %10, %struct.TYPE_9__* %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 20
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 20
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = call i32 @dsl_dir_rele(i32* %21, %struct.TYPE_9__* %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 19
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 19
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = call i32 @dsl_dir_rele(i32* %32, %struct.TYPE_9__* %33)
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 18
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 18
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = call i32 @dsl_dir_rele(i32* %43, %struct.TYPE_9__* %44)
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 17
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 17
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = call i32 @dsl_dir_rele(i32* %54, %struct.TYPE_9__* %55)
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 16
  %60 = call i32 @bpobj_close(i32* %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 15
  %63 = call i32 @bpobj_close(i32* %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 14
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 14
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @dmu_objset_evict(i32* %71)
  br label %73

73:                                               ; preds = %68, %57
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 13
  %76 = call i32 @txg_list_destroy(i32* %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 12
  %79 = call i32 @txg_list_destroy(i32* %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 11
  %82 = call i32 @txg_list_destroy(i32* %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 10
  %85 = call i32 @txg_list_destroy(i32* %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 9
  %88 = call i32 @txg_list_destroy(i32* %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @taskq_destroy(i32 %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @taskq_destroy(i32 %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @FALSE, align 4
  %101 = call i32 @arc_flush(i32 %99, i32 %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mmp_fini(i32 %104)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %107 = call i32 @txg_fini(%struct.TYPE_9__* %106)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %109 = call i32 @dsl_scan_fini(%struct.TYPE_9__* %108)
  %110 = call i32 (...) @dmu_buf_user_evict_wait()
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 5
  %113 = call i32 @rrw_destroy(i32* %112)
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 4
  %116 = call i32 @mutex_destroy(i32* %115)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 3
  %119 = call i32 @cv_destroy(i32* %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @taskq_destroy(i32 %122)
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @taskq_destroy(i32 %126)
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = icmp ne %struct.TYPE_10__* %130, null
  br i1 %131, label %132, label %142

132:                                              ; preds = %73
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = call i32 @mutex_destroy(i32* %136)
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = call i32 @vmem_free(%struct.TYPE_10__* %140, i32 4)
  br label %142

142:                                              ; preds = %132, %73
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %144 = call i32 @kmem_free(%struct.TYPE_9__* %143, i32 120)
  ret void
}

declare dso_local i32 @dsl_dataset_rele(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @dsl_dir_rele(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @bpobj_close(i32*) #1

declare dso_local i32 @dmu_objset_evict(i32*) #1

declare dso_local i32 @txg_list_destroy(i32*) #1

declare dso_local i32 @taskq_destroy(i32) #1

declare dso_local i32 @arc_flush(i32, i32) #1

declare dso_local i32 @mmp_fini(i32) #1

declare dso_local i32 @txg_fini(%struct.TYPE_9__*) #1

declare dso_local i32 @dsl_scan_fini(%struct.TYPE_9__*) #1

declare dso_local i32 @dmu_buf_user_evict_wait(...) #1

declare dso_local i32 @rrw_destroy(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @vmem_free(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
