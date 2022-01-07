; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deadlist.c_dsl_deadlist_clear_entry.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deadlist.c_dsl_deadlist_clear_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, i32, i32* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64 }

@SPA_OLD_MAXBLOCKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_deadlist_clear_entry(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %11, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = call i32 @mutex_enter(i32* %16)
  %18 = load i32*, i32** %11, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @zap_remove_int(i32* %18, i32 %21, i32 %24, i32* %25)
  %27 = call i32 @VERIFY0(i32 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = call i32 @bpobj_space(%struct.TYPE_15__* %29, i64* %8, i64* %9, i64* %10)
  %31 = call i32 @VERIFY0(i32 %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @dmu_buf_will_dirty(i32 %34, i32* %35)
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %43, %37
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %52, %46
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %55
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call %struct.TYPE_14__* @dmu_objset_pool(i32* %68)
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %67, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %3
  %74 = load i32*, i32** %11, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @bpobj_decr_empty(i32* %74, i32* %75)
  br label %85

77:                                               ; preds = %3
  %78 = load i32*, i32** %11, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @bpobj_free(i32* %78, i64 %82, i32* %83)
  br label %85

85:                                               ; preds = %77, %73
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = call i32 @bpobj_close(%struct.TYPE_15__* %87)
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = call i64 @bpobj_alloc_empty(i32* %89, i32 %90, i32* %91)
  store i64 %92, i64* %7, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32*, i32** %11, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @bpobj_open(%struct.TYPE_15__* %94, i32* %95, i64 %96)
  %98 = call i32 @VERIFY0(i32 %97)
  %99 = load i32*, i32** %11, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @zap_add_int_key(i32* %99, i32 %102, i32 %105, i64 %106, i32* %107)
  %109 = call i32 @VERIFY0(i32 %108)
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = call i32 @bpobj_is_empty(%struct.TYPE_15__* %111)
  %113 = call i32 @ASSERT(i32 %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = call i32 @mutex_exit(i32* %115)
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_remove_int(i32*, i32, i32, i32*) #1

declare dso_local i32 @bpobj_space(%struct.TYPE_15__*, i64*, i64*, i64*) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, i32*) #1

declare dso_local %struct.TYPE_14__* @dmu_objset_pool(i32*) #1

declare dso_local i32 @bpobj_decr_empty(i32*, i32*) #1

declare dso_local i32 @bpobj_free(i32*, i64, i32*) #1

declare dso_local i32 @bpobj_close(%struct.TYPE_15__*) #1

declare dso_local i64 @bpobj_alloc_empty(i32*, i32, i32*) #1

declare dso_local i32 @bpobj_open(%struct.TYPE_15__*, i32*, i64) #1

declare dso_local i32 @zap_add_int_key(i32*, i32, i32, i64, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @bpobj_is_empty(%struct.TYPE_15__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
