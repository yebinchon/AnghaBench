; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_do_scsi_page0_inquiry.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_do_scsi_page0_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_id_device = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s: page 0 not available.\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: page 0 buffer too long %d\00", align 1
@MODEL_LENGTH = common dso_local global i8 0, align 1
@VENDOR_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: invalid page0 data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_id_device*, i32, i8*, i32)* @do_scsi_page0_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_scsi_page0_inquiry(%struct.scsi_id_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_id_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_id_device* %0, %struct.scsi_id_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @memzero(i8* %11, i32 %12)
  %14 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @scsi_inquiry(%struct.scsi_id_device* %14, i32 %15, i32 1, i32 0, i8* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %75

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %30 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 1, i32* %5, align 4
  br label %75

33:                                               ; preds = %22
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i32, i32* %9, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %42 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 3
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %47)
  store i32 1, i32* %5, align 4
  br label %75

49:                                               ; preds = %33
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 3
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @MODEL_LENGTH, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %49
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* @VENDOR_LENGTH, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %63 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @VENDOR_LENGTH, align 4
  %66 = call i64 @strneq(i8* %61, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %70 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  store i32 1, i32* %5, align 4
  br label %75

73:                                               ; preds = %57
  br label %74

74:                                               ; preds = %73, %49
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %68, %40, %28, %21
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @memzero(i8*, i32) #1

declare dso_local i32 @scsi_inquiry(%struct.scsi_id_device*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @log_debug(i8*, i32, ...) #1

declare dso_local i64 @strneq(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
