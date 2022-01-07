; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_znode.c_zfs_obj_to_pobj.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_znode.c_zfs_obj_to_pobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPL_PARENT = common dso_local global i64 0, align 8
@ZPL_FLAGS = common dso_local global i64 0, align 8
@ZPL_MODE = common dso_local global i64 0, align 8
@FTAG = common dso_local global i32 0, align 4
@ZFS_XATTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*)* @zfs_obj_to_pobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_obj_to_pobj(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [3 x i32], align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %19, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %22 = load i32, i32* %19, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i64, i64* @ZPL_PARENT, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SA_ADD_BULK_ATTR(i32* %21, i32 %22, i32 %26, i32* null, i32* %12, i32 4)
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %29 = load i32, i32* %19, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i64, i64* @ZPL_FLAGS, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SA_ADD_BULK_ATTR(i32* %28, i32 %29, i32 %33, i32* null, i32* %13, i32 4)
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %36 = load i32, i32* %19, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i64, i64* @ZPL_MODE, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @SA_ADD_BULK_ATTR(i32* %35, i32 %36, i32 %40, i32* null, i32* %14, i32 4)
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %44 = load i32, i32* %19, align 4
  %45 = call i32 @sa_bulk_lookup(i32* %42, i32* %43, i32 %44)
  store i32 %45, i32* %20, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %5
  %48 = load i32, i32* %20, align 4
  store i32 %48, i32* %6, align 4
  br label %96

49:                                               ; preds = %5
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @FTAG, align 4
  %53 = call i32 @zfs_grab_sa_handle(i32* %50, i32 %51, i32** %17, i32** %18, i32 %52)
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %20, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %20, align 4
  store i32 %57, i32* %6, align 4
  br label %96

58:                                               ; preds = %49
  %59 = load i32*, i32** %17, align 8
  %60 = load i64, i64* @ZPL_MODE, align 8
  %61 = call i32 @sa_lookup(i32* %59, i64 %60, i32* %15, i32 4)
  store i32 %61, i32* %20, align 4
  %62 = load i32*, i32** %17, align 8
  %63 = load i32*, i32** %18, align 8
  %64 = load i32, i32* @FTAG, align 4
  %65 = call i32 @zfs_release_sa_handle(i32* %62, i32* %63, i32 %64)
  %66 = load i32, i32* %20, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %20, align 4
  store i32 %69, i32* %6, align 4
  br label %96

70:                                               ; preds = %58
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @ZFS_XATTR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* %14, align 4
  %77 = call i64 @S_ISDIR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %75, %70
  %80 = phi i1 [ false, %70 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  %82 = load i32*, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %15, align 4
  %88 = call i64 @S_ISDIR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @EINVAL, align 4
  %92 = call i32 @SET_ERROR(i32 %91)
  store i32 %92, i32* %6, align 4
  br label %96

93:                                               ; preds = %86, %79
  %94 = load i32, i32* %12, align 4
  %95 = load i32*, i32** %10, align 8
  store i32 %94, i32* %95, align 4
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %93, %90, %68, %56, %47
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @SA_ADD_BULK_ATTR(i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @sa_bulk_lookup(i32*, i32*, i32) #1

declare dso_local i32 @zfs_grab_sa_handle(i32*, i32, i32**, i32**, i32) #1

declare dso_local i32 @sa_lookup(i32*, i64, i32*, i32) #1

declare dso_local i32 @zfs_release_sa_handle(i32*, i32*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
