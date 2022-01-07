; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_prop_get_feature.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_prop_get_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@spa_feature_table = common dso_local global %struct.TYPE_2__* null, align 8
@B_TRUE = common dso_local global i64 0, align 8
@ZFS_FEATURE_DISABLED = common dso_local global i8* null, align 8
@ZFS_FEATURE_ENABLED = common dso_local global i8* null, align 8
@ZFS_FEATURE_ACTIVE = common dso_local global i8* null, align 8
@ZFS_UNSUPPORTED_INACTIVE = common dso_local global i32 0, align 4
@ZFS_UNSUPPORTED_READONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_prop_get_feature(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i64, i64* @B_FALSE, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @zpool_get_features(i32* %18)
  store i32* %19, i32** %12, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 64)
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** %14, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @zpool_prop_feature(i8* %23)
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @zpool_prop_unsupported(i8* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %4
  %32 = phi i1 [ true, %4 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 @zfeature_lookup_name(i8* %38, i64* %16)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @strlcpy(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* @ENOTSUP, align 4
  store i32 %46, i32* %5, align 4
  br label %108

47:                                               ; preds = %37
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spa_feature_table, align 8
  %49 = load i64, i64* %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %14, align 8
  br label %53

53:                                               ; preds = %47, %31
  %54 = load i32*, i32** %12, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = call i64 @nvlist_lookup_uint64(i32* %54, i8* %55, i64* %10)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i64, i64* @B_TRUE, align 8
  store i64 %59, i64* %11, align 8
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i64, i64* %13, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %60
  %64 = load i64, i64* %11, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** @ZFS_FEATURE_DISABLED, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @strlcpy(i8* %67, i8* %68, i64 %69)
  br label %85

71:                                               ; preds = %63
  %72 = load i64, i64* %10, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** @ZFS_FEATURE_ENABLED, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @strlcpy(i8* %75, i8* %76, i64 %77)
  br label %84

79:                                               ; preds = %71
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** @ZFS_FEATURE_ACTIVE, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @strlcpy(i8* %80, i8* %81, i64 %82)
  br label %84

84:                                               ; preds = %79, %74
  br label %85

85:                                               ; preds = %84, %66
  br label %107

86:                                               ; preds = %60
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load i64, i64* %10, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* @ZFS_UNSUPPORTED_INACTIVE, align 4
  %95 = call i32 @strcpy(i8* %93, i32 %94)
  br label %100

96:                                               ; preds = %89
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* @ZFS_UNSUPPORTED_READONLY, align 4
  %99 = call i32 @strcpy(i8* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %92
  br label %106

101:                                              ; preds = %86
  %102 = load i8*, i8** %8, align 8
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @strlcpy(i8* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %103)
  %105 = load i32, i32* @ENOTSUP, align 4
  store i32 %105, i32* %5, align 4
  br label %108

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %85
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %101, %42
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32* @zpool_get_features(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @zpool_prop_feature(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @zpool_prop_unsupported(i8*) #1

declare dso_local i32 @zfeature_lookup_name(i8*, i64*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i8*, i64*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
