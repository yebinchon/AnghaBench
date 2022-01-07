; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_prop_set.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_prop_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@B_FALSE = common dso_local global i64 0, align 8
@ZPOOL_PROP_CACHEFILE = common dso_local global i64 0, align 8
@ZPOOL_PROP_ALTROOT = common dso_local global i64 0, align 8
@ZPOOL_PROP_READONLY = common dso_local global i64 0, align 8
@ZPOOL_PROP_VERSION = common dso_local global i64 0, align 8
@ZPOOL_PROP_INVAL = common dso_local global i64 0, align 8
@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@spa_sync_version = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_RESERVED = common dso_local global i32 0, align 4
@spa_sync_props = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_prop_set(%struct.TYPE_5__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* null, i32** %7, align 8
  %11 = load i64, i64* @B_FALSE, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = call i32 @spa_prop_validate(%struct.TYPE_5__* %12, i64* %13)
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %97

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %82, %70, %39, %18
  %20 = load i64*, i64** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32* @nvlist_next_nvpair(i64* %20, i32* %21)
  store i32* %22, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %85

24:                                               ; preds = %19
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @nvpair_name(i32* %25)
  %27 = call i64 @zpool_name_to_prop(i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @ZPOOL_PROP_CACHEFILE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @ZPOOL_PROP_ALTROOT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @ZPOOL_PROP_READONLY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31, %24
  br label %19

40:                                               ; preds = %35
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @ZPOOL_PROP_VERSION, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @ZPOOL_PROP_INVAL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %83

48:                                               ; preds = %44, %40
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @ZPOOL_PROP_VERSION, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @nvpair_value_uint64(i32* %53, i64* %10)
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @VERIFY(i32 %56)
  br label %65

58:                                               ; preds = %48
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @nvpair_name(i32* %59)
  %61 = call i32 @zpool_prop_feature(i32 %60)
  %62 = call i32 @ASSERT(i32 %61)
  %63 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* @B_TRUE, align 8
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %58, %52
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = call i64 @spa_version(%struct.TYPE_5__* %67)
  %69 = icmp eq i64 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %19

71:                                               ; preds = %65
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @spa_sync_version, align 4
  %76 = load i32, i32* @ZFS_SPACE_CHECK_RESERVED, align 4
  %77 = call i32 @dsl_sync_task(i32 %74, i32* null, i32 %75, i64* %10, i32 6, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %97

82:                                               ; preds = %71
  br label %19

83:                                               ; preds = %44
  %84 = load i64, i64* @B_TRUE, align 8
  store i64 %84, i64* %8, align 8
  br label %85

85:                                               ; preds = %83, %19
  %86 = load i64, i64* %8, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @spa_sync_props, align 4
  %93 = load i64*, i64** %5, align 8
  %94 = load i32, i32* @ZFS_SPACE_CHECK_RESERVED, align 4
  %95 = call i32 @dsl_sync_task(i32 %91, i32* null, i32 %92, i64* %93, i32 6, i32 %94)
  store i32 %95, i32* %3, align 4
  br label %97

96:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %88, %80, %16
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @spa_prop_validate(%struct.TYPE_5__*, i64*) #1

declare dso_local i32* @nvlist_next_nvpair(i64*, i32*) #1

declare dso_local i64 @zpool_name_to_prop(i32) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvpair_value_uint64(i32*, i64*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zpool_prop_feature(i32) #1

declare dso_local i64 @spa_version(%struct.TYPE_5__*) #1

declare dso_local i32 @dsl_sync_task(i32, i32*, i32, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
