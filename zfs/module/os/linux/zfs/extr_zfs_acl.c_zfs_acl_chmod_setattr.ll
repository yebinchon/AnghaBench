; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_chmod_setattr.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_chmod_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@V4_ACL_WIDE_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_acl_chmod_setattr(%struct.TYPE_10__* %0, %struct.TYPE_11__** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__**, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = call i32 @mutex_enter(i32* %8)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = call i32 @mutex_enter(i32* %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = call i32 @zfs_acl_version_zp(%struct.TYPE_10__* %13)
  %15 = call %struct.TYPE_11__* @zfs_acl_alloc(i32 %14)
  %16 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %16, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @V4_ACL_WIDE_FLAGS, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = call i32 @ZTOZSB(%struct.TYPE_10__* %25)
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = call i32 @zfs_acl_chmod(i32 %26, i32 %27, %struct.TYPE_11__* %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = call i32 @mutex_exit(i32* %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = call i32 @mutex_exit(i32* %35)
  %37 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = call i32 @ASSERT(%struct.TYPE_11__* %38)
  ret i32 0
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_11__* @zfs_acl_alloc(i32) #1

declare dso_local i32 @zfs_acl_version_zp(%struct.TYPE_10__*) #1

declare dso_local i32 @zfs_acl_chmod(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ZTOZSB(%struct.TYPE_10__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @ASSERT(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
