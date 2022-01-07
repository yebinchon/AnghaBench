; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_scsi_dump_sense.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_scsi_dump_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_id_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: sense buffer empty\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"%s: sense buffer too small %d bytes, %d bytes too short\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: sense result too small %d bytes\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: invalid sense code 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: sense key 0x%x ASC 0x%x ASCQ 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%s: old sense key: 0x%x\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%s: sense = %2x %2x\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"%s: non-extended sense class %d code 0x%0x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_id_device*, i8*, i32)* @scsi_dump_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_dump_sense(%struct.scsi_id_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_id_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.scsi_id_device* %0, %struct.scsi_id_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = call i32 @SYNTHETIC_ERRNO(i32 %17)
  %19 = load %struct.scsi_id_device*, %struct.scsi_id_device** %5, align 8
  %20 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, i32, ...) @log_debug_errno(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %4, align 4
  br label %171

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = ashr i32 %27, 4
  %29 = and i32 %28, 7
  store i32 %29, i32* %10, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 15
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 7
  br i1 %36, label %37, label %121

37:                                               ; preds = %23
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 7
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %41, 8
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load i32, i32* @EINVAL, align 4
  %48 = call i32 @SYNTHETIC_ERRNO(i32 %47)
  %49 = load %struct.scsi_id_device*, %struct.scsi_id_device** %5, align 8
  %50 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %53, %54
  %56 = call i32 (i32, i8*, i32, ...) @log_debug_errno(i32 %48, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %171

57:                                               ; preds = %37
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @IN_SET(i32 %58, i32 0, i32 1)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %57
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 15
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 14
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load i32, i32* @EINVAL, align 4
  %71 = call i32 @SYNTHETIC_ERRNO(i32 %70)
  %72 = load %struct.scsi_id_device*, %struct.scsi_id_device** %5, align 8
  %73 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (i32, i8*, i32, ...) @log_debug_errno(i32 %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %171

77:                                               ; preds = %61
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 12
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  store i32 %81, i32* %12, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 13
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  store i32 %85, i32* %13, align 4
  br label %113

86:                                               ; preds = %57
  %87 = load i32, i32* %9, align 4
  %88 = call i64 @IN_SET(i32 %87, i32 2, i32 3)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 15
  store i32 %95, i32* %11, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  store i32 %99, i32* %12, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 3
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  store i32 %103, i32* %13, align 4
  br label %112

104:                                              ; preds = %86
  %105 = load i32, i32* @EINVAL, align 4
  %106 = call i32 @SYNTHETIC_ERRNO(i32 %105)
  %107 = load %struct.scsi_id_device*, %struct.scsi_id_device** %5, align 8
  %108 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 (i32, i8*, i32, ...) @log_debug_errno(i32 %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %110)
  store i32 %111, i32* %4, align 4
  br label %171

112:                                              ; preds = %90
  br label %113

113:                                              ; preds = %112, %77
  %114 = load %struct.scsi_id_device*, %struct.scsi_id_device** %5, align 8
  %115 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 (i8*, i32, i32, ...) @log_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %116, i32 %117, i32 %118, i32 %119)
  br label %170

121:                                              ; preds = %23
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 4
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load i32, i32* @EINVAL, align 4
  %126 = call i32 @SYNTHETIC_ERRNO(i32 %125)
  %127 = load %struct.scsi_id_device*, %struct.scsi_id_device** %5, align 8
  %128 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = sub nsw i32 4, %131
  %133 = call i32 (i32, i8*, i32, ...) @log_debug_errno(i32 %126, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %129, i32 %130, i32 %132)
  store i32 %133, i32* %4, align 4
  br label %171

134:                                              ; preds = %121
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp slt i32 %138, 15
  br i1 %139, label %140, label %150

140:                                              ; preds = %134
  %141 = load %struct.scsi_id_device*, %struct.scsi_id_device** %5, align 8
  %142 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i8*, i8** %6, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = and i32 %147, 15
  %149 = call i32 (i8*, i32, i32, ...) @log_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %143, i32 %148)
  br label %163

150:                                              ; preds = %134
  %151 = load %struct.scsi_id_device*, %struct.scsi_id_device** %5, align 8
  %152 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i8*, i8** %6, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8*, i8** %6, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = call i32 (i8*, i32, i32, ...) @log_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %153, i32 %157, i32 %161)
  br label %163

163:                                              ; preds = %150, %140
  %164 = load %struct.scsi_id_device*, %struct.scsi_id_device** %5, align 8
  %165 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %9, align 4
  %169 = call i32 (i8*, i32, i32, ...) @log_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %163, %113
  store i32 -1, i32* %4, align 4
  br label %171

171:                                              ; preds = %170, %124, %104, %69, %46, %16
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @log_debug_errno(i32, i8*, i32, ...) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @log_debug(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
