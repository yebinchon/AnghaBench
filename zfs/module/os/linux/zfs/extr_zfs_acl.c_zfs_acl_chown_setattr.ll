; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_chown_setattr.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_chown_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@ZFS_ACLTYPE_POSIXACL = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_acl_chown_setattr(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = call %struct.TYPE_13__* @ZTOZSB(%struct.TYPE_11__* %6)
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ZFS_ACLTYPE_POSIXACL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  %16 = call i32 @MUTEX_HELD(i32* %15)
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = call i32 @MUTEX_HELD(i32* %19)
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = load i32, i32* @B_TRUE, align 4
  %24 = load i32, i32* @B_FALSE, align 4
  %25 = call i32 @zfs_acl_node_read(%struct.TYPE_11__* %22, i32 %23, %struct.TYPE_12__** %5, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %13
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %28
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = call %struct.TYPE_14__* @ZTOI(%struct.TYPE_11__* %40)
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @KUID_TO_SUID(i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = call %struct.TYPE_14__* @ZTOI(%struct.TYPE_11__* %45)
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @KGID_TO_SGID(i32 %48)
  %50 = call i32 @zfs_mode_compute(i32 %36, %struct.TYPE_12__* %37, i32* %39, i32 %44, i32 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = call %struct.TYPE_14__* @ZTOI(%struct.TYPE_11__* %51)
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  store i32 %50, i32* %55, align 4
  br label %56

56:                                               ; preds = %33, %28, %13
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @ENOENT, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %60, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_13__* @ZTOZSB(%struct.TYPE_11__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @zfs_acl_node_read(%struct.TYPE_11__*, i32, %struct.TYPE_12__**, i32) #1

declare dso_local i32 @zfs_mode_compute(i32, %struct.TYPE_12__*, i32*, i32, i32) #1

declare dso_local i32 @KUID_TO_SUID(i32) #1

declare dso_local %struct.TYPE_14__* @ZTOI(%struct.TYPE_11__*) #1

declare dso_local i32 @KGID_TO_SGID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
