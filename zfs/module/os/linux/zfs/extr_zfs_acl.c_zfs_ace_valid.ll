; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_ace_valid.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_ace_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@B_FALSE = common dso_local global i32 0, align 4
@ZFS_ACL_VERSION_FUID = common dso_local global i32 0, align 4
@ZFS_ACL_OBJ_ACE = common dso_local global i32 0, align 4
@ACE_FILE_INHERIT_ACE = common dso_local global i32 0, align 4
@ACE_DIRECTORY_INHERIT_ACE = common dso_local global i32 0, align 4
@ZFS_INHERIT_ACE = common dso_local global i32 0, align 4
@ACE_INHERIT_ONLY_ACE = common dso_local global i32 0, align 4
@ACE_NO_PROPAGATE_INHERIT_ACE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*, i32, i32)* @zfs_ace_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ace_valid(i32 %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %9, align 4
  %12 = call i32 @zfs_acl_valid_ace_type(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @B_FALSE, align 4
  store i32 %15, i32* %5, align 4
  br label %68

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %32 [
    i32 131, label %18
    i32 130, label %18
    i32 128, label %18
    i32 129, label %18
  ]

18:                                               ; preds = %16, %16, %16, %16
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ZFS_ACL_VERSION_FUID, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @B_FALSE, align 4
  store i32 %25, i32* %5, align 4
  br label %68

26:                                               ; preds = %18
  %27 = load i32, i32* @ZFS_ACL_OBJ_ACE, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %16
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @S_ISDIR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @ACE_FILE_INHERIT_ACE, align 4
  %39 = load i32, i32* @ACE_DIRECTORY_INHERIT_ACE, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* @ZFS_INHERIT_ACE, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %36, %32
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @ACE_INHERIT_ONLY_ACE, align 4
  %52 = load i32, i32* @ACE_NO_PROPAGATE_INHERIT_ACE, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @ACE_FILE_INHERIT_ACE, align 4
  %59 = load i32, i32* @ACE_DIRECTORY_INHERIT_ACE, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @B_FALSE, align 4
  store i32 %64, i32* %5, align 4
  br label %68

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %49
  %67 = load i32, i32* @B_TRUE, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %63, %24, %14
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @zfs_acl_valid_ace_type(i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
