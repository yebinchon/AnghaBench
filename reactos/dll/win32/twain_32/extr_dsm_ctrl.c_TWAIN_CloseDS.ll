; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/twain_32/extr_dsm_ctrl.c_TWAIN_CloseDS.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/twain_32/extr_dsm_ctrl.c_TWAIN_CloseDS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 (%struct.TYPE_9__*, i32, i32, i32, i32)*, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@TWRC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"DG_CONTROL/DAT_IDENTITY/MSG_CLOSEDS\0A\00", align 1
@activeSources = common dso_local global %struct.TYPE_10__* null, align 8
@TWCC_NODS = common dso_local global i32 0, align 4
@DSM_twCC = common dso_local global i32 0, align 4
@TWRC_FAILURE = common dso_local global i64 0, align 8
@DG_CONTROL = common dso_local global i32 0, align 4
@DAT_IDENTITY = common dso_local global i32 0, align 4
@MSG_CLOSEDS = common dso_local global i32 0, align 4
@TWCC_SUCCESS = common dso_local global i32 0, align 4
@TWCC_SEQERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TWAIN_CloseDS(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* @TWRC_SUCCESS, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @activeSources, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %8, align 8
  br label %16

16:                                               ; preds = %31, %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %35

29:                                               ; preds = %19
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %9, align 8
  br label %31

31:                                               ; preds = %29
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %8, align 8
  br label %16

35:                                               ; preds = %28, %16
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %37 = icmp ne %struct.TYPE_10__* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @TWCC_NODS, align 4
  store i32 %39, i32* @DSM_twCC, align 4
  %40 = load i64, i64* @TWRC_FAILURE, align 8
  store i64 %40, i64* %3, align 8
  br label %76

41:                                               ; preds = %35
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64 (%struct.TYPE_9__*, i32, i32, i32, i32)*, i64 (%struct.TYPE_9__*, i32, i32, i32, i32)** %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = load i32, i32* @DG_CONTROL, align 4
  %47 = load i32, i32* @DAT_IDENTITY, align 4
  %48 = load i32, i32* @MSG_CLOSEDS, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i64 %44(%struct.TYPE_9__* %45, i32 %46, i32 %47, i32 %48, i32 %49)
  store i64 %50, i64* %6, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = icmp ne %struct.TYPE_10__* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %41
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %58, align 8
  br label %63

59:                                               ; preds = %41
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** @activeSources, align 8
  br label %63

63:                                               ; preds = %59, %53
  %64 = call i32 (...) @GetProcessHeap()
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = call i32 @HeapFree(i32 %64, i32 0, %struct.TYPE_10__* %65)
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @TWRC_SUCCESS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @TWCC_SUCCESS, align 4
  store i32 %71, i32* @DSM_twCC, align 4
  br label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @TWCC_SEQERROR, align 4
  store i32 %73, i32* @DSM_twCC, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = load i64, i64* %6, align 8
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %74, %38
  %77 = load i64, i64* %3, align 8
  ret i64 %77
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
