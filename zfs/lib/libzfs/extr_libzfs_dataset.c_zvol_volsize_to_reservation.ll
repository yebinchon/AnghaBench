; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zvol_volsize_to_reservation.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zvol_volsize_to_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_PROP_COPIES = common dso_local global i32 0, align 4
@ZFS_PROP_VOLBLOCKSIZE = common dso_local global i32 0, align 4
@ZVOL_DEFAULT_BLOCKSIZE = common dso_local global i32 0, align 4
@DNODES_PER_LEVEL = common dso_local global i32 0, align 4
@SPA_DVAS_PER_BP = common dso_local global i32 0, align 4
@DN_MAX_INDBLKSHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zvol_volsize_to_reservation(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @ZFS_PROP_COPIES, align 4
  %14 = call i32 @zfs_prop_to_name(i32 %13)
  %15 = call i64 @nvlist_lookup_string(i32* %12, i32 %14, i8** %11)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i8*, i8** %11, align 8
  %19 = call i32 @atoi(i8* %18)
  store i32 %19, i32* %10, align 4
  br label %21

20:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @ZFS_PROP_VOLBLOCKSIZE, align 4
  %24 = call i32 @zfs_prop_to_name(i32 %23)
  %25 = call i64 @nvlist_lookup_uint64(i32* %22, i32 %24, i32* %9)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @ZVOL_DEFAULT_BLOCKSIZE, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @volsize_from_vdevs(i32* %33, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  store i32 7, i32* %7, align 4
  br label %37

37:                                               ; preds = %40, %29
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i32, i32* @DNODES_PER_LEVEL, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @DNODES_PER_LEVEL, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sdiv i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %37

51:                                               ; preds = %37
  %52 = load i32, i32* @SPA_DVAS_PER_BP, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @MIN(i32 %52, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load i64, i64* @DN_MAX_INDBLKSHIFT, align 8
  %62 = shl i64 1, %61
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i32 @volsize_from_vdevs(i32*, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
