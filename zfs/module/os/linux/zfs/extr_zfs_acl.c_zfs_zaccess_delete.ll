; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_zaccess_delete.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_zaccess_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@B_TRUE = common dso_local global i32 0, align 4
@ZFS_IMMUTABLE = common dso_local global i32 0, align 4
@ZFS_NOUNLINK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ACE_DELETE_CHILD = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ACE_DELETE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ACE_EXECUTE = common dso_local global i32 0, align 4
@ACE_WRITE_DATA = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_zaccess_delete(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @B_TRUE, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @B_TRUE, align 4
  store i32 %16, i32* %14, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ZFS_IMMUTABLE, align 4
  %21 = load i32, i32* @ZFS_NOUNLINK, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EPERM, align 4
  %27 = call i32 @SET_ERROR(i32 %26)
  store i32 %27, i32* %4, align 4
  br label %111

28:                                               ; preds = %3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = load i32, i32* @ACE_DELETE_CHILD, align 4
  %31 = load i32, i32* @B_FALSE, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @zfs_zaccess_common(%struct.TYPE_7__* %29, i32 %30, i32* %8, i32* %13, i32 %31, i32* %32)
  store i32 %33, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %111

36:                                               ; preds = %28
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = load i32, i32* @ACE_DELETE, align 4
  %39 = load i32, i32* @B_FALSE, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @zfs_zaccess_common(%struct.TYPE_7__* %37, i32 %38, i32* %9, i32* %14, i32 %39, i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %111

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ false, %44 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %111

58:                                               ; preds = %50
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %111

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @EACCES, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @secpolicy_vnode_remove(i32* %68)
  store i32 %69, i32* %4, align 4
  br label %111

70:                                               ; preds = %63
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = load i32, i32* @ACE_EXECUTE, align 4
  %73 = load i32, i32* @ACE_WRITE_DATA, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @B_FALSE, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @zfs_zaccess_common(%struct.TYPE_7__* %71, i32 %74, i32* %8, i32* %13, i32 %75, i32* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %111

85:                                               ; preds = %80, %70
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @ACE_WRITE_DATA, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @S_IWUSR, align 4
  br label %93

93:                                               ; preds = %91, %90
  %94 = phi i32 [ 0, %90 ], [ %92, %91 ]
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @ACE_EXECUTE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @S_IXUSR, align 4
  br label %102

102:                                              ; preds = %100, %99
  %103 = phi i32 [ 0, %99 ], [ %101, %100 ]
  %104 = load i32, i32* %12, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %12, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @zfs_delete_final_check(%struct.TYPE_7__* %106, %struct.TYPE_7__* %107, i32 %108, i32* %109)
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %102, %83, %67, %61, %56, %43, %35, %25
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_zaccess_common(%struct.TYPE_7__*, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @secpolicy_vnode_remove(i32*) #1

declare dso_local i32 @zfs_delete_final_check(%struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
