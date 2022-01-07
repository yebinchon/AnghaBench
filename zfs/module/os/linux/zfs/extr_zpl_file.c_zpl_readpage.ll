; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c_zpl_readpage.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c_zpl_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @zpl_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpl_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca [1 x %struct.page*], align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call i32 @PageLocked(%struct.page* %9)
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %5, align 8
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %6, i64 0, i64 0
  store %struct.page* %17, %struct.page** %18, align 8
  %19 = call i32 (...) @spl_fstrans_mark()
  store i32 %19, i32* %8, align 4
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %6, i64 0, i64 0
  %22 = call i32 @zfs_getpage(%struct.inode* %20, %struct.page** %21, i32 1)
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @spl_fstrans_unmark(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = call i32 @SetPageError(%struct.page* %29)
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i32 @ClearPageUptodate(%struct.page* %31)
  br label %40

33:                                               ; preds = %2
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = call i32 @ClearPageError(%struct.page* %34)
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = call i32 @SetPageUptodate(%struct.page* %36)
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = call i32 @flush_dcache_page(%struct.page* %38)
  br label %40

40:                                               ; preds = %33, %28
  %41 = load %struct.page*, %struct.page** %4, align 8
  %42 = call i32 @unlock_page(%struct.page* %41)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @spl_fstrans_mark(...) #1

declare dso_local i32 @zfs_getpage(%struct.inode*, %struct.page**, i32) #1

declare dso_local i32 @spl_fstrans_unmark(i32) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageError(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
