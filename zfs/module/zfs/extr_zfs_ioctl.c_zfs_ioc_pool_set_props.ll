; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_set_props.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_set_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ZPOOL_PROP_CACHEFILE = common dso_local global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @zfs_ioc_pool_set_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_pool_set_props(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @get_nvlist(i32 %10, i32 %13, i32 %16, i32** %4)
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %83

21:                                               ; preds = %1
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @nvlist_next_nvpair(i32* %22, i32* null)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %62

26:                                               ; preds = %21
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @nvpair_name(i32* %27)
  %29 = load i32, i32* @ZPOOL_PROP_CACHEFILE, align 4
  %30 = call i32 @zpool_prop_to_name(i32 %29)
  %31 = call i64 @strcmp(i32 %28, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %26
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @nvlist_next_nvpair(i32* %34, i32* %35)
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %33
  %39 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @spa_lookup(i32 %42)
  store i32* %43, i32** %5, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @B_FALSE, align 4
  %49 = call i32 @spa_configfile_set(i32* %46, i32* %47, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @B_FALSE, align 4
  %52 = load i32, i32* @B_TRUE, align 4
  %53 = call i32 @spa_write_cachefile(i32* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %38
  %55 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %56 = load i32*, i32** %5, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @nvlist_free(i32* %59)
  store i32 0, i32* %2, align 4
  br label %83

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %33, %26, %21
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FTAG, align 4
  %67 = call i32 @spa_open(i32 %65, i32** %5, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @nvlist_free(i32* %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %83

73:                                               ; preds = %62
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @spa_prop_set(i32* %74, i32* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @nvlist_free(i32* %77)
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* @FTAG, align 4
  %81 = call i32 @spa_close(i32* %79, i32 %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %73, %69, %58, %19
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @get_nvlist(i32, i32, i32, i32**) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @zpool_prop_to_name(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32* @spa_lookup(i32) #1

declare dso_local i32 @spa_configfile_set(i32*, i32*, i32) #1

declare dso_local i32 @spa_write_cachefile(i32*, i32, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @spa_open(i32, i32**, i32) #1

declare dso_local i32 @spa_prop_set(i32*, i32*) #1

declare dso_local i32 @spa_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
