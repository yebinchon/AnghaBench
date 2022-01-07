; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c_zpl_iter_read_common.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c_zpl_iter_read_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iovec = type { i32 }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iovec*, i64, i64, i32, i64)* @zpl_iter_read_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpl_iter_read_common(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.file*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %7, align 8
  store %struct.iovec* %1, %struct.iovec** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %19 = call i32* (...) @CRED()
  store i32* %19, i32** %13, align 8
  %20 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %21 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %20, i32 0, i32 1
  %22 = load %struct.file*, %struct.file** %21, align 8
  store %struct.file* %22, %struct.file** %14, align 8
  %23 = load %struct.file*, %struct.file** %14, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %15, align 8
  %28 = load %struct.inode*, %struct.inode** %15, align 8
  %29 = call i32 @ITOZ(%struct.inode* %28)
  %30 = call %struct.TYPE_5__* @ZTOZSB(i32 %29)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %16, align 8
  %31 = load %struct.file*, %struct.file** %14, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %18, align 4
  %34 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %35 = call i32 @zfs_io_flags(%struct.kiocb* %34)
  %36 = load i32, i32* %18, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %18, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @crhold(i32* %38)
  %40 = load %struct.file*, %struct.file** %14, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.inode*, %struct.inode** %43, align 8
  %45 = load %struct.iovec*, %struct.iovec** %8, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %49 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %48, i32 0, i32 0
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @zpl_read_common_iovec(%struct.inode* %44, %struct.iovec* %45, i64 %46, i64 %47, i32* %49, i32 %50, i32 %51, i32* %52, i64 %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @crfree(i32* %55)
  %57 = load %struct.inode*, %struct.inode** %15, align 8
  %58 = call i32 @IS_NOATIME(%struct.inode* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %6
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.inode*, %struct.inode** %15, align 8
  %67 = call i64 @zfs_relatime_need_update(%struct.inode* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %struct.file*, %struct.file** %14, align 8
  %71 = call i32 @file_accessed(%struct.file* %70)
  br label %72

72:                                               ; preds = %69, %65
  br label %76

73:                                               ; preds = %60, %6
  %74 = load %struct.file*, %struct.file** %14, align 8
  %75 = call i32 @file_accessed(%struct.file* %74)
  br label %76

76:                                               ; preds = %73, %72
  %77 = load i32, i32* %17, align 4
  ret i32 %77
}

declare dso_local i32* @CRED(...) #1

declare dso_local %struct.TYPE_5__* @ZTOZSB(i32) #1

declare dso_local i32 @ITOZ(%struct.inode*) #1

declare dso_local i32 @zfs_io_flags(%struct.kiocb*) #1

declare dso_local i32 @crhold(i32*) #1

declare dso_local i32 @zpl_read_common_iovec(%struct.inode*, %struct.iovec*, i64, i64, i32*, i32, i32, i32*, i64) #1

declare dso_local i32 @crfree(i32*) #1

declare dso_local i32 @IS_NOATIME(%struct.inode*) #1

declare dso_local i64 @zfs_relatime_need_update(%struct.inode*) #1

declare dso_local i32 @file_accessed(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
