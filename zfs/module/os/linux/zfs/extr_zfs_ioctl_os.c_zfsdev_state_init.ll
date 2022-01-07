; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ioctl_os.c_zfsdev_state_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_ioctl_os.c_zfsdev_state_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, i32, i32, %struct.file* }
%struct.file = type { %struct.TYPE_4__* }

@B_FALSE = common dso_local global i64 0, align 8
@zfsdev_state_lock = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@zfsdev_state_list = common dso_local global %struct.TYPE_4__* null, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @zfsdev_state_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfsdev_state_init(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %8 = load i64, i64* @B_FALSE, align 8
  store i64 %8, i64* %7, align 8
  %9 = call i32 @MUTEX_HELD(i32* @zfsdev_state_lock)
  %10 = call i32 @ASSERT(i32 %9)
  %11 = call i8* (...) @zfsdev_minor_alloc()
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  %16 = call i32 @SET_ERROR(i32 %15)
  store i32 %16, i32* %2, align 4
  br label %74

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @zfsdev_state_list, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %4, align 8
  br label %19

19:                                               ; preds = %30, %17
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %34

28:                                               ; preds = %22
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %5, align 8
  br label %30

30:                                               ; preds = %28
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %4, align 8
  br label %19

34:                                               ; preds = %27, %19
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @KM_SLEEP, align 4
  %39 = call %struct.TYPE_4__* @kmem_zalloc(i32 32, i32 %38)
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %4, align 8
  %40 = load i64, i64* @B_TRUE, align 8
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.file*, %struct.file** %3, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  store %struct.file* %42, %struct.file** %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = load %struct.file*, %struct.file** %3, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = bitcast i32* %49 to i32**
  %51 = call i32 @zfs_onexit_init(i32** %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = bitcast i32* %53 to i32**
  %55 = call i32 @zfs_zevent_init(i32** %54)
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %41
  %59 = load i8*, i8** %6, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = call i32 (...) @smp_wmb()
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %66, align 8
  br label %73

67:                                               ; preds = %41
  %68 = call i32 (...) @smp_wmb()
  %69 = load i8*, i8** %6, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %67, %58
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %14
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i8* @zfsdev_minor_alloc(...) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local %struct.TYPE_4__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @zfs_onexit_init(i32**) #1

declare dso_local i32 @zfs_zevent_init(i32**) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
