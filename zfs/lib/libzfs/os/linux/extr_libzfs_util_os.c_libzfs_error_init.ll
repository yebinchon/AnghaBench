; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_util_os.c_libzfs_error_init.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_util_os.c_libzfs_error_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"The ZFS modules are not loaded.\0ATry running '/sbin/modprobe zfs' as root to load them.\00", align 1
@.str.1 = private unnamed_addr constant [115 x i8] c"/dev/zfs and /proc/self/mounts are required.\0ATry running 'udevadm trigger' and 'mount -t proc proc /proc' as root.\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"The ZFS modules cannot be auto-loaded.\0ATry running '/sbin/modprobe zfs' as root to manually load them.\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Permission denied the ZFS utilities must be run as root.\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to initialize the libzfs library.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @libzfs_error_init(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %17 [
    i32 128, label %5
    i32 130, label %8
    i32 129, label %11
    i32 131, label %14
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @TEXT_DOMAIN, align 4
  %7 = call i8* @dgettext(i32 %6, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %2, align 8
  br label %20

8:                                                ; preds = %1
  %9 = load i32, i32* @TEXT_DOMAIN, align 4
  %10 = call i8* @dgettext(i32 %9, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.1, i64 0, i64 0))
  store i8* %10, i8** %2, align 8
  br label %20

11:                                               ; preds = %1
  %12 = load i32, i32* @TEXT_DOMAIN, align 4
  %13 = call i8* @dgettext(i32 %12, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0))
  store i8* %13, i8** %2, align 8
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @TEXT_DOMAIN, align 4
  %16 = call i8* @dgettext(i32 %15, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  store i8* %16, i8** %2, align 8
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @TEXT_DOMAIN, align 4
  %19 = call i8* @dgettext(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  store i8* %19, i8** %2, align 8
  br label %20

20:                                               ; preds = %17, %14, %11, %8, %5
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

declare dso_local i8* @dgettext(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
