; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c_zpl_writepages.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c_zpl_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.writeback_control = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@ZFS_SYNC_ALWAYS = common dso_local global i64 0, align 8
@WB_SYNC_ALL = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i32 0, align 4
@zpl_putpage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*)* @zpl_writepages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpl_writepages(%struct.address_space* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.writeback_control*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %4, align 8
  %9 = load %struct.address_space*, %struct.address_space** %3, align 8
  %10 = getelementptr inbounds %struct.address_space, %struct.address_space* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_10__* @ITOZ(i32 %11)
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %5, align 8
  %13 = load %struct.address_space*, %struct.address_space** %3, align 8
  %14 = getelementptr inbounds %struct.address_space, %struct.address_space* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_11__* @ITOZSB(i32 %15)
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %6, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = call i32 @ZFS_ENTER(%struct.TYPE_11__* %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ZFS_SYNC_ALWAYS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @WB_SYNC_ALL, align 4
  %28 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %29 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = call i32 @ZFS_EXIT(%struct.TYPE_11__* %31)
  %33 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %34 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @WB_SYNC_NONE, align 4
  %37 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %38 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.address_space*, %struct.address_space** %3, align 8
  %40 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %41 = load i32, i32* @zpl_putpage, align 4
  %42 = load %struct.address_space*, %struct.address_space** %3, align 8
  %43 = call i32 @write_cache_pages(%struct.address_space* %39, %struct.writeback_control* %40, i32 %41, %struct.address_space* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %46 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %30
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = call i32 @ZFS_ENTER(%struct.TYPE_11__* %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_10__* %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @zil_commit(i32* %61, i32 %64)
  br label %66

66:                                               ; preds = %58, %49
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = call i32 @ZFS_EXIT(%struct.TYPE_11__* %67)
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %71 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.address_space*, %struct.address_space** %3, align 8
  %73 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %74 = load i32, i32* @zpl_putpage, align 4
  %75 = load %struct.address_space*, %struct.address_space** %3, align 8
  %76 = call i32 @write_cache_pages(%struct.address_space* %72, %struct.writeback_control* %73, i32 %74, %struct.address_space* %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %66, %30
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_10__* @ITOZ(i32) #1

declare dso_local %struct.TYPE_11__* @ITOZSB(i32) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_11__*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_11__*) #1

declare dso_local i32 @write_cache_pages(%struct.address_space*, %struct.writeback_control*, i32, %struct.address_space*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_10__*) #1

declare dso_local i32 @zil_commit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
