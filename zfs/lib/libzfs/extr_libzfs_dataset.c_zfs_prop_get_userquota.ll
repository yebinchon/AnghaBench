; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_prop_get_userquota.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_prop_get_userquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@ZFS_PROP_USERQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_USEROBJQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPOBJQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_PROJECTQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_PROJECTOBJQUOTA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@ZFS_PROP_USERUSED = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPUSED = common dso_local global i64 0, align 8
@ZFS_PROP_PROJECTUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_prop_get_userquota(i32* %0, i8* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @zfs_prop_get_userquota_common(i32* %15, i8* %16, i64* %13, i64* %14)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %6, align 4
  br label %99

22:                                               ; preds = %5
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i64, i64* %13, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @snprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %98

31:                                               ; preds = %22
  %32 = load i64, i64* %13, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %31
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* @ZFS_PROP_USERQUOTA, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %58, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* @ZFS_PROP_GROUPQUOTA, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %58, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* @ZFS_PROP_USEROBJQUOTA, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* @ZFS_PROP_GROUPOBJQUOTA, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* @ZFS_PROP_PROJECTQUOTA, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* @ZFS_PROP_PROJECTOBJQUOTA, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54, %50, %46, %42, %38, %34
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @strlcpy(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %97

62:                                               ; preds = %54, %31
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* @ZFS_PROP_USERQUOTA, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %86, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* @ZFS_PROP_GROUPQUOTA, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %86, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* @ZFS_PROP_USERUSED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* @ZFS_PROP_GROUPUSED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* @ZFS_PROP_PROJECTUSED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* @ZFS_PROP_PROJECTQUOTA, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82, %78, %74, %70, %66, %62
  %87 = load i64, i64* %13, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @zfs_nicebytes(i64 %87, i8* %88, i32 %89)
  br label %96

91:                                               ; preds = %82
  %92 = load i64, i64* %13, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @zfs_nicenum(i64 %92, i8* %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %86
  br label %97

97:                                               ; preds = %96, %58
  br label %98

98:                                               ; preds = %97, %25
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %20
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @zfs_prop_get_userquota_common(i32*, i8*, i64*, i64*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @zfs_nicebytes(i64, i8*, i32) #1

declare dso_local i32 @zfs_nicenum(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
