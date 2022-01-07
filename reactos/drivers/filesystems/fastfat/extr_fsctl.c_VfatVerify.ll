; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fsctl.c_VfatVerify.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fsctl.c_VfatVerify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_23__*, %struct.TYPE_25__* }
%struct.TYPE_23__ = type { %struct.TYPE_21__*, i64, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i64 }
%struct.TYPE_22__ = type { i32, i64, i32* }

@.str = private unnamed_addr constant [27 x i8] c"VfatVerify(IrpContext %p)\0A\00", align 1
@SL_ALLOW_RAW_MOUNT = common dso_local global i32 0, align 4
@DO_VERIFY_VOLUME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Already verified\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@IOCTL_DISK_CHECK_VERIFY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@STATUS_VERIFY_REQUIRED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"VfatBlockDeviceIoControl() failed (Status %lx)\0A\00", align 1
@STATUS_WRONG_VOLUME = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@MAXIMUM_VOLUME_LABEL_LENGTH = common dso_local global i32 0, align 4
@FATX16 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"Same volume\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_24__*)* @VfatVerify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @VfatVerify(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_22__, align 8
  %16 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store i32 4, i32* %12, align 4
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %18 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %17)
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  store %struct.TYPE_25__* %25, %struct.TYPE_25__** %4, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  store %struct.TYPE_26__* %28, %struct.TYPE_26__** %8, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  store %struct.TYPE_23__* %35, %struct.TYPE_23__** %10, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SL_ALLOW_RAW_MOUNT, align 4
  %42 = call i64 @BooleanFlagOn(i32 %40, i32 %41)
  store i64 %42, i64* %9, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DO_VERIFY_VOLUME, align 4
  %49 = call i64 @BooleanFlagOn(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %1
  %52 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %53, i64* %2, align 8
  br label %176

54:                                               ; preds = %1
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IOCTL_DISK_CHECK_VERIFY, align 4
  %59 = load i32, i32* @TRUE, align 4
  %60 = call i64 @VfatBlockDeviceIoControl(i32 %57, i32 %58, i32* null, i32 0, i32* %11, i32* %12, i32 %59)
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i64 @NT_SUCCESS(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %54
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @STATUS_VERIFY_REQUIRED, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load i64, i64* %5, align 8
  %70 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %69)
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i64, i64* @STATUS_WRONG_VOLUME, align 8
  br label %77

75:                                               ; preds = %68
  %76 = load i64, i64* %5, align 8
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i64 [ %74, %73 ], [ %76, %75 ]
  store i64 %78, i64* %5, align 8
  br label %166

79:                                               ; preds = %64, %54
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @TRUE, align 4
  %84 = call i64 @VfatHasFileSystem(i32 %82, i64* %7, %struct.TYPE_17__* %6, i32 %83)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = call i64 @NT_SUCCESS(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @FALSE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %88, %79
  %93 = load i64, i64* %5, align 8
  %94 = call i64 @NT_SUCCESS(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %9, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96, %92
  %100 = load i64, i64* @STATUS_WRONG_VOLUME, align 8
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %99, %96
  br label %165

102:                                              ; preds = %88
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 1
  %105 = call i32 @RtlCompareMemory(%struct.TYPE_17__* %6, i32* %104, i32 16)
  %106 = sext i32 %105 to i64
  %107 = icmp eq i64 16, %106
  br i1 %107, label %108, label %162

108:                                              ; preds = %102
  %109 = load i32, i32* @MAXIMUM_VOLUME_LABEL_LENGTH, align 4
  %110 = sext i32 %109 to i64
  %111 = udiv i64 %110, 4
  %112 = call i8* @llvm.stacksave()
  store i8* %112, i8** %13, align 8
  %113 = alloca i32, i64 %111, align 16
  store i64 %111, i64* %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 2
  store i32* %113, i32** %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  store i64 0, i64* %115, align 8
  %116 = mul nuw i64 4, %111
  %117 = trunc i64 %116 to i32
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  store i32 %117, i32* %118, align 8
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %123, %125
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @FATX16, align 8
  %130 = icmp sge i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i64 @ReadVolumeLabel(i32 %121, i32 %126, i32 %131, %struct.TYPE_22__* %15)
  store i64 %132, i64* %5, align 8
  %133 = load i64, i64* %5, align 8
  %134 = call i64 @NT_SUCCESS(i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %108
  %137 = load i64, i64* %9, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i64, i64* @STATUS_WRONG_VOLUME, align 8
  store i64 %140, i64* %5, align 8
  br label %141

141:                                              ; preds = %139, %136
  br label %160

142:                                              ; preds = %108
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  store i32* %145, i32** %146, align 8
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  store i64 %149, i64* %150, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  store i32 8, i32* %151, align 8
  %152 = load i64, i64* @FALSE, align 8
  %153 = call i64 @RtlCompareUnicodeString(%struct.TYPE_22__* %16, %struct.TYPE_22__* %15, i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %142
  %156 = load i64, i64* @STATUS_WRONG_VOLUME, align 8
  store i64 %156, i64* %5, align 8
  br label %159

157:                                              ; preds = %142
  %158 = call i32 @DPRINT1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %155
  br label %160

160:                                              ; preds = %159, %141
  %161 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %161)
  br label %164

162:                                              ; preds = %102
  %163 = load i64, i64* @STATUS_WRONG_VOLUME, align 8
  store i64 %163, i64* %5, align 8
  br label %164

164:                                              ; preds = %162, %160
  br label %165

165:                                              ; preds = %164, %101
  br label %166

166:                                              ; preds = %165, %77
  %167 = load i32, i32* @DO_VERIFY_VOLUME, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, %168
  store i32 %174, i32* %172, align 4
  %175 = load i64, i64* %5, align 8
  store i64 %175, i64* %2, align 8
  br label %176

176:                                              ; preds = %166, %51
  %177 = load i64, i64* %2, align 8
  ret i64 %177
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i64 @BooleanFlagOn(i32, i32) #1

declare dso_local i64 @VfatBlockDeviceIoControl(i32, i32, i32*, i32, i32*, i32*, i32) #1

declare dso_local i64 @NT_SUCCESS(i64) #1

declare dso_local i64 @VfatHasFileSystem(i32, i64*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @RtlCompareMemory(%struct.TYPE_17__*, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @ReadVolumeLabel(i32, i32, i32, %struct.TYPE_22__*) #1

declare dso_local i64 @RtlCompareUnicodeString(%struct.TYPE_22__*, %struct.TYPE_22__*, i64) #1

declare dso_local i32 @DPRINT1(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
