; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_util.c_addlist.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_util.c_addlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@ZPROP_INVAL = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_TYPE_POOL = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid property '%s'\00", align 1
@EZFS_BADPROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"bad property list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_5__**, i32)* @addlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addlist(i32* %0, i8* %1, %struct.TYPE_5__** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_5__** %2, %struct.TYPE_5__*** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @zprop_name_to_prop(i8* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @ZPROP_INVAL, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @B_FALSE, align 4
  %22 = call i32 @zprop_valid_for_type(i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ZPROP_INVAL, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %24, %18, %4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @ZPROP_INVAL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %69

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @ZFS_TYPE_POOL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @zpool_prop_feature(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @zpool_prop_unsupported(i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %38, %34, %30
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @zfs_prop_user(i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @zfs_prop_userquota(i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @zfs_prop_written(i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %54, %38
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @TEXT_DOMAIN, align 4
  %61 = call i32 @dgettext(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @zfs_error_aux(i32* %59, i32 %61, i8* %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* @EZFS_BADPROP, align 4
  %66 = load i32, i32* @TEXT_DOMAIN, align 4
  %67 = call i32 @dgettext(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @zfs_error(i32* %64, i32 %65, i32 %67)
  store i32 %68, i32* %5, align 4
  br label %107

69:                                               ; preds = %54, %50, %46, %42, %26
  %70 = load i32*, i32** %6, align 8
  %71 = call %struct.TYPE_5__* @zfs_alloc(i32* %70, i32 24)
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %11, align 8
  %72 = icmp eq %struct.TYPE_5__* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 -1, i32* %5, align 4
  br label %107

74:                                               ; preds = %69
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @ZPROP_INVAL, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %74
  %82 = load i32*, i32** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i32* @zfs_strdup(i32* %82, i8* %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  store i32* %84, i32** %86, align 8
  %87 = icmp eq i32* %84, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %90 = call i32 @free(%struct.TYPE_5__* %89)
  store i32 -1, i32* %5, align 4
  br label %107

91:                                               ; preds = %81
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  br label %104

96:                                               ; preds = %74
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @zprop_width(i32 %97, i32* %99, i32 %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %96, %91
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %106 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__* %105, %struct.TYPE_5__** %106, align 8
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %104, %88, %73, %58
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @zprop_name_to_prop(i8*, i32) #1

declare dso_local i32 @zprop_valid_for_type(i32, i32, i32) #1

declare dso_local i32 @zpool_prop_feature(i8*) #1

declare dso_local i32 @zpool_prop_unsupported(i8*) #1

declare dso_local i32 @zfs_prop_user(i8*) #1

declare dso_local i32 @zfs_prop_userquota(i8*) #1

declare dso_local i32 @zfs_prop_written(i8*) #1

declare dso_local i32 @zfs_error_aux(i32*, i32, i8*) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_error(i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @zfs_alloc(i32*, i32) #1

declare dso_local i32* @zfs_strdup(i32*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @zprop_width(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
