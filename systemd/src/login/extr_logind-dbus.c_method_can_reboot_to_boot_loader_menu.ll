; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_method_can_reboot_to_boot_loader_menu.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_method_can_reboot_to_boot_loader_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"SYSTEMD_REBOOT_TO_BOOT_LOADER_MENU\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"Failed to determine whether reboot to boot loader menu is supported: %m\00", align 1
@EFI_LOADER_FEATURE_CONFIG_TIMEOUT_ONE_SHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"na\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Failed to parse $SYSTEMD_REBOOT_TO_BOOT_LOADER_MENU: %m\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"org.freedesktop.login1.set-reboot-to-boot-loader-menu\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @method_can_reboot_to_boot_loader_menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_can_reboot_to_boot_loader_menu(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @assert(i32* %13)
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @assert(i32* %15)
  %17 = call i32 @getenv_bool(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %23 = call i32 @efi_loader_get_features(i32* %10)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @log_warning_errno(i32 %27, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @EFI_LOADER_FEATURE_CONFIG_TIMEOUT_ONE_SHOT, align 4
  %35 = call i32 @FLAGS_SET(i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32, %29
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @sd_bus_reply_method_return(i32* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %39, i32* %4, align 4
  br label %60

40:                                               ; preds = %32
  br label %54

41:                                               ; preds = %3
  %42 = load i32, i32* %9, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @log_warning_errno(i32 %48, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @sd_bus_reply_method_return(i32* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %52, i32* %4, align 4
  br label %60

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %57 = load i32, i32* @UID_INVALID, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @return_test_polkit(i32* %55, i32 %56, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %57, i32* %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %54, %50, %37
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @getenv_bool(i8*) #1

declare dso_local i32 @efi_loader_get_features(i32*) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @FLAGS_SET(i32, i32) #1

declare dso_local i32 @sd_bus_reply_method_return(i32*, i8*, i8*) #1

declare dso_local i32 @return_test_polkit(i32*, i32, i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
