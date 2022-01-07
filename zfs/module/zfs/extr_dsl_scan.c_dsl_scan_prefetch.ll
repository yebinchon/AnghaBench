; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_dsl_scan_prefetch.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_dsl_scan_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_24__, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_29__, %struct.TYPE_27__* }

@zfs_no_scrub_prefetch = common dso_local global i64 0, align 8
@DMU_OT_DNODE = common dso_local global i64 0, align 8
@DMU_OT_OBJSET = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.TYPE_29__*, i32*)* @dsl_scan_prefetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_scan_prefetch(%struct.TYPE_27__* %0, %struct.TYPE_29__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  store %struct.TYPE_28__* %13, %struct.TYPE_28__** %8, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  store %struct.TYPE_25__* %18, %struct.TYPE_25__** %9, align 8
  %19 = load i64, i64* @zfs_no_scrub_prefetch, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %23 = call i64 @BP_IS_REDACTED(%struct.TYPE_29__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %3
  br label %107

26:                                               ; preds = %21
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %28 = call i64 @BP_IS_HOLE(%struct.TYPE_29__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %26
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %33, %37
  br i1 %38, label %53, label %39

39:                                               ; preds = %30
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %41 = call i64 @BP_GET_LEVEL(%struct.TYPE_29__* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %45 = call i64 @BP_GET_TYPE(%struct.TYPE_29__* %44)
  %46 = load i64, i64* @DMU_OT_DNODE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %50 = call i64 @BP_GET_TYPE(%struct.TYPE_29__* %49)
  %51 = load i64, i64* @DMU_OT_OBJSET, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %30, %26
  br label %107

54:                                               ; preds = %48, %43, %39
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i64 @dsl_scan_check_prefetch_resume(%struct.TYPE_27__* %55, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %107

60:                                               ; preds = %54
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %63 = call i32 @scan_prefetch_ctx_add_ref(%struct.TYPE_27__* %61, %struct.TYPE_28__* %62)
  %64 = load i32, i32* @KM_SLEEP, align 4
  %65 = call %struct.TYPE_26__* @kmem_alloc(i32 24, i32 %64)
  store %struct.TYPE_26__* %65, %struct.TYPE_26__** %10, align 8
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 2
  store %struct.TYPE_27__* %66, %struct.TYPE_27__** %68, align 8
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %72 = bitcast %struct.TYPE_29__* %70 to i8*
  %73 = bitcast %struct.TYPE_29__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 8, i1 false)
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 0
  %80 = call i32 @mutex_enter(i32* %79)
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %84 = call i32* @avl_find(i32* %82, %struct.TYPE_26__* %83, i32* %7)
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %60
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %88 = call i32 @kmem_free(%struct.TYPE_26__* %87, i32 24)
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %91 = call i32 @scan_prefetch_ctx_rele(%struct.TYPE_27__* %89, %struct.TYPE_28__* %90)
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = call i32 @mutex_exit(i32* %93)
  br label %107

95:                                               ; preds = %60
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @avl_insert(i32* %97, %struct.TYPE_26__* %98, i32 %99)
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 1
  %103 = call i32 @cv_broadcast(i32* %102)
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = call i32 @mutex_exit(i32* %105)
  br label %107

107:                                              ; preds = %95, %86, %59, %53, %25
  ret void
}

declare dso_local i64 @BP_IS_REDACTED(%struct.TYPE_29__*) #1

declare dso_local i64 @BP_IS_HOLE(%struct.TYPE_29__*) #1

declare dso_local i64 @BP_GET_LEVEL(%struct.TYPE_29__*) #1

declare dso_local i64 @BP_GET_TYPE(%struct.TYPE_29__*) #1

declare dso_local i64 @dsl_scan_check_prefetch_resume(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @scan_prefetch_ctx_add_ref(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_26__* @kmem_alloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32* @avl_find(i32*, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @scan_prefetch_ctx_rele(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @avl_insert(i32*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
