; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_rcmd.c_FTPEndDataCmd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_rcmd.c_FTPEndDataCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i32 0, align 4
@kErrBadMagic = common dso_local global i32 0, align 4
@kNoErr = common dso_local global i32 0, align 4
@kDontPerror = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Malloc failed.\0A\00", align 1
@kErrMallocFailed = common dso_local global i32 0, align 4
@kErrDataTransferFailed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPEndDataCmd(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = icmp eq %struct.TYPE_12__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @kErrBadParameter, align 4
  store i32 %12, i32* %3, align 4
  br label %72

13:                                               ; preds = %2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @kLibraryMagic, align 4
  %18 = call i64 @strcmp(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @kErrBadMagic, align 4
  store i32 %21, i32* %3, align 4
  br label %72

22:                                               ; preds = %13
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = call i32 @CloseDataConnection(%struct.TYPE_12__* %23)
  %25 = load i32, i32* @kNoErr, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %22
  %29 = call %struct.TYPE_11__* (...) @InitResponse()
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %8, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = icmp eq %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = load i32, i32* @kDontPerror, align 4
  %35 = call i32 @Error(%struct.TYPE_12__* %33, i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @kErrMallocFailed, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %72

43:                                               ; preds = %28
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = call i32 @GetResponse(%struct.TYPE_12__* %44, %struct.TYPE_11__* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %72

51:                                               ; preds = %43
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %57 = call i32 @DoneWithResponse(%struct.TYPE_12__* %55, %struct.TYPE_11__* %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 2
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load i32, i32* @kErrDataTransferFailed, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %6, align 4
  br label %69

67:                                               ; preds = %51
  %68 = load i32, i32* @kNoErr, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %67, %60
  br label %70

70:                                               ; preds = %69, %22
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %49, %32, %20, %11
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @CloseDataConnection(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @InitResponse(...) #1

declare dso_local i32 @Error(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @GetResponse(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @DoneWithResponse(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
