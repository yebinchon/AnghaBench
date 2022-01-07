; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_method_can_reboot_to_firmware_setup.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_method_can_reboot_to_firmware_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"SYSTEMD_REBOOT_TO_FIRMWARE_SETUP\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Failed to determine whether reboot to firmware is supported: %m\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"na\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Failed to parse $SYSTEMD_REBOOT_TO_FIRMWARE_SETUP: %m\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"org.freedesktop.login1.set-reboot-to-firmware-setup\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @method_can_reboot_to_firmware_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_can_reboot_to_firmware_setup(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @assert(i32* %12)
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @assert(i32* %14)
  %16 = call i32 @getenv_bool(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %3
  %22 = call i32 (...) @efi_reboot_to_firmware_supported()
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @log_warning_errno(i32 %31, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @sd_bus_reply_method_return(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %35, i32* %4, align 4
  br label %56

36:                                               ; preds = %21
  br label %50

37:                                               ; preds = %3
  %38 = load i32, i32* %9, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @log_warning_errno(i32 %44, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @sd_bus_reply_method_return(i32* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %48, i32* %4, align 4
  br label %56

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %36
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %53 = load i32, i32* @UID_INVALID, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @return_test_polkit(i32* %51, i32 %52, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %53, i32* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %50, %46, %33
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @getenv_bool(i8*) #1

declare dso_local i32 @efi_reboot_to_firmware_supported(...) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @sd_bus_reply_method_return(i32*, i8*, i8*) #1

declare dso_local i32 @return_test_polkit(i32*, i32, i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
