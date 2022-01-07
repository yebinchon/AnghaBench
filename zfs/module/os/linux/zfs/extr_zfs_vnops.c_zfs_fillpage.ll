; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_fillpage.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_fillpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGESIZE = common dso_local global i64 0, align 8
@DMU_READ_PREFETCH = common dso_local global i32 0, align 4
@ECKSUM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page**, i32)* @zfs_fillpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_fillpage(%struct.inode* %0, %struct.page** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.page** %1, %struct.page*** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call %struct.TYPE_5__* @ITOZ(%struct.inode* %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %8, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call %struct.TYPE_6__* @ITOZSB(%struct.inode* %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %9, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %14, align 8
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call i64 @i_size_read(%struct.inode* %30)
  store i64 %31, i64* %15, align 8
  %32 = load %struct.page**, %struct.page*** %6, align 8
  %33 = getelementptr inbounds %struct.page*, %struct.page** %32, i64 0
  %34 = load %struct.page*, %struct.page** %33, align 8
  %35 = call i64 @page_offset(%struct.page* %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %14, align 8
  %38 = add i64 %36, %37
  %39 = load i64, i64* %15, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %3
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* %12, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* %14, align 8
  br label %45

45:                                               ; preds = %41, %3
  store i32 0, i32* %16, align 4
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %14, align 8
  %48 = add i64 %46, %47
  store i64 %48, i64* %13, align 8
  br label %49

49:                                               ; preds = %85, %45
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %89

53:                                               ; preds = %49
  %54 = load %struct.page**, %struct.page*** %6, align 8
  %55 = load i32, i32* %16, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %16, align 4
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds %struct.page*, %struct.page** %54, i64 %57
  %59 = load %struct.page*, %struct.page** %58, align 8
  store %struct.page* %59, %struct.page** %11, align 8
  %60 = load %struct.page*, %struct.page** %11, align 8
  %61 = call i32 @kmap(%struct.page* %60)
  store i32 %61, i32* %18, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* @PAGESIZE, align 8
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* @DMU_READ_PREFETCH, align 4
  %70 = call i32 @dmu_read(i32* %62, i32 %65, i64 %66, i64 %67, i32 %68, i32 %69)
  store i32 %70, i32* %17, align 4
  %71 = load %struct.page*, %struct.page** %11, align 8
  %72 = call i32 @kunmap(%struct.page* %71)
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %53
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* @ECKSUM, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @EIO, align 4
  %81 = call i32 @SET_ERROR(i32 %80)
  store i32 %81, i32* %17, align 4
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %4, align 4
  br label %90

84:                                               ; preds = %53
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* @PAGESIZE, align 8
  %87 = load i64, i64* %12, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %12, align 8
  br label %49

89:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %82
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_5__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @ITOZSB(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @kmap(%struct.page*) #1

declare dso_local i32 @dmu_read(i32*, i32, i64, i64, i32, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
