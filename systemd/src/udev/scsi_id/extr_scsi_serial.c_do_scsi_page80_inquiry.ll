; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_do_scsi_page80_inquiry.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_do_scsi_page80_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_id_device = type { i32 }

@SCSI_INQ_BUFF_LEN = common dso_local global i32 0, align 4
@PAGE_80 = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [22 x i8] c"%s: Invalid page 0x80\00", align 1
@VENDOR_LENGTH = common dso_local global i32 0, align 4
@MODEL_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: length %d too short - need %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_id_device*, i32, i8*, i8*, i32)* @do_scsi_page80_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_scsi_page80_inquiry(%struct.scsi_id_device* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_id_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.scsi_id_device* %0, %struct.scsi_id_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @SCSI_INQ_BUFF_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load i32, i32* @SCSI_INQ_BUFF_LEN, align 4
  %24 = call i32 @memzero(i8* %22, i32 %23)
  %25 = load %struct.scsi_id_device*, %struct.scsi_id_device** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i8, i8* @PAGE_80, align 1
  %28 = load i32, i32* @SCSI_INQ_BUFF_LEN, align 4
  %29 = call i32 @scsi_inquiry(%struct.scsi_id_device* %25, i32 %26, i32 1, i8 zeroext %27, i8* %22, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %117

34:                                               ; preds = %5
  %35 = getelementptr inbounds i8, i8* %22, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @PAGE_80, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.scsi_id_device*, %struct.scsi_id_device** %7, align 8
  %43 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %117

46:                                               ; preds = %34
  %47 = load i32, i32* @VENDOR_LENGTH, align 4
  %48 = add nsw i32 1, %47
  %49 = load i32, i32* @MODEL_LENGTH, align 4
  %50 = add nsw i32 %48, %49
  %51 = getelementptr inbounds i8, i8* %22, i64 3
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %50, %53
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %46
  %59 = load %struct.scsi_id_device*, %struct.scsi_id_device** %7, align 8
  %60 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62, i32 %63)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %117

65:                                               ; preds = %46
  %66 = getelementptr inbounds i8, i8* %22, i64 3
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  store i32 %68, i32* %15, align 4
  %69 = load i8*, i8** %9, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %104

71:                                               ; preds = %65
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 83, i8* %73, align 1
  %74 = load %struct.scsi_id_device*, %struct.scsi_id_device** %7, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = call i32 @append_vendor_model(%struct.scsi_id_device* %74, i8* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  store i32 1, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %117

81:                                               ; preds = %71
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  store i32 4, i32* %14, align 4
  br label %84

84:                                               ; preds = %98, %81
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 4
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %22, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8 %93, i8* %97, align 1
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %84

103:                                              ; preds = %84
  br label %104

104:                                              ; preds = %103, %65
  %105 = load i8*, i8** %10, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %22, i64 4
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @memcpy(i8* %108, i8* %109, i32 %110)
  %112 = load i8*, i8** %10, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  store i8 0, i8* %115, align 1
  br label %116

116:                                              ; preds = %107, %104
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %117

117:                                              ; preds = %116, %80, %58, %41, %32
  %118 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memzero(i8*, i32) #2

declare dso_local i32 @scsi_inquiry(%struct.scsi_id_device*, i32, i32, i8 zeroext, i8*, i32) #2

declare dso_local i32 @log_debug(i8*, i32, ...) #2

declare dso_local i32 @append_vendor_model(%struct.scsi_id_device*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
