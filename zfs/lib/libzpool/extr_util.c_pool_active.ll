; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzpool/extr_util.c_pool_active.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzpool/extr_util.c_pool_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32 }

@ZFS_DEV = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"force\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_IOC_POOL_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i32*)* @pool_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pool_active(i8* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load i32, i32* @ZFS_DEV, align 4
  %17 = load i32, i32* @O_RDWR, align 4
  %18 = call i32 @open(i32 %16, i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %65

22:                                               ; preds = %4
  %23 = load i32, i32* @UMEM_NOFAIL, align 4
  %24 = call %struct.TYPE_5__* @umem_zalloc(i32 32, i32 %23)
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %10, align 8
  %25 = call i32* (...) @fnvlist_alloc()
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* @B_FALSE, align 4
  %28 = call i32 @fnvlist_add_boolean_value(i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @strlcpy(i32 %31, i8* %32, i32 4)
  %34 = load i32*, i32** %11, align 8
  %35 = call i8* @fnvlist_pack(i32* %34, i64* %13)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @ZFS_IOC_POOL_SYNC, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = call i32 @zfs_ioctl_fd(i32 %43, i32 %44, %struct.TYPE_5__* %45)
  store i32 %46, i32* %15, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = call i32 @fnvlist_pack_free(i8* %47, i64 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @free(i8* %53)
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @nvlist_free(i32* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = call i32 @umem_free(%struct.TYPE_5__* %57, i32 32)
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @close(i32 %59)
  %61 = load i32, i32* %15, align 4
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %22, %21
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local %struct.TYPE_5__* @umem_zalloc(i32, i32) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_boolean_value(i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @fnvlist_pack(i32*, i64*) #1

declare dso_local i32 @zfs_ioctl_fd(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @fnvlist_pack_free(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @umem_free(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
