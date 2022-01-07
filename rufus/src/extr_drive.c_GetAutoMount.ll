; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_GetAutoMount.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_GetAutoMount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@MOUNTMGR_DOS_DEVICE_NAME = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@IOCTL_MOUNTMGR_QUERY_AUTO_MOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetAutoMount(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load i32, i32* @MOUNTMGR_DOS_DEVICE_NAME, align 4
  %14 = load i32, i32* @GENERIC_READ, align 4
  %15 = load i32, i32* @GENERIC_WRITE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FILE_SHARE_READ, align 4
  %18 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @OPEN_EXISTING, align 4
  %21 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %22 = call i32* @CreateFileA(i32 %13, i32 %16, i32 %19, i32* null, i32 %20, i32 %21, i32* null)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %12
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @IOCTL_MOUNTMGR_QUERY_AUTO_MOUNT, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @DeviceIoControl(i32* %28, i32 %29, i32* null, i32 0, i32* %30, i32 4, i32* %5, i32* null)
  store i32 %31, i32* %6, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @CloseHandle(i32* %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %27, %25, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32* @CreateFileA(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @DeviceIoControl(i32*, i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @CloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
