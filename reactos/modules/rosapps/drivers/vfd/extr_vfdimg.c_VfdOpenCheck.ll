; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/drivers/vfd/extr_vfdimg.c_VfdOpenCheck.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/drivers/vfd/extr_vfdimg.c_VfdOpenCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i64, i64 }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@VFDWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"[VFD] image already opened.\0A\00", align 1
@STATUS_DEVICE_BUSY = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@VFD_MEDIA_NONE = common dso_local global i64 0, align 8
@VFD_MEDIA_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"[VFD] invalid MediaType - %u.\0A\00", align 1
@VFD_DISKTYPE_FILE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"[VFD] File name required for VFD_DISKTYPE_FILE.\0A\00", align 1
@NonPagedPool = common dso_local global i32 0, align 4
@VFD_POOL_TAG = common dso_local global i32 0, align 4
@SecurityImpersonation = common dso_local global i32 0, align 4
@SECURITY_STATIC_TRACKING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VfdOpenCheck(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13, %3
  %19 = load i32, i32* @VFDWARN, align 4
  %20 = call i32 @VFDTRACE(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @STATUS_DEVICE_BUSY, align 4
  store i32 %21, i32* %4, align 4
  br label %105

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 4
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add i64 4, %32
  %34 = icmp ult i64 %28, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26, %22
  %36 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %36, i32* %4, align 4
  br label %105

37:                                               ; preds = %26
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VFD_MEDIA_NONE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VFD_MEDIA_MAX, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43, %37
  %50 = load i32, i32* @VFDWARN, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @VFDTRACE(i32 %50, i8* %54)
  %56 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %56, i32* %4, align 4
  br label %105

57:                                               ; preds = %43
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VFD_DISKTYPE_FILE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @VFDWARN, align 4
  %70 = call i32 @VFDTRACE(i32 %69, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %71, i32* %4, align 4
  br label %105

72:                                               ; preds = %63, %57
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @SeDeleteClientSecurity(i32* %80)
  br label %89

82:                                               ; preds = %72
  %83 = load i32, i32* @NonPagedPool, align 4
  %84 = load i32, i32* @VFD_POOL_TAG, align 4
  %85 = call i64 @ExAllocatePoolWithTag(i32 %83, i32 4, i32 %84)
  %86 = inttoptr i64 %85 to i32*
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i32* %86, i32** %88, align 8
  br label %89

89:                                               ; preds = %82, %77
  %90 = call i32 @RtlZeroMemory(%struct.TYPE_8__* %8, i32 16)
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 16, i32* %91, align 4
  %92 = load i32, i32* @SecurityImpersonation, align 4
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @SECURITY_STATIC_TRACKING, align 4
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @FALSE, align 4
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %96, i32* %97, align 4
  %98 = call i32 (...) @PsGetCurrentThread()
  %99 = load i32, i32* @FALSE, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @SeCreateClientSecurity(i32 %98, %struct.TYPE_8__* %8, i32 %99, i32* %102)
  %104 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %89, %68, %49, %35, %18
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @VFDTRACE(i32, i8*) #1

declare dso_local i32 @SeDeleteClientSecurity(i32*) #1

declare dso_local i64 @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @SeCreateClientSecurity(i32, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @PsGetCurrentThread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
