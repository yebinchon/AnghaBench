; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_open.c_FTPCloseHost.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_open.c_FTPCloseHost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i32 0, align 4
@kErrBadMagic = common dso_local global i32 0, align 4
@kClosedFileDescriptor = common dso_local global i64 0, align 8
@kNoErr = common dso_local global i32 0, align 4
@kErrMallocFailed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPCloseHost(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %7 = icmp eq %struct.TYPE_13__* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @kErrBadParameter, align 4
  store i32 %9, i32* %2, align 4
  br label %63

10:                                               ; preds = %1
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @kLibraryMagic, align 4
  %15 = call i64 @strcmp(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @kErrBadMagic, align 4
  store i32 %18, i32* %2, align 4
  br label %63

19:                                               ; preds = %10
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @kClosedFileDescriptor, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = call i32 @FTPAbortDataTransfer(%struct.TYPE_13__* %26)
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i32, i32* @kNoErr, align 4
  store i32 %29, i32* %5, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %28
  %35 = call %struct.TYPE_12__* (...) @InitResponse()
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %4, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = icmp eq %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32, i32* @kErrMallocFailed, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %5, align 4
  br label %56

45:                                               ; preds = %34
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  store i32 1, i32* %49, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = call i32 @RCmd(%struct.TYPE_13__* %50, %struct.TYPE_12__* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = call i32 @DoneWithResponse(%struct.TYPE_13__* %53, %struct.TYPE_12__* %54)
  br label %56

56:                                               ; preds = %45, %38
  br label %57

57:                                               ; preds = %56, %28
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = call i32 @CloseControlConnection(%struct.TYPE_13__* %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %61 = call i32 @FTPDeallocateHost(%struct.TYPE_13__* %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %57, %17, %8
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @FTPAbortDataTransfer(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @InitResponse(...) #1

declare dso_local i32 @RCmd(%struct.TYPE_13__*, %struct.TYPE_12__*, i8*) #1

declare dso_local i32 @DoneWithResponse(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @CloseControlConnection(%struct.TYPE_13__*) #1

declare dso_local i32 @FTPDeallocateHost(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
