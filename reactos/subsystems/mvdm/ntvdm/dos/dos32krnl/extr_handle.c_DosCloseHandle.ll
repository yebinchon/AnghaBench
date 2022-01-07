; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_handle.c_DosCloseHandle.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_handle.c_DosCloseHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*)* }

@.str = private unnamed_addr constant [34 x i8] c"DosCloseHandle: DosHandle 0x%04X\0A\00", align 1
@Sda = common dso_local global %struct.TYPE_12__* null, align 8
@SYSTEM_PSP = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@FILE_INFO_DEVICE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DosCloseHandle(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @DPRINT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Sda, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SYSTEM_PSP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %87

17:                                               ; preds = %1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Sda, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.TYPE_9__* @SEGMENT_TO_PSP(i64 %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %4, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @FAR_POINTER(i32 %24)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 255
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %2, align 4
  br label %87

34:                                               ; preds = %17
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_10__* @DosGetFileDescriptor(i32 %38)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %6, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = icmp eq %struct.TYPE_10__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %2, align 4
  br label %87

44:                                               ; preds = %34
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %82, label %53

53:                                               ; preds = %44
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FILE_INFO_DEVICE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %53
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.TYPE_11__* @DosGetDriverNode(i32 %63)
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %7, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %66, align 8
  %68 = icmp ne i32 (%struct.TYPE_11__*)* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = call i32 %72(%struct.TYPE_11__* %73)
  br label %75

75:                                               ; preds = %69, %60
  br label %81

76:                                               ; preds = %53
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @CloseHandle(i32 %79)
  br label %81

81:                                               ; preds = %76, %75
  br label %82

82:                                               ; preds = %81, %44
  %83 = load i32*, i32** %5, align 8
  %84 = load i64, i64* %3, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 255, i32* %85, align 4
  %86 = load i32, i32* @TRUE, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %82, %42, %32, %15
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @DPRINT(i8*, i64) #1

declare dso_local %struct.TYPE_9__* @SEGMENT_TO_PSP(i64) #1

declare dso_local i64 @FAR_POINTER(i32) #1

declare dso_local %struct.TYPE_10__* @DosGetFileDescriptor(i32) #1

declare dso_local %struct.TYPE_11__* @DosGetDriverNode(i32) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
