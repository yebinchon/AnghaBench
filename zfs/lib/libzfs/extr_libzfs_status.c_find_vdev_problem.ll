; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_status.c_find_vdev_problem.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_status.c_find_vdev_problem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_REPLACING = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VDEV_STATS = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32 (i32, i32, i32)*)* @find_vdev_problem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_vdev_problem(i32* %0, i32 (i32, i32, i32)* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32 (i32, i32, i32)*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 (i32, i32, i32)* %1, i32 (i32, i32, i32)** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %13 = call i64 @nvlist_lookup_string(i32* %11, i32 %12, i8** %10)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @verify(i32 %15)
  %17 = load i8*, i8** %10, align 8
  %18 = load i32, i32* @VDEV_TYPE_REPLACING, align 4
  %19 = call i64 @strcmp(i8* %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i8*, i8** @B_FALSE, align 8
  store i8* %22, i8** %3, align 8
  br label %106

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %26 = call i64 @nvlist_lookup_nvlist_array(i32* %24, i32 %25, i32*** %6, i64* %9)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i32**, i32*** %6, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %5, align 8
  %39 = call i8* @find_vdev_problem(i32* %37, i32 (i32, i32, i32)* %38)
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i8*, i8** @B_TRUE, align 8
  store i8* %42, i8** %3, align 8
  br label %106

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %29

47:                                               ; preds = %29
  br label %79

48:                                               ; preds = %23
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @ZPOOL_CONFIG_VDEV_STATS, align 4
  %51 = bitcast %struct.TYPE_2__** %7 to i32**
  %52 = call i64 @nvlist_lookup_uint64_array(i32* %49, i32 %50, i32** %51, i64* %8)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @verify(i32 %54)
  %56 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %5, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %65, %68
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %69, %72
  %74 = call i32 %56(i32 %59, i32 %62, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %48
  %77 = load i8*, i8** @B_TRUE, align 8
  store i8* %77, i8** %3, align 8
  br label %106

78:                                               ; preds = %48
  br label %79

79:                                               ; preds = %78, %47
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %82 = call i64 @nvlist_lookup_nvlist_array(i32* %80, i32 %81, i32*** %6, i64* %9)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %79
  store i64 0, i64* %8, align 8
  br label %85

85:                                               ; preds = %100, %84
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load i32**, i32*** %6, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds i32*, i32** %90, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %5, align 8
  %95 = call i8* @find_vdev_problem(i32* %93, i32 (i32, i32, i32)* %94)
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i8*, i8** @B_TRUE, align 8
  store i8* %98, i8** %3, align 8
  br label %106

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %8, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %8, align 8
  br label %85

103:                                              ; preds = %85
  br label %104

104:                                              ; preds = %103, %79
  %105 = load i8*, i8** @B_FALSE, align 8
  store i8* %105, i8** %3, align 8
  br label %106

106:                                              ; preds = %104, %97, %76, %41, %21
  %107 = load i8*, i8** %3, align 8
  ret i8* %107
}

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i64 @nvlist_lookup_uint64_array(i32*, i32, i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
