; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_add_synthetic_resv.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_add_synthetic_resv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ZFS_PROP_VOLSIZE = common dso_local global i32 0, align 4
@ZFS_PROP_VOLBLOCKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_add_synthetic_resv(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = call i32* @zpool_handle(%struct.TYPE_6__* %13)
  store i32* %14, i32** %12, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = load i32, i32* @ZFS_PROP_VOLSIZE, align 4
  %17 = call i64 @zfs_prop_get_int(%struct.TYPE_6__* %15, i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = call i64 @zfs_which_resv_prop(%struct.TYPE_6__* %18, i32* %10)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %77

22:                                               ; preds = %2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @zfs_prop_get_int(%struct.TYPE_6__* %23, i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = call i32* (...) @fnvlist_alloc()
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* @ZFS_PROP_VOLBLOCKSIZE, align 4
  %29 = call i32 @zfs_prop_to_name(i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = load i32, i32* @ZFS_PROP_VOLBLOCKSIZE, align 4
  %32 = call i64 @zfs_prop_get_int(%struct.TYPE_6__* %30, i32 %31)
  %33 = call i32 @fnvlist_add_uint64(i32* %27, i32 %29, i64 %32)
  %34 = load i32*, i32** %12, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i64 @zvol_volsize_to_reservation(i32* %34, i64 %35, i32* %36)
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %22
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @zfs_prop_to_name(i32 %42)
  %44 = call i64 @nvlist_exists(i32* %41, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40, %22
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @fnvlist_free(i32* %47)
  store i32 0, i32* %3, align 4
  br label %77

49:                                               ; preds = %40
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @ZFS_PROP_VOLSIZE, align 4
  %52 = call i32 @zfs_prop_to_name(i32 %51)
  %53 = call i64 @nvlist_lookup_uint64(i32* %50, i32 %52, i64* %7)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @fnvlist_free(i32* %56)
  store i32 -1, i32* %3, align 4
  br label %77

58:                                               ; preds = %49
  %59 = load i32*, i32** %12, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i64 @zvol_volsize_to_reservation(i32* %59, i64 %60, i32* %61)
  store i64 %62, i64* %9, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @fnvlist_free(i32* %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @zfs_prop_to_name(i32 %66)
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @nvlist_add_uint64(i32* %65, i32 %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %58
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @no_memory(i32 %74)
  store i32 -1, i32* %3, align 4
  br label %77

76:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %71, %55, %46, %21
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32* @zpool_handle(%struct.TYPE_6__*) #1

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @zfs_which_resv_prop(%struct.TYPE_6__*, i32*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i64 @zvol_volsize_to_reservation(i32*, i64, i32*) #1

declare dso_local i64 @nvlist_exists(i32*, i32) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i32 @no_memory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
