; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/diskspeed/extr_diskspeed.c_GetInquiryData.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/diskspeed/extr_diskspeed.c_GetInquiryData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i32 }

@IOCTL_SCSI_GET_ADDRESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@IOCTL_SCSI_GET_INQUIRY_DATA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetInquiryData(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca [4096 x %struct.TYPE_8__], align 16
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IOCTL_SCSI_GET_ADDRESS, align 4
  %15 = load i64, i64* @FALSE, align 8
  %16 = call i64 @DeviceIoControl(i32 %13, i32 %14, i32* null, i32 0, %struct.TYPE_8__* %8, i32 24, i32* %7, i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @FALSE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %3, align 8
  br label %111

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IOCTL_SCSI_GET_INQUIRY_DATA, align 4
  %25 = getelementptr inbounds [4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* %11, i64 0, i64 0
  %26 = load i64, i64* @FALSE, align 8
  %27 = call i64 @DeviceIoControl(i32 %23, i32 %24, i32* null, i32 0, %struct.TYPE_8__* %25, i32 98304, i32* %7, i64 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %109

30:                                               ; preds = %22
  %31 = getelementptr inbounds [4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* %11, i64 0, i64 0
  %32 = bitcast %struct.TYPE_8__* %31 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %9, align 8
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %105, %30
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %108

39:                                               ; preds = %33
  %40 = getelementptr inbounds [4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* %11, i64 0, i64 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %49
  %51 = bitcast %struct.TYPE_8__* %50 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %10, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %104

61:                                               ; preds = %39
  br label %62

62:                                               ; preds = %61, %96
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %65, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %62
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %69
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %79, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @memcpy(i32 %84, i32 %87, i32 4)
  %89 = load i64, i64* @TRUE, align 8
  store i64 %89, i64* %3, align 8
  br label %111

90:                                               ; preds = %76, %69, %62
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %103

96:                                               ; preds = %90
  %97 = getelementptr inbounds [4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* %11, i64 0, i64 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %100
  %102 = bitcast %struct.TYPE_8__* %101 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %10, align 8
  br label %62

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %39
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %33

108:                                              ; preds = %33
  br label %109

109:                                              ; preds = %108, %22
  %110 = load i64, i64* @FALSE, align 8
  store i64 %110, i64* %3, align 8
  br label %111

111:                                              ; preds = %109, %83, %20
  %112 = load i64, i64* %3, align 8
  ret i64 %112
}

declare dso_local i64 @DeviceIoControl(i32, i32, i32*, i32, %struct.TYPE_8__*, i32, i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
