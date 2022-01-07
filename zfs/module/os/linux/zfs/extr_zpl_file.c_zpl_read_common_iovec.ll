; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c_zpl_read_common_iovec.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c_zpl_read_common_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iovec = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i64, i64, i32, i32, %struct.iovec*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MAXOFFSET_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.iovec*, i64, i64, i32*, i32, i32, i32*, i64)* @zpl_read_common_iovec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpl_read_common_iovec(%struct.inode* %0, %struct.iovec* %1, i64 %2, i64 %3, i32* %4, i32 %5, i32 %6, i32* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.iovec*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_5__, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %11, align 8
  store %struct.iovec* %1, %struct.iovec** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i64 %8, i64* %19, align 8
  %24 = bitcast %struct.TYPE_5__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 56, i1 false)
  %25 = load %struct.iovec*, %struct.iovec** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 6
  store %struct.iovec* %25, %struct.iovec** %26, align 8
  %27 = load i64, i64* %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %16, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @MAXOFFSET_T, align 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  store i32 %34, i32* %35, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* %19, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  store i64 %38, i64* %39, align 8
  %40 = call i32 (...) @spl_fstrans_mark()
  store i32 %40, i32* %23, align 4
  %41 = load %struct.inode*, %struct.inode** %11, align 8
  %42 = load i32, i32* %17, align 4
  %43 = load i32*, i32** %18, align 8
  %44 = call i32 @zfs_read(%struct.inode* %41, %struct.TYPE_5__* %21, i32 %42, i32* %43)
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* %23, align 4
  %47 = call i32 @spl_fstrans_unmark(i32 %46)
  %48 = load i32, i32* %22, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %9
  %51 = load i32, i32* %22, align 4
  store i32 %51, i32* %10, align 4
  br label %63

52:                                               ; preds = %9
  %53 = load i64, i64* %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %53, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %20, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %20, align 4
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %52, %50
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @spl_fstrans_mark(...) #2

declare dso_local i32 @zfs_read(%struct.inode*, %struct.TYPE_5__*, i32, i32*) #2

declare dso_local i32 @spl_fstrans_unmark(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
