; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_zaccess_dataset_check.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_zaccess_dataset_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@WRITE_MASK = common dso_local global i32 0, align 4
@WRITE_MASK_ATTRS = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@WRITE_MASK_DATA = common dso_local global i32 0, align 4
@ZFS_READONLY = common dso_local global i32 0, align 4
@ZFS_IMMUTABLE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ACE_DELETE = common dso_local global i32 0, align 4
@ACE_DELETE_CHILD = common dso_local global i32 0, align 4
@ZFS_NOUNLINK = common dso_local global i32 0, align 4
@ACE_READ_DATA = common dso_local global i32 0, align 4
@ACE_EXECUTE = common dso_local global i32 0, align 4
@ZFS_AV_QUARANTINED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @zfs_zaccess_dataset_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_zaccess_dataset_check(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @WRITE_MASK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = call i32 @ZTOZSB(%struct.TYPE_6__* %11)
  %13 = call i64 @zfs_is_readonly(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %10
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = call %struct.TYPE_7__* @ZTOI(%struct.TYPE_6__* %16)
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @Z_ISDEV(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = call %struct.TYPE_7__* @ZTOI(%struct.TYPE_6__* %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @Z_ISDEV(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @WRITE_MASK_ATTRS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %15
  %35 = load i32, i32* @EROFS, align 4
  %36 = call i32 @SET_ERROR(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %110

37:                                               ; preds = %29, %22, %10, %2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @WRITE_MASK_DATA, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %75

42:                                               ; preds = %37
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = call %struct.TYPE_7__* @ZTOI(%struct.TYPE_6__* %43)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @S_ISDIR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %42
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ZFS_READONLY, align 4
  %54 = load i32, i32* @ZFS_IMMUTABLE, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %49, %42
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = call %struct.TYPE_7__* @ZTOI(%struct.TYPE_6__* %59)
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @S_ISDIR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ZFS_IMMUTABLE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65, %49
  %73 = load i32, i32* @EPERM, align 4
  %74 = call i32 @SET_ERROR(i32 %73)
  store i32 %74, i32* %3, align 4
  br label %110

75:                                               ; preds = %65, %58, %37
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @ACE_DELETE, align 4
  %78 = load i32, i32* @ACE_DELETE_CHILD, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ZFS_NOUNLINK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @EPERM, align 4
  %91 = call i32 @SET_ERROR(i32 %90)
  store i32 %91, i32* %3, align 4
  br label %110

92:                                               ; preds = %82, %75
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @ACE_READ_DATA, align 4
  %95 = load i32, i32* @ACE_EXECUTE, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %92
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ZFS_AV_QUARANTINED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* @EACCES, align 4
  %108 = call i32 @SET_ERROR(i32 %107)
  store i32 %108, i32* %3, align 4
  br label %110

109:                                              ; preds = %99, %92
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %106, %89, %72, %34
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @zfs_is_readonly(i32) #1

declare dso_local i32 @ZTOZSB(%struct.TYPE_6__*) #1

declare dso_local i64 @Z_ISDEV(i32) #1

declare dso_local %struct.TYPE_7__* @ZTOI(%struct.TYPE_6__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
