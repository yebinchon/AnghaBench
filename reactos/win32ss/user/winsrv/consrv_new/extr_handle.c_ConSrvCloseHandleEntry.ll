; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv_new/extr_handle.c_ConSrvCloseHandleEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv_new/extr_handle.c_ConSrvCloseHandleEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }

@INPUT_BUFFER = common dso_local global i64 0, align 8
@WaitAll = common dso_local global i32 0, align 4
@TEXTMODE_BUFFER = common dso_local global i64 0, align 8
@GRAPHICS_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Closing the input buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid object type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @ConSrvCloseHandleEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConSrvCloseHandleEntry(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %4, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = icmp ne %struct.TYPE_12__* %10, null
  br i1 %11, label %12, label %84

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INPUT_BUFFER, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = bitcast %struct.TYPE_12__* %19 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %5, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* @WaitAll, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = ptrtoint %struct.TYPE_13__* %24 to i32
  %26 = call i32 @CsrNotifyWait(i32* %22, i32 %23, i32* null, i32 %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = call i32 @IsListEmpty(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %18
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = call i32 @CsrDereferenceWait(i32* %33)
  br label %35

35:                                               ; preds = %31, %18
  br label %36

36:                                               ; preds = %35, %12
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = call i64 @AdjustHandleCounts(%struct.TYPE_13__* %37, i32 -1)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %83

40:                                               ; preds = %36
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TEXTMODE_BUFFER, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @GRAPHICS_BUFFER, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %46, %40
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = bitcast %struct.TYPE_12__* %53 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %6, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %58, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = call i32 @ConioDeleteScreenBuffer(%struct.TYPE_11__* %65)
  br label %67

67:                                               ; preds = %64, %52
  br label %82

68:                                               ; preds = %46
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @INPUT_BUFFER, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %81

76:                                               ; preds = %68
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @DPRINT1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  br label %81

81:                                               ; preds = %76, %74
  br label %82

82:                                               ; preds = %81, %67
  br label %83

83:                                               ; preds = %82, %36
  br label %84

84:                                               ; preds = %83, %1
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %86 = call i32 @RtlZeroMemory(%struct.TYPE_13__* %85, i32 8)
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @CsrNotifyWait(i32*, i32, i32*, i32) #1

declare dso_local i32 @IsListEmpty(i32*) #1

declare dso_local i32 @CsrDereferenceWait(i32*) #1

declare dso_local i64 @AdjustHandleCounts(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ConioDeleteScreenBuffer(%struct.TYPE_11__*) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @DPRINT1(i8*, i64) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
