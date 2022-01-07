; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_id.c_scsi_id.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_id.c_scsi_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_id_device = type { i8*, i8*, i8*, i8*, i8*, i8* }

@MAX_SERIAL_LEN = common dso_local global i32 0, align 4
@export = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"ID_SCSI=1\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ID_VENDOR=%s\0A\00", align 1
@vendor_str = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"ID_VENDOR_ENC=%s\0A\00", align 1
@vendor_enc_str = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"ID_MODEL=%s\0A\00", align 1
@model_str = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"ID_MODEL_ENC=%s\0A\00", align 1
@model_enc_str = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"ID_REVISION=%s\0A\00", align 1
@revision_str = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"ID_TYPE=%s\0A\00", align 1
@type_str = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"ID_SERIAL=%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"ID_SERIAL_SHORT=%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"ID_WWN=0x%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"ID_WWN_VENDOR_EXTENSION=0x%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"ID_WWN_WITH_EXTENSION=0x%s%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"ID_WWN_WITH_EXTENSION=0x%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"ID_TARGET_PORT=%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"ID_SCSI_SERIAL=%s\0A\00", align 1
@reformat_serial = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @scsi_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_id(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.scsi_id_device, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %12 = bitcast %struct.scsi_id_device* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 48, i1 false)
  store i32 0, i32* %6, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @set_inq_values(%struct.scsi_id_device* %3, i8* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %153

17:                                               ; preds = %1
  %18 = call i32 @per_dev_options(%struct.scsi_id_device* %3, i32* %4, i32* %5)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %153

22:                                               ; preds = %17
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MAX_SERIAL_LEN, align 4
  %26 = call i32 @scsi_get_serial(%struct.scsi_id_device* %3, i8* %23, i32 %24, i32 %25)
  %27 = load i64, i64* @export, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %124

29:                                               ; preds = %22
  %30 = load i32, i32* @MAX_SERIAL_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %7, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %8, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** @vendor_str, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** @vendor_enc_str, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** @model_str, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** @model_enc_str, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** @revision_str, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** @type_str, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %45)
  %47 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %3, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %29
  %54 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %3, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = sub i64 %31, 1
  %57 = trunc i64 %56 to i32
  %58 = call i32 @util_replace_whitespace(i8* %55, i8* %33, i32 %57)
  %59 = call i32 @util_replace_chars(i8* %33, i32* null)
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %33)
  %61 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %3, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = sub i64 %31, 1
  %64 = trunc i64 %63 to i32
  %65 = call i32 @util_replace_whitespace(i8* %62, i8* %33, i32 %64)
  %66 = call i32 @util_replace_chars(i8* %33, i32* null)
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %33)
  br label %68

68:                                               ; preds = %53, %29
  %69 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %3, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %3, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %77)
  %79 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %3, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %3, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %87)
  %89 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %3, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %3, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %90, i8* %92)
  br label %98

94:                                               ; preds = %75
  %95 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %3, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %94, %85
  br label %99

99:                                               ; preds = %98, %68
  %100 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %3, i32 0, i32 4
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %3, i32 0, i32 4
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %106, %99
  %111 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %3, i32 0, i32 5
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %3, i32 0, i32 5
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %117, %110
  store i32 2, i32* %9, align 4
  %122 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %9, align 4
  switch i32 %123, label %155 [
    i32 2, label %153
  ]

124:                                              ; preds = %22
  %125 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %3, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  store i32 1, i32* %6, align 4
  br label %153

132:                                              ; preds = %124
  %133 = load i64, i64* @reformat_serial, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %132
  %136 = load i32, i32* @MAX_SERIAL_LEN, align 4
  %137 = zext i32 %136 to i64
  %138 = call i8* @llvm.stacksave()
  store i8* %138, i8** %10, align 8
  %139 = alloca i8, i64 %137, align 16
  store i64 %137, i64* %11, align 8
  %140 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %3, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = sub i64 %137, 1
  %143 = trunc i64 %142 to i32
  %144 = call i32 @util_replace_whitespace(i8* %141, i8* %139, i32 %143)
  %145 = call i32 @util_replace_chars(i8* %139, i32* null)
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %139)
  store i32 2, i32* %9, align 4
  %147 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %9, align 4
  switch i32 %148, label %155 [
    i32 2, label %153
  ]

149:                                              ; preds = %132
  %150 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %3, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %151)
  br label %153

153:                                              ; preds = %149, %135, %131, %121, %21, %16
  %154 = load i32, i32* %6, align 4
  ret i32 %154

155:                                              ; preds = %135, %121
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @set_inq_values(%struct.scsi_id_device*, i8*) #2

declare dso_local i32 @per_dev_options(%struct.scsi_id_device*, i32*, i32*) #2

declare dso_local i32 @scsi_get_serial(%struct.scsi_id_device*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @util_replace_whitespace(i8*, i8*, i32) #2

declare dso_local i32 @util_replace_chars(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
