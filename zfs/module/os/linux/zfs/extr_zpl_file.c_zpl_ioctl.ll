; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c_zpl_ioctl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c_zpl_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@ENOTTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @zpl_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zpl_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %29 [
    i32 131, label %9
    i32 130, label %14
    i32 129, label %19
    i32 128, label %24
  ]

9:                                                ; preds = %3
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = load i64, i64* %7, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = call i64 @zpl_ioctl_getflags(%struct.file* %10, i8* %12)
  store i64 %13, i64* %4, align 8
  br label %32

14:                                               ; preds = %3
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i64 @zpl_ioctl_setflags(%struct.file* %15, i8* %17)
  store i64 %18, i64* %4, align 8
  br label %32

19:                                               ; preds = %3
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i64 @zpl_ioctl_getxattr(%struct.file* %20, i8* %22)
  store i64 %23, i64* %4, align 8
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i64 @zpl_ioctl_setxattr(%struct.file* %25, i8* %27)
  store i64 %28, i64* %4, align 8
  br label %32

29:                                               ; preds = %3
  %30 = load i64, i64* @ENOTTY, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %29, %24, %19, %14, %9
  %33 = load i64, i64* %4, align 8
  ret i64 %33
}

declare dso_local i64 @zpl_ioctl_getflags(%struct.file*, i8*) #1

declare dso_local i64 @zpl_ioctl_setflags(%struct.file*, i8*) #1

declare dso_local i64 @zpl_ioctl_getxattr(%struct.file*, i8*) #1

declare dso_local i64 @zpl_ioctl_setxattr(%struct.file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
