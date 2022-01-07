; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-patch-uid.c_is_fs_fully_userns_compatible.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-patch-uid.c_is_fs_fully_userns_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32 }

@BINFMTFS_MAGIC = common dso_local global i32 0, align 4
@CGROUP_SUPER_MAGIC = common dso_local global i32 0, align 4
@CGROUP2_SUPER_MAGIC = common dso_local global i32 0, align 4
@DEBUGFS_MAGIC = common dso_local global i32 0, align 4
@DEVPTS_SUPER_MAGIC = common dso_local global i32 0, align 4
@EFIVARFS_MAGIC = common dso_local global i32 0, align 4
@HUGETLBFS_MAGIC = common dso_local global i32 0, align 4
@MQUEUE_MAGIC = common dso_local global i32 0, align 4
@PROC_SUPER_MAGIC = common dso_local global i32 0, align 4
@PSTOREFS_MAGIC = common dso_local global i32 0, align 4
@SELINUX_MAGIC = common dso_local global i32 0, align 4
@SMACK_MAGIC = common dso_local global i32 0, align 4
@SECURITYFS_MAGIC = common dso_local global i32 0, align 4
@BPF_FS_MAGIC = common dso_local global i32 0, align 4
@TRACEFS_MAGIC = common dso_local global i32 0, align 4
@SYSFS_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.statfs*)* @is_fs_fully_userns_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_fs_fully_userns_compatible(%struct.statfs* %0) #0 {
  %2 = alloca %struct.statfs*, align 8
  store %struct.statfs* %0, %struct.statfs** %2, align 8
  %3 = load %struct.statfs*, %struct.statfs** %2, align 8
  %4 = call i32 @assert(%struct.statfs* %3)
  %5 = load %struct.statfs*, %struct.statfs** %2, align 8
  %6 = getelementptr inbounds %struct.statfs, %struct.statfs* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BINFMTFS_MAGIC, align 4
  %9 = call i64 @F_TYPE_EQUAL(i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %116, label %11

11:                                               ; preds = %1
  %12 = load %struct.statfs*, %struct.statfs** %2, align 8
  %13 = getelementptr inbounds %struct.statfs, %struct.statfs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CGROUP_SUPER_MAGIC, align 4
  %16 = call i64 @F_TYPE_EQUAL(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %116, label %18

18:                                               ; preds = %11
  %19 = load %struct.statfs*, %struct.statfs** %2, align 8
  %20 = getelementptr inbounds %struct.statfs, %struct.statfs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CGROUP2_SUPER_MAGIC, align 4
  %23 = call i64 @F_TYPE_EQUAL(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %116, label %25

25:                                               ; preds = %18
  %26 = load %struct.statfs*, %struct.statfs** %2, align 8
  %27 = getelementptr inbounds %struct.statfs, %struct.statfs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DEBUGFS_MAGIC, align 4
  %30 = call i64 @F_TYPE_EQUAL(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %116, label %32

32:                                               ; preds = %25
  %33 = load %struct.statfs*, %struct.statfs** %2, align 8
  %34 = getelementptr inbounds %struct.statfs, %struct.statfs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DEVPTS_SUPER_MAGIC, align 4
  %37 = call i64 @F_TYPE_EQUAL(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %116, label %39

39:                                               ; preds = %32
  %40 = load %struct.statfs*, %struct.statfs** %2, align 8
  %41 = getelementptr inbounds %struct.statfs, %struct.statfs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EFIVARFS_MAGIC, align 4
  %44 = call i64 @F_TYPE_EQUAL(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %116, label %46

46:                                               ; preds = %39
  %47 = load %struct.statfs*, %struct.statfs** %2, align 8
  %48 = getelementptr inbounds %struct.statfs, %struct.statfs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @HUGETLBFS_MAGIC, align 4
  %51 = call i64 @F_TYPE_EQUAL(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %116, label %53

53:                                               ; preds = %46
  %54 = load %struct.statfs*, %struct.statfs** %2, align 8
  %55 = getelementptr inbounds %struct.statfs, %struct.statfs* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MQUEUE_MAGIC, align 4
  %58 = call i64 @F_TYPE_EQUAL(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %116, label %60

60:                                               ; preds = %53
  %61 = load %struct.statfs*, %struct.statfs** %2, align 8
  %62 = getelementptr inbounds %struct.statfs, %struct.statfs* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PROC_SUPER_MAGIC, align 4
  %65 = call i64 @F_TYPE_EQUAL(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %116, label %67

67:                                               ; preds = %60
  %68 = load %struct.statfs*, %struct.statfs** %2, align 8
  %69 = getelementptr inbounds %struct.statfs, %struct.statfs* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PSTOREFS_MAGIC, align 4
  %72 = call i64 @F_TYPE_EQUAL(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %116, label %74

74:                                               ; preds = %67
  %75 = load %struct.statfs*, %struct.statfs** %2, align 8
  %76 = getelementptr inbounds %struct.statfs, %struct.statfs* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SELINUX_MAGIC, align 4
  %79 = call i64 @F_TYPE_EQUAL(i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %116, label %81

81:                                               ; preds = %74
  %82 = load %struct.statfs*, %struct.statfs** %2, align 8
  %83 = getelementptr inbounds %struct.statfs, %struct.statfs* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SMACK_MAGIC, align 4
  %86 = call i64 @F_TYPE_EQUAL(i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %116, label %88

88:                                               ; preds = %81
  %89 = load %struct.statfs*, %struct.statfs** %2, align 8
  %90 = getelementptr inbounds %struct.statfs, %struct.statfs* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SECURITYFS_MAGIC, align 4
  %93 = call i64 @F_TYPE_EQUAL(i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %116, label %95

95:                                               ; preds = %88
  %96 = load %struct.statfs*, %struct.statfs** %2, align 8
  %97 = getelementptr inbounds %struct.statfs, %struct.statfs* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @BPF_FS_MAGIC, align 4
  %100 = call i64 @F_TYPE_EQUAL(i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %95
  %103 = load %struct.statfs*, %struct.statfs** %2, align 8
  %104 = getelementptr inbounds %struct.statfs, %struct.statfs* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @TRACEFS_MAGIC, align 4
  %107 = call i64 @F_TYPE_EQUAL(i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = load %struct.statfs*, %struct.statfs** %2, align 8
  %111 = getelementptr inbounds %struct.statfs, %struct.statfs* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @SYSFS_MAGIC, align 4
  %114 = call i64 @F_TYPE_EQUAL(i32 %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br label %116

116:                                              ; preds = %109, %102, %95, %88, %81, %74, %67, %60, %53, %46, %39, %32, %25, %18, %11, %1
  %117 = phi i1 [ true, %102 ], [ true, %95 ], [ true, %88 ], [ true, %81 ], [ true, %74 ], [ true, %67 ], [ true, %60 ], [ true, %53 ], [ true, %46 ], [ true, %39 ], [ true, %32 ], [ true, %25 ], [ true, %18 ], [ true, %11 ], [ true, %1 ], [ %115, %109 ]
  %118 = zext i1 %117 to i32
  ret i32 %118
}

declare dso_local i32 @assert(%struct.statfs*) #1

declare dso_local i64 @F_TYPE_EQUAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
