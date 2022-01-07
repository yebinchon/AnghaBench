; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_rcmd.c_FTPAbortDataTransfer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_rcmd.c_FTPAbortDataTransfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32 }

@kClosedFileDescriptor = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Starting abort sequence.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ABOR\00", align 1
@kNoErr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not send abort command.\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"No response received to abort request.\0A\00", align 1
@kDontPerror = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Malloc failed.\0A\00", align 1
@kErrMallocFailed = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Invalid response to abort request.\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"End abort.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FTPAbortDataTransfer(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @kClosedFileDescriptor, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %101

10:                                               ; preds = %1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = call i32 @PrintF(%struct.TYPE_12__* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = call i32 @SendTelnetInterrupt(%struct.TYPE_12__* %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = call i32 @FTPCmdNoResponse(%struct.TYPE_12__* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @kNoErr, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %10
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @SetLinger(%struct.TYPE_12__* %21, i64 %24, i32 0)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = call i32 @CloseDataConnection(%struct.TYPE_12__* %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = call i32 @PrintF(%struct.TYPE_12__* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %101

30:                                               ; preds = %10
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @WaitResponse(%struct.TYPE_12__* %36, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %35
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @SetLinger(%struct.TYPE_12__* %45, i64 %48, i32 0)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %51 = call i32 @CloseDataConnection(%struct.TYPE_12__* %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = call i32 @PrintF(%struct.TYPE_12__* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %101

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %30
  %56 = call i32* (...) @InitResponse()
  store i32* %56, i32** %3, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %61 = load i32, i32* @kDontPerror, align 4
  %62 = call i32 @Error(%struct.TYPE_12__* %60, i32 %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @kErrMallocFailed, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %4, align 4
  br label %101

69:                                               ; preds = %55
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @GetResponse(%struct.TYPE_12__* %70, i32* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @SetLinger(%struct.TYPE_12__* %76, i64 %79, i32 0)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %82 = call i32 @CloseDataConnection(%struct.TYPE_12__* %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %84 = call i32 @PrintF(%struct.TYPE_12__* %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @DoneWithResponse(%struct.TYPE_12__* %85, i32* %86)
  br label %101

88:                                               ; preds = %69
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @DoneWithResponse(%struct.TYPE_12__* %89, i32* %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @SetLinger(%struct.TYPE_12__* %92, i64 %95, i32 0)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %98 = call i32 @CloseDataConnection(%struct.TYPE_12__* %97)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %100 = call i32 @PrintF(%struct.TYPE_12__* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %101

101:                                              ; preds = %20, %44, %59, %75, %88, %1
  ret void
}

declare dso_local i32 @PrintF(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @SendTelnetInterrupt(%struct.TYPE_12__*) #1

declare dso_local i32 @FTPCmdNoResponse(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @SetLinger(%struct.TYPE_12__*, i64, i32) #1

declare dso_local i32 @CloseDataConnection(%struct.TYPE_12__*) #1

declare dso_local i32 @WaitResponse(%struct.TYPE_12__*, i32) #1

declare dso_local i32* @InitResponse(...) #1

declare dso_local i32 @Error(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @GetResponse(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @DoneWithResponse(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
