; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_sg_err_category_new.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_sg_err_category_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SG_ERR_CAT_CLEAN = common dso_local global i32 0, align 4
@SCSI_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_COMMAND_TERMINATED = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@RECOVERED_ERROR = common dso_local global i32 0, align 4
@SG_ERR_CAT_RECOVERED = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i32 0, align 4
@SG_ERR_CAT_MEDIA_CHANGED = common dso_local global i32 0, align 4
@SG_ERR_CAT_RESET = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SG_ERR_CAT_NOTSUPPORTED = common dso_local global i32 0, align 4
@SG_ERR_CAT_SENSE = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@DID_TIME_OUT = common dso_local global i32 0, align 4
@SG_ERR_CAT_TIMEOUT = common dso_local global i32 0, align 4
@DRIVER_TIMEOUT = common dso_local global i32 0, align 4
@SG_ERR_CAT_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i8*, i32)* @sg_err_category_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_err_category_new(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 126
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @SG_ERR_CAT_CLEAN, align 4
  store i32 %27, i32* %7, align 4
  br label %137

28:                                               ; preds = %23, %20, %6
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SCSI_CHECK_CONDITION, align 4
  %31 = load i32, i32* @SCSI_COMMAND_TERMINATED, align 4
  %32 = call i64 (i32, i32, i32, ...) @IN_SET(i32 %29, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %35, 15
  %37 = load i32, i32* @DRIVER_SENSE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %112

39:                                               ; preds = %34, %28
  %40 = load i8*, i8** %12, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %110

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  %44 = icmp sgt i32 %43, 2
  br i1 %44, label %45, label %110

45:                                               ; preds = %42
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 2
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load i8*, i8** %12, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 15
  store i32 %57, i32* %14, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %15, align 1
  br label %78

61:                                               ; preds = %45
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 15
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp sgt i32 %67, 12
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 12
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  br label %75

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %69
  %76 = phi i32 [ %73, %69 ], [ 0, %74 ]
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %15, align 1
  br label %78

78:                                               ; preds = %75, %52
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @RECOVERED_ERROR, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @SG_ERR_CAT_RECOVERED, align 4
  store i32 %83, i32* %7, align 4
  br label %137

84:                                               ; preds = %78
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @UNIT_ATTENTION, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = load i8, i8* %15, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 40, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @SG_ERR_CAT_MEDIA_CHANGED, align 4
  store i32 %93, i32* %7, align 4
  br label %137

94:                                               ; preds = %88
  %95 = load i8, i8* %15, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 41, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @SG_ERR_CAT_RESET, align 4
  store i32 %99, i32* %7, align 4
  br label %137

100:                                              ; preds = %94
  br label %108

101:                                              ; preds = %84
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @SG_ERR_CAT_NOTSUPPORTED, align 4
  store i32 %106, i32* %7, align 4
  br label %137

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %100
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109, %42, %39
  %111 = load i32, i32* @SG_ERR_CAT_SENSE, align 4
  store i32 %111, i32* %7, align 4
  br label %137

112:                                              ; preds = %34
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @DID_NO_CONNECT, align 4
  %118 = load i32, i32* @DID_BUS_BUSY, align 4
  %119 = load i32, i32* @DID_TIME_OUT, align 4
  %120 = call i64 (i32, i32, i32, ...) @IN_SET(i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* @SG_ERR_CAT_TIMEOUT, align 4
  store i32 %123, i32* %7, align 4
  br label %137

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %112
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @DRIVER_TIMEOUT, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @SG_ERR_CAT_TIMEOUT, align 4
  store i32 %133, i32* %7, align 4
  br label %137

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134, %125
  %136 = load i32, i32* @SG_ERR_CAT_OTHER, align 4
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %135, %132, %122, %110, %105, %98, %92, %82, %26
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local i64 @IN_SET(i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
