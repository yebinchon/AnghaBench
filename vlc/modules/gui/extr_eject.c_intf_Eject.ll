; ModuleID = '/home/carl/AnghaBench/vlc/modules/gui/extr_eject.c_intf_Eject.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/gui/extr_eject.c_intf_Eject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"could not open device %s\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@CDROMEJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"could not eject %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@MCI_CLOSE = common dso_local global i32 0, align 4
@MCI_DEVTYPE_CD_AUDIO = common dso_local global i64 0, align 8
@MCI_OPEN = common dso_local global i32 0, align 4
@MCI_OPEN_ELEMENT = common dso_local global i32 0, align 4
@MCI_OPEN_SHAREABLE = common dso_local global i32 0, align 4
@MCI_OPEN_TYPE = common dso_local global i32 0, align 4
@MCI_OPEN_TYPE_ID = common dso_local global i32 0, align 4
@MCI_SET = common dso_local global i32 0, align 4
@MCI_SET_DOOR_OPEN = common dso_local global i32 0, align 4
@MCI_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @intf_Eject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intf_Eject(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @VLC_UNUSED(i8* %7)
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = load i32, i32* @O_NONBLOCK, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @vlc_open(i8* %9, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @msg_Err(i8* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %20, i32* %3, align 4
  br label %41

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @CDROMEJECT, align 4
  %24 = call i64 @ioctl(i32 %22, i32 %23, i32 0)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @EjectSCSI(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @msg_Err(i8* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @vlc_close(i32 %34)
  %36 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %26, %21
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @vlc_close(i32 %38)
  %40 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %30, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @VLC_UNUSED(i8*) #1

declare dso_local i32 @vlc_open(i8*, i32) #1

declare dso_local i32 @msg_Err(i8*, i8*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i64 @EjectSCSI(i32) #1

declare dso_local i32 @vlc_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
