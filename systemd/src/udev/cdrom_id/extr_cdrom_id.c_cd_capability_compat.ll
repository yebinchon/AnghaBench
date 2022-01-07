; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_cd_capability_compat.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_cd_capability_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CDROM_GET_CAPABILITY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"CDROM_GET_CAPABILITY failed\00", align 1
@CDC_CD_R = common dso_local global i32 0, align 4
@cd_cd_r = common dso_local global i32 0, align 4
@CDC_CD_RW = common dso_local global i32 0, align 4
@cd_cd_rw = common dso_local global i32 0, align 4
@CDC_DVD = common dso_local global i32 0, align 4
@cd_dvd_rom = common dso_local global i32 0, align 4
@CDC_DVD_R = common dso_local global i32 0, align 4
@cd_dvd_r = common dso_local global i32 0, align 4
@CDC_DVD_RAM = common dso_local global i32 0, align 4
@cd_dvd_ram = common dso_local global i32 0, align 4
@CDC_MRW = common dso_local global i32 0, align 4
@cd_mrw = common dso_local global i32 0, align 4
@CDC_MRW_W = common dso_local global i32 0, align 4
@cd_mrw_w = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cd_capability_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd_capability_compat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @CDROM_GET_CAPABILITY, align 4
  %7 = call i32 @ioctl(i32 %5, i32 %6, i32* null)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @errno, align 4
  %12 = call i32 @log_debug_errno(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %2, align 4
  br label %56

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CDC_CD_R, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* @cd_cd_r, align 4
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @CDC_CD_RW, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* @cd_cd_rw, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @CDC_DVD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* @cd_dvd_rom, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @CDC_DVD_R, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* @cd_dvd_r, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @CDC_DVD_RAM, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 1, i32* @cd_dvd_ram, align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @CDC_MRW, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* @cd_mrw, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @CDC_MRW_W, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* @cd_mrw_w, align 4
  br label %55

55:                                               ; preds = %54, %49
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %10
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
