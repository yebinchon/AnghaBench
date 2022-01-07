; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_pool_os.c_zpool_label_disk_check.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_pool_os.c_zpool_label_disk_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dk_gpt = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EFI_GPT_PRIMARY_CORRUPT = common dso_local global i32 0, align 4
@EIDRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @zpool_label_disk_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpool_label_disk_check(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dk_gpt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = load i32, i32* @O_DIRECT, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @open(i8* %7, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @errno, align 4
  store i32 %14, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @efi_alloc_and_read(i32 %16, %struct.dk_gpt** %4)
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @close(i32 %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %41

23:                                               ; preds = %15
  %24 = load %struct.dk_gpt*, %struct.dk_gpt** %4, align 8
  %25 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EFI_GPT_PRIMARY_CORRUPT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.dk_gpt*, %struct.dk_gpt** %4, align 8
  %32 = call i32 @efi_free(%struct.dk_gpt* %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @close(i32 %33)
  %35 = load i32, i32* @EIDRM, align 4
  store i32 %35, i32* %2, align 4
  br label %41

36:                                               ; preds = %23
  %37 = load %struct.dk_gpt*, %struct.dk_gpt** %4, align 8
  %38 = call i32 @efi_free(%struct.dk_gpt* %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @close(i32 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %36, %30, %19, %13
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @efi_alloc_and_read(i32, %struct.dk_gpt**) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @efi_free(%struct.dk_gpt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
