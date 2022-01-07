; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/os/linux/extr_zutil_device_path_os.c_zfs_dev_is_whole_disk.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/os/linux/extr_zutil_device_path_os.c_zfs_dev_is_whole_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dk_gpt = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@EFI_NUMPAR = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_dev_is_whole_disk(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dk_gpt*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @O_RDONLY, align 4
  %8 = load i32, i32* @O_DIRECT, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @open(i8* %6, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @B_FALSE, align 4
  store i32 %13, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @EFI_NUMPAR, align 4
  %17 = call i64 @efi_alloc_and_init(i32 %15, i32 %16, %struct.dk_gpt** %4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @close(i32 %20)
  %22 = load i32, i32* @B_FALSE, align 4
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %14
  %24 = load %struct.dk_gpt*, %struct.dk_gpt** %4, align 8
  %25 = call i32 @efi_free(%struct.dk_gpt* %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @close(i32 %26)
  %28 = load i32, i32* @B_TRUE, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %19, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @efi_alloc_and_init(i32, i32, %struct.dk_gpt**) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @efi_free(%struct.dk_gpt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
