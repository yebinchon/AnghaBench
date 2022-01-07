; ModuleID = '/home/carl/AnghaBench/reactos/drivers/usb/usbccgp/extr_pdo.c_USBCCGP_PdoHandleQueryId.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/usb/usbccgp/extr_pdo.c_USBCCGP_PdoHandleQueryId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i8*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i8*, %struct.TYPE_19__, %struct.TYPE_19__ }

@BusQueryDeviceID = common dso_local global i64 0, align 8
@NonPagedPool = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i32] [i32 37, i32 115, i32 38, i32 77, i32 73, i32 95, i32 37, i32 48, i32 50, i32 120, i32 0], align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"BusQueryDeviceID %S\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@BusQueryHardwareIDs = common dso_local global i64 0, align 8
@BusQueryInstanceID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 52, i32 120, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@BusQueryCompatibleIDs = common dso_local global i64 0, align 8
@UNICODE_NULL = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBCCGP_PdoHandleQueryId(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %7, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %12 = call %struct.TYPE_22__* @IoGetCurrentIrpStackLocation(%struct.TYPE_21__* %11)
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %6, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %8, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BusQueryDeviceID, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %81

24:                                               ; preds = %2
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %29 = call i32 @USBCCGP_SyncForwardIrp(i32 %27, %struct.TYPE_21__* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @NT_SUCCESS(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %79

33:                                               ; preds = %24
  %34 = load i32, i32* @NonPagedPool, align 4
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @wcslen(i8* %38)
  %40 = add nsw i32 %39, 7
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i8* @AllocateItem(i32 %34, i32 %43)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %76

47:                                               ; preds = %33
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @ASSERT(i8* %51)
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i8*, i8*, i8*, ...) @swprintf(i8* %53, i8* bitcast ([11 x i32]* @.str to i8*), i8* %57, i8* %62)
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = call i32 @ExFreePool(i32 %70)
  %72 = load i8*, i8** %10, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  store i8* %72, i8** %75, align 8
  br label %78

76:                                               ; preds = %33
  %77 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %76, %47
  br label %79

79:                                               ; preds = %78, %24
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  br label %184

81:                                               ; preds = %2
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @BusQueryHardwareIDs, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 2
  store %struct.TYPE_19__* %93, %struct.TYPE_19__** %7, align 8
  br label %142

94:                                               ; preds = %81
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @BusQueryInstanceID, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %94
  %103 = load i32, i32* @NonPagedPool, align 4
  %104 = call i8* @AllocateItem(i32 %103, i32 20)
  store i8* %104, i8** %10, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %108, i32* %3, align 4
  br label %184

109:                                              ; preds = %102
  %110 = load i8*, i8** %10, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 (i8*, i8*, i8*, ...) @swprintf(i8* %110, i8* bitcast ([5 x i32]* @.str.2 to i8*), i8* %115)
  %117 = load i8*, i8** %10, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  store i8* %117, i8** %120, align 8
  %121 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %121, i32* %3, align 4
  br label %184

122:                                              ; preds = %94
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @BusQueryCompatibleIDs, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  store %struct.TYPE_19__* %134, %struct.TYPE_19__** %7, align 8
  br label %140

135:                                              ; preds = %122
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %3, align 4
  br label %184

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141, %89
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %145 = icmp ne %struct.TYPE_19__* %144, null
  %146 = zext i1 %145 to i32
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8*
  %149 = call i32 @ASSERT(i8* %148)
  %150 = load i32, i32* @NonPagedPool, align 4
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = add i64 %154, 4
  %156 = trunc i64 %155 to i32
  %157 = call i8* @AllocateItem(i32 %150, i32 %156)
  store i8* %157, i8** %10, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %143
  %161 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %161, i32* %3, align 4
  br label %184

162:                                              ; preds = %143
  %163 = load i8*, i8** %10, align 8
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @RtlCopyMemory(i8* %163, i32 %166, i32 %169)
  %171 = load i8, i8* @UNICODE_NULL, align 1
  %172 = load i8*, i8** %10, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = udiv i64 %176, 4
  %178 = getelementptr inbounds i8, i8* %172, i64 %177
  store i8 %171, i8* %178, align 1
  %179 = load i8*, i8** %10, align 8
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  store i8* %179, i8** %182, align 8
  %183 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %162, %160, %135, %109, %107, %79
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local %struct.TYPE_22__* @IoGetCurrentIrpStackLocation(%struct.TYPE_21__*) #1

declare dso_local i32 @USBCCGP_SyncForwardIrp(i32, %struct.TYPE_21__*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i8* @AllocateItem(i32, i32) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i32 @ASSERT(i8*) #1

declare dso_local i32 @swprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @DPRINT(i8*, i8*) #1

declare dso_local i32 @ExFreePool(i32) #1

declare dso_local i32 @RtlCopyMemory(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
