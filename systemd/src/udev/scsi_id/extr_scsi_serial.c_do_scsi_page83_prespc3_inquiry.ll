; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_do_scsi_page83_prespc3_inquiry.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_do_scsi_page83_prespc3_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_id_device = type { i32 }

@SCSI_INQ_BUFF_LEN = common dso_local global i32 0, align 4
@PAGE_83 = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [22 x i8] c"%s: Invalid page 0x83\00", align 1
@hex_str = common dso_local global i8* null, align 8
@SCSI_ID_NAA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_id_device*, i32, i8*, i8*, i32)* @do_scsi_page83_prespc3_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_scsi_page83_prespc3_inquiry(%struct.scsi_id_device* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_id_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.scsi_id_device* %0, %struct.scsi_id_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* @SCSI_INQ_BUFF_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load i32, i32* @SCSI_INQ_BUFF_LEN, align 4
  %23 = call i32 @memzero(i8* %21, i32 %22)
  %24 = load %struct.scsi_id_device*, %struct.scsi_id_device** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i8, i8* @PAGE_83, align 1
  %27 = load i32, i32* @SCSI_INQ_BUFF_LEN, align 4
  %28 = call i32 @scsi_inquiry(%struct.scsi_id_device* %24, i32 %25, i32 1, i8 zeroext %26, i8* %21, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %101

32:                                               ; preds = %5
  %33 = getelementptr inbounds i8, i8* %21, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @PAGE_83, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.scsi_id_device*, %struct.scsi_id_device** %7, align 8
  %41 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @log_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %101

44:                                               ; preds = %32
  %45 = getelementptr inbounds i8, i8* %21, i64 6
  %46 = load i8, i8* %45, align 2
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 2, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %101

50:                                               ; preds = %44
  %51 = load i8*, i8** @hex_str, align 8
  %52 = load i64, i64* @SCSI_ID_NAA, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 %54, i8* %56, align 1
  store i32 4, i32* %13, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @strlen(i8* %57)
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %66, %50
  %60 = load i32, i32* %13, align 4
  %61 = getelementptr inbounds i8, i8* %21, i64 3
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = add nsw i32 %63, 4
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %100

66:                                               ; preds = %59
  %67 = load i8*, i8** @hex_str, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %21, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 240
  %74 = ashr i32 %73, 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %67, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 %77, i8* %82, align 1
  %83 = load i8*, i8** @hex_str, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %21, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 15
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %83, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %9, align 8
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 %92, i8* %97, align 1
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %59

100:                                              ; preds = %59
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %101

101:                                              ; preds = %100, %49, %39, %31
  %102 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memzero(i8*, i32) #2

declare dso_local i32 @scsi_inquiry(%struct.scsi_id_device*, i32, i32, i8 zeroext, i8*, i32) #2

declare dso_local i32 @log_debug(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
