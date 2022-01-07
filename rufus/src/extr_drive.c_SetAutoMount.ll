; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_SetAutoMount.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_SetAutoMount.c"
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
@IOCTL_MOUNTMGR_SET_AUTO_MOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetAutoMount(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* @MOUNTMGR_DOS_DEVICE_NAME, align 4
  %9 = load i32, i32* @GENERIC_READ, align 4
  %10 = load i32, i32* @GENERIC_WRITE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @FILE_SHARE_READ, align 4
  %13 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @OPEN_EXISTING, align 4
  %16 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %17 = call i32* @CreateFileA(i32 %8, i32 %11, i32 %14, i32* null, i32 %15, i32 %16, i32* null)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %29

22:                                               ; preds = %1
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @IOCTL_MOUNTMGR_SET_AUTO_MOUNT, align 4
  %25 = call i32 @DeviceIoControl(i32* %23, i32 %24, i32* %3, i32 4, i32* null, i32 0, i32* %5, i32* null)
  store i32 %25, i32* %6, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @CloseHandle(i32* %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %22, %20
  %30 = load i32, i32* %2, align 4
  ret i32 %30
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
