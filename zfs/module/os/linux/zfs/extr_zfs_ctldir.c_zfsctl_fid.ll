; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_fid.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ctldir.c_zfsctl_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64*, i64*, i64 }

@SHORT_FID_LEN = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfsctl_fid(%struct.inode* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.TYPE_7__* @ITOZ(%struct.inode* %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call i32* @ITOZSB(%struct.inode* %13)
  store i32* %14, i32** %7, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @ZFS_ENTER(i32* %18)
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i64 @zfsctl_is_snapdir(%struct.inode* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @ZFS_EXIT(i32* %24)
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = call i32 @zfsctl_snapdir_fid(%struct.inode* %26, %struct.TYPE_9__* %27)
  store i32 %28, i32* %3, align 4
  br label %86

29:                                               ; preds = %2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SHORT_FID_LEN, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i64, i64* @SHORT_FID_LEN, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @ZFS_EXIT(i32* %39)
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = call i32 @SET_ERROR(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %86

43:                                               ; preds = %29
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = bitcast %struct.TYPE_9__* %44 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %9, align 8
  %46 = load i64, i64* @SHORT_FID_LEN, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %65, %43
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 8
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 8, %55
  %57 = ashr i32 %54, %56
  %58 = sext i32 %57 to i64
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %58, i64* %64, align 8
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %49

68:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %80, %68
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 %71, 8
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %69

83:                                               ; preds = %69
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @ZFS_EXIT(i32* %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %83, %35, %23
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.TYPE_7__* @ITOZ(%struct.inode*) #1

declare dso_local i32* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @ZFS_ENTER(i32*) #1

declare dso_local i64 @zfsctl_is_snapdir(%struct.inode*) #1

declare dso_local i32 @ZFS_EXIT(i32*) #1

declare dso_local i32 @zfsctl_snapdir_fid(%struct.inode*, %struct.TYPE_9__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
