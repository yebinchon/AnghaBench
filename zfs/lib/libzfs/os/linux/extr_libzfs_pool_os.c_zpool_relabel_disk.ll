; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_pool_os.c_zpool_relabel_disk.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_pool_os.c_zpool_relabel_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDWR = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"cannot relabel '%s': unable to open device: %d\00", align 1
@errno = common dso_local global i32 0, align 4
@EZFS_OPENFAILED = common dso_local global i32 0, align 4
@BLKFLSBUF = common dso_local global i32 0, align 4
@VT_ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"cannot relabel '%s': unable to read disk capacity\00", align 1
@EZFS_NOCAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_relabel_disk(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* @O_RDWR, align 4
  %12 = load i32, i32* @O_DIRECT, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @open(i8* %10, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @TEXT_DOMAIN, align 4
  %19 = call i32 @dgettext(i32 %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 (i32*, i32, i8*, ...) @zfs_error_aux(i32* %17, i32 %19, i8* %20, i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @EZFS_OPENFAILED, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @zfs_error(i32* %23, i32 %24, i8* %25)
  store i32 %26, i32* %4, align 4
  br label %54

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @efi_use_whole_disk(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @fsync(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @BLKFLSBUF, align 4
  %34 = call i32 @ioctl(i32 %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @close(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %27
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @VT_ENOSPC, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @TEXT_DOMAIN, align 4
  %46 = call i32 @dgettext(i32 %45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 (i32*, i32, i8*, ...) @zfs_error_aux(i32* %44, i32 %46, i8* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @EZFS_NOCAP, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @zfs_error(i32* %49, i32 %50, i8* %51)
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %39, %27
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %43, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @zfs_error_aux(i32*, i32, i8*, ...) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

declare dso_local i32 @efi_use_whole_disk(i32) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @ioctl(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
