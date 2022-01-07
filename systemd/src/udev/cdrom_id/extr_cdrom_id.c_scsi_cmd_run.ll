; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_scsi_cmd_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_scsi_cmd_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmd = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i64, i32, i32, i32 }

@SG_DXFER_FROM_DEV = common dso_local global i32 0, align 4
@SG_DXFER_NONE = common dso_local global i32 0, align 4
@SG_IO = common dso_local global i32 0, align 4
@SG_INFO_OK_MASK = common dso_local global i32 0, align 4
@SG_INFO_OK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CHECK_CONDITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmd*, i32, i8*, i64)* @scsi_cmd_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_cmd_run(%struct.scsi_cmd* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.scsi_cmd* %0, %struct.scsi_cmd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i64, i64* %9, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %4
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.scsi_cmd*, %struct.scsi_cmd** %6, align 8
  %16 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i8* %14, i8** %17, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.scsi_cmd*, %struct.scsi_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i64 %18, i64* %21, align 8
  %22 = load i32, i32* @SG_DXFER_FROM_DEV, align 4
  %23 = load %struct.scsi_cmd*, %struct.scsi_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  store i32 %22, i32* %25, align 8
  br label %31

26:                                               ; preds = %4
  %27 = load i32, i32* @SG_DXFER_NONE, align 4
  %28 = load %struct.scsi_cmd*, %struct.scsi_cmd** %6, align 8
  %29 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  store i32 %27, i32* %30, align 8
  br label %31

31:                                               ; preds = %26, %13
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SG_IO, align 4
  %34 = load %struct.scsi_cmd*, %struct.scsi_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %34, i32 0, i32 1
  %36 = call i64 @ioctl(i32 %32, i32 %33, %struct.TYPE_4__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %70

39:                                               ; preds = %31
  %40 = load %struct.scsi_cmd*, %struct.scsi_cmd** %6, align 8
  %41 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SG_INFO_OK_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @SG_INFO_OK, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %39
  %49 = load i32, i32* @EIO, align 4
  store i32 %49, i32* @errno, align 4
  store i32 -1, i32* %10, align 4
  %50 = load %struct.scsi_cmd*, %struct.scsi_cmd** %6, align 8
  %51 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CHECK_CONDITION, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load %struct.scsi_cmd*, %struct.scsi_cmd** %6, align 8
  %59 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ERRCODE(i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 -1, i32* %10, align 4
  br label %66

66:                                               ; preds = %65, %57
  br label %67

67:                                               ; preds = %66, %48
  br label %68

68:                                               ; preds = %67, %39
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %38
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ERRCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
