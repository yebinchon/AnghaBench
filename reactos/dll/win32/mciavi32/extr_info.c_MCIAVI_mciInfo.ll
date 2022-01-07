; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mciavi32/extr_info.c_MCIAVI_mciInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mciavi32/extr_info.c_MCIAVI_mciInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i8*, i32 }

@MCIAVI_mciInfo.wszAviPlayer = internal constant [18 x i8] c"Wine's AVI player\00", align 16
@MCIAVI_mciInfo.wszVersion = internal constant [4 x i8] c"1.1\00", align 1
@MCIERR_NULL_PARAMETER_BLOCK = common dso_local global i32 0, align 4
@MCIERR_INVALID_DEVICE_ID = common dso_local global i32 0, align 4
@MCI_TEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"buf=%p, len=%u\0A\00", align 1
@MCI_INFO_PRODUCT = common dso_local global i32 0, align 4
@MCI_INFO_VERSION = common dso_local global i32 0, align 4
@MCI_INFO_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Don't know this info command (%u)\0A\00", align 1
@MCIERR_UNRECOGNIZED_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MCIAVI_mciInfo(i32 %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i8* null, i8** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_5__* @MCIAVI_mciGetOpenDev(i32 %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %3
  %22 = load i32, i32* @MCIERR_NULL_PARAMETER_BLOCK, align 4
  store i32 %22, i32* %4, align 4
  br label %94

23:                                               ; preds = %16
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = icmp eq %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @MCIERR_INVALID_DEVICE_ID, align 4
  store i32 %27, i32* %4, align 4
  br label %94

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MCI_TEST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %94

34:                                               ; preds = %28
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %37, i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = call i32 @EnterCriticalSection(i32* %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @MCI_INFO_PRODUCT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @MCIAVI_mciInfo.wszAviPlayer, i64 0, i64 0), i8** %8, align 8
  br label %71

50:                                               ; preds = %34
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @MCI_INFO_VERSION, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MCIAVI_mciInfo.wszVersion, i64 0, i64 0), i8** %8, align 8
  br label %70

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @MCI_INFO_FILE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %8, align 8
  br label %69

65:                                               ; preds = %56
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @MCIERR_UNRECOGNIZED_COMMAND, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %55
  br label %71

71:                                               ; preds = %70, %49
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %71
  store i8 0, i8* %11, align 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i8*, i8** %8, align 8
  br label %83

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i8* [ %81, %80 ], [ %11, %82 ]
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @lstrcpynW(i32* %77, i8* %84, i32 %87)
  br label %89

89:                                               ; preds = %83, %71
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = call i32 @LeaveCriticalSection(i32* %91)
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %89, %33, %26, %21
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.TYPE_5__* @MCIAVI_mciGetOpenDev(i32) #1

declare dso_local i32 @TRACE(i8*, i32*, i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @lstrcpynW(i32*, i8*, i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
