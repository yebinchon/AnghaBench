; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_diagnosis.c_zfs_mark_vdev.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_diagnosis.c_zfs_mark_vdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@zfs_cases = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i32*)* @zfs_mark_vdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_mark_vdev(i64 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %14 = call i32 @nvlist_lookup_uint64(i32* %12, i32 %13, i64* %7)
  %15 = load i32, i32* @zfs_cases, align 4
  %16 = call %struct.TYPE_7__* @uu_list_first(i32 %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %11, align 8
  br label %17

17:                                               ; preds = %43, %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %20
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i32, i32* @B_TRUE, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %34, %27, %20
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* @zfs_cases, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %46 = call %struct.TYPE_7__* @uu_list_next(i32 %44, %struct.TYPE_7__* %45)
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %11, align 8
  br label %17

47:                                               ; preds = %17
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %50 = call i64 @nvlist_lookup_nvlist_array(i32* %48, i32 %49, i32*** %10, i64* %9)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  store i64 0, i64* %8, align 8
  br label %53

53:                                               ; preds = %64, %52
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i64, i64* %4, align 8
  %59 = load i32**, i32*** %10, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load i32*, i32** %6, align 8
  call void @zfs_mark_vdev(i64 %58, i32* %62, i32* %63)
  br label %64

64:                                               ; preds = %57
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %8, align 8
  br label %53

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %47
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %71 = call i64 @nvlist_lookup_nvlist_array(i32* %69, i32 %70, i32*** %10, i64* %9)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  store i64 0, i64* %8, align 8
  br label %74

74:                                               ; preds = %85, %73
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i64, i64* %4, align 8
  %80 = load i32**, i32*** %10, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds i32*, i32** %80, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = load i32*, i32** %6, align 8
  call void @zfs_mark_vdev(i64 %79, i32* %83, i32* %84)
  br label %85

85:                                               ; preds = %78
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %8, align 8
  br label %74

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88, %68
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %92 = call i64 @nvlist_lookup_nvlist_array(i32* %90, i32 %91, i32*** %10, i64* %9)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %89
  store i64 0, i64* %8, align 8
  br label %95

95:                                               ; preds = %106, %94
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load i64, i64* %4, align 8
  %101 = load i32**, i32*** %10, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds i32*, i32** %101, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = load i32*, i32** %6, align 8
  call void @zfs_mark_vdev(i64 %100, i32* %104, i32* %105)
  br label %106

106:                                              ; preds = %99
  %107 = load i64, i64* %8, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %8, align 8
  br label %95

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %109, %89
  ret void
}

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local %struct.TYPE_7__* @uu_list_first(i32) #1

declare dso_local %struct.TYPE_7__* @uu_list_next(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
