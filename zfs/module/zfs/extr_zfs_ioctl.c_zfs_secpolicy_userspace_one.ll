; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_secpolicy_userspace_one.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_secpolicy_userspace_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64*, i64, i32 }

@ZFS_NUM_USERQUOTA_PROPS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ZFS_PROP_USERUSED = common dso_local global i64 0, align 8
@ZFS_PROP_USERQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_USEROBJUSED = common dso_local global i64 0, align 8
@ZFS_PROP_USEROBJQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPUSED = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPOBJUSED = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPOBJQUOTA = common dso_local global i64 0, align 8
@userquota_perms = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*)* @zfs_secpolicy_userspace_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_secpolicy_userspace_one(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @zfs_secpolicy_read(%struct.TYPE_4__* %9, i32* %10, i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %113

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ZFS_NUM_USERQUOTA_PROPS, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = call i32 @SET_ERROR(i32 %24)
  store i32 %25, i32* %4, align 4
  br label %113

26:                                               ; preds = %17
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %101

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ZFS_PROP_USERUSED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %57, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ZFS_PROP_USERQUOTA, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ZFS_PROP_USEROBJUSED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ZFS_PROP_USEROBJQUOTA, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51, %45, %39, %33
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i64 @crgetuid(i32* %61)
  %63 = icmp eq i64 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %113

65:                                               ; preds = %57
  br label %100

66:                                               ; preds = %51
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ZFS_PROP_GROUPUSED, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %90, label %72

72:                                               ; preds = %66
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ZFS_PROP_GROUPQUOTA, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %72
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ZFS_PROP_GROUPOBJUSED, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ZFS_PROP_GROUPOBJQUOTA, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %84, %78, %72, %66
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i64 @groupmember(i64 %93, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %113

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %84
  br label %100

100:                                              ; preds = %99, %65
  br label %101

101:                                              ; preds = %100, %26
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** @userquota_perms, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @zfs_secpolicy_write_perms(i32 %104, i32 %110, i32* %111)
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %101, %97, %64, %23, %15
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @zfs_secpolicy_read(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @crgetuid(i32*) #1

declare dso_local i64 @groupmember(i64, i32*) #1

declare dso_local i32 @zfs_secpolicy_write_perms(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
