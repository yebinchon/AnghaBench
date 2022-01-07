; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_inherit_prop.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_inherit_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i64 }

@ZPROP_SRC_NONE = common dso_local global i32 0, align 4
@ZPROP_SRC_INHERITED = common dso_local global i32 0, align 4
@ZPROP_INVAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ZFS_PROP_VOLSIZE = common dso_local global i64 0, align 8
@ZFS_PROP_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @zfs_ioc_inherit_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_inherit_prop(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @zfs_name_to_prop(i8* %15)
  store i64 %16, i64* %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @ZPROP_SRC_NONE, align 4
  br label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @ZPROP_SRC_INHERITED, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %7, align 4
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @ZPROP_INVAL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @zfs_prop_inheritable(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = call i32 @SET_ERROR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %121

41:                                               ; preds = %34, %30
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @ZPROP_INVAL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @zfs_prop_user(i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @EINVAL, align 4
  %52 = call i32 @SET_ERROR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %121

53:                                               ; preds = %46
  store i32 128, i32* %10, align 4
  br label %69

54:                                               ; preds = %42
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @ZFS_PROP_VOLSIZE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @ZFS_PROP_VERSION, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %54
  %63 = load i32, i32* @EINVAL, align 4
  %64 = call i32 @SET_ERROR(i32 %63)
  store i32 %64, i32* %2, align 4
  br label %121

65:                                               ; preds = %58
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @zfs_prop_get_type(i64 %66)
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %68, %53
  %70 = call i32* (...) @fnvlist_alloc()
  store i32* %70, i32** %8, align 8
  %71 = load i32, i32* %10, align 4
  switch i32 %71, label %86 [
    i32 128, label %72
    i32 129, label %79
    i32 130, label %79
  ]

72:                                               ; preds = %69
  %73 = load i32*, i32** %8, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @nvlist_add_string(i32* %73, i8* %74, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %76 = icmp eq i32 0, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @VERIFY(i32 %77)
  br label %89

79:                                               ; preds = %69, %69
  %80 = load i32*, i32** %8, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @nvlist_add_uint64(i32* %80, i8* %81, i32 0)
  %83 = icmp eq i32 0, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @VERIFY(i32 %84)
  br label %89

86:                                               ; preds = %69
  %87 = load i32, i32* @EINVAL, align 4
  %88 = call i32 @SET_ERROR(i32 %87)
  store i32 %88, i32* %11, align 4
  br label %117

89:                                               ; preds = %79, %72
  %90 = load i32*, i32** %8, align 8
  %91 = call i32* @nvlist_next_nvpair(i32* %90, i32* null)
  store i32* %91, i32** %9, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @EINVAL, align 4
  %96 = call i32 @SET_ERROR(i32 %95)
  store i32 %96, i32* %11, align 4
  br label %116

97:                                               ; preds = %89
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @zfs_prop_set_special(i32 %100, i32 %101, i32* %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %115

106:                                              ; preds = %97
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @dsl_prop_inherit(i32 %109, i8* %112, i32 %113)
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %106, %97
  br label %116

116:                                              ; preds = %115, %94
  br label %117

117:                                              ; preds = %116, %86
  %118 = load i32*, i32** %8, align 8
  %119 = call i32 @nvlist_free(i32* %118)
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %117, %62, %50, %38
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i64 @zfs_name_to_prop(i8*) #1

declare dso_local i32 @zfs_prop_inheritable(i64) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_prop_user(i8*) #1

declare dso_local i32 @zfs_prop_get_type(i64) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @nvlist_add_uint64(i32*, i8*, i32) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @zfs_prop_set_special(i32, i32, i32*) #1

declare dso_local i32 @dsl_prop_inherit(i32, i8*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
