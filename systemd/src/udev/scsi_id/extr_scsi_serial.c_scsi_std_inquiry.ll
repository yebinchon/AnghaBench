; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_scsi_std_inquiry.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_scsi_std_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_id_device = type { i8*, i8*, i8*, i32, i32 }
%struct.stat = type { i32 }

@SCSI_INQ_BUFF_LEN = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"scsi_id: cannot open %s: %m\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"scsi_id: cannot stat %s: %m\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_std_inquiry(%struct.scsi_id_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_id_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_id_device* %0, %struct.scsi_id_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @SCSI_INQ_BUFF_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = load i32, i32* @O_NONBLOCK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @O_CLOEXEC, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @open(i8* %16, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @errno, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @log_debug_errno(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %99

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @fstat(i32 %30, %struct.stat* %9)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @errno, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @log_debug_errno(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 2, i32* %10, align 4
  br label %95

37:                                               ; preds = %29
  %38 = load %struct.scsi_id_device*, %struct.scsi_id_device** %4, align 8
  %39 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @major(i32 %42)
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @minor(i32 %46)
  %48 = call i32 (i32, i8*, i8, ...) @sprintf(i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %44, i32 %47)
  %49 = load i32, i32* @SCSI_INQ_BUFF_LEN, align 4
  %50 = call i32 @memzero(i8* %15, i32 %49)
  %51 = load %struct.scsi_id_device*, %struct.scsi_id_device** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @SCSI_INQ_BUFF_LEN, align 4
  %54 = call i32 @scsi_inquiry(%struct.scsi_id_device* %51, i32 %52, i32 0, i32 0, i8* %15, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %37
  br label %95

58:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  %59 = load %struct.scsi_id_device*, %struct.scsi_id_device** %4, align 8
  %60 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %15, i64 8
  %63 = call i32 @memcpy(i8* %61, i8* %62, i32 8)
  %64 = load %struct.scsi_id_device*, %struct.scsi_id_device** %4, align 8
  %65 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 8
  store i8 0, i8* %67, align 1
  %68 = load %struct.scsi_id_device*, %struct.scsi_id_device** %4, align 8
  %69 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %15, i64 16
  %72 = call i32 @memcpy(i8* %70, i8* %71, i32 16)
  %73 = load %struct.scsi_id_device*, %struct.scsi_id_device** %4, align 8
  %74 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 16
  store i8 0, i8* %76, align 1
  %77 = load %struct.scsi_id_device*, %struct.scsi_id_device** %4, align 8
  %78 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %15, i64 32
  %81 = call i32 @memcpy(i8* %79, i8* %80, i32 4)
  %82 = load %struct.scsi_id_device*, %struct.scsi_id_device** %4, align 8
  %83 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  store i8 0, i8* %85, align 1
  %86 = load %struct.scsi_id_device*, %struct.scsi_id_device** %4, align 8
  %87 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds i8, i8* %15, i64 0
  %90 = load i8, i8* %89, align 16
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, 31
  %93 = trunc i32 %92 to i8
  %94 = call i32 (i32, i8*, i8, ...) @sprintf(i32 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %93)
  br label %95

95:                                               ; preds = %58, %57, %33
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @close(i32 %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %99

99:                                               ; preds = %95, %25
  %100 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @log_debug_errno(i32, i8*, i8*) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @sprintf(i32, i8*, i8 zeroext, ...) #2

declare dso_local i32 @major(i32) #2

declare dso_local i32 @minor(i32) #2

declare dso_local i32 @memzero(i8*, i32) #2

declare dso_local i32 @scsi_inquiry(%struct.scsi_id_device*, i32, i32, i32, i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
