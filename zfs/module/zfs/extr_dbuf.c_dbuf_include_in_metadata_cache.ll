; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf.c_dbuf_include_in_metadata_cache.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf.c_dbuf_include_in_metadata_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@dbuf_caches = common dso_local global %struct.TYPE_3__* null, align 8
@DB_DBUF_METADATA_CACHE = common dso_local global i64 0, align 8
@dbuf_metadata_cache_max_bytes = common dso_local global i64 0, align 8
@metadata_cache_overflow = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @dbuf_include_in_metadata_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbuf_include_in_metadata_cache(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @DB_DNODE_ENTER(i32* %5)
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.TYPE_4__* @DB_DNODE(i32* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @DB_DNODE_EXIT(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @DMU_OT_IS_METADATA_CACHED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @DMU_OT_IS_METADATA(i32 %17)
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dbuf_caches, align 8
  %21 = load i64, i64* @DB_DBUF_METADATA_CACHE, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i64 @zfs_refcount_count(i32* %23)
  %25 = load i64, i64* @dbuf_metadata_cache_max_bytes, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load i32, i32* @metadata_cache_overflow, align 4
  %29 = call i32 @DBUF_STAT_BUMP(i32 %28)
  %30 = load i32, i32* @B_FALSE, align 4
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %16
  %32 = load i32, i32* @B_TRUE, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @B_FALSE, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %31, %27
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @DB_DNODE_ENTER(i32*) #1

declare dso_local %struct.TYPE_4__* @DB_DNODE(i32*) #1

declare dso_local i32 @DB_DNODE_EXIT(i32*) #1

declare dso_local i64 @DMU_OT_IS_METADATA_CACHED(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DMU_OT_IS_METADATA(i32) #1

declare dso_local i64 @zfs_refcount_count(i32*) #1

declare dso_local i32 @DBUF_STAT_BUMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
