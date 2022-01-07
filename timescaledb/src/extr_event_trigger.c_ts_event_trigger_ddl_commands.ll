; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_event_trigger.c_ts_event_trigger_ddl_commands.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_event_trigger.c_ts_event_trigger_ddl_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@NIL = common dso_local global i32* null, align 8
@ddl_commands_fmgrinfo = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@T_ReturnSetInfo = common dso_local global i32 0, align 4
@SFRM_Materialize = common dso_local global i32 0, align 4
@DDL_INFO_NATTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_event_trigger_ddl_commands() #0 {
  %1 = alloca %struct.TYPE_8__, align 8
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = call i32* (...) @CreateExecutorState()
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** @NIL, align 8
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* @InvalidOid, align 4
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @InitFunctionCallInfoData(i64 %15, i32* @ddl_commands_fmgrinfo, i32 1, i32 %13, i32* null, i32* null)
  %17 = call i32 @MemSet(%struct.TYPE_8__* %1, i32 0, i32 32)
  %18 = load i32, i32* @T_ReturnSetInfo, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @SFRM_Materialize, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @CreateExprContext(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = ptrtoint %struct.TYPE_8__* %1 to i64
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = call i32 @FunctionCallInvoke(%struct.TYPE_9__* %2)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = call i32* @MakeSingleTupleTableSlot(%struct.TYPE_10__* %29)
  store i32* %30, i32** %3, align 8
  br label %31

31:                                               ; preds = %68, %0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @tuplestore_gettupleslot(i32 %33, i32 1, i32 0, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %31
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @ExecFetchSlotTuple(i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @DDL_INFO_NATTS, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %8, align 8
  %43 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %9, align 8
  %44 = load i32, i32* @DDL_INFO_NATTS, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %10, align 8
  %47 = load i32, i32* %6, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = call i32 @heap_deform_tuple(i32 %47, %struct.TYPE_10__* %49, i32* %43, i32* %46)
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 8
  br i1 %55, label %56, label %68

56:                                               ; preds = %37
  %57 = getelementptr inbounds i32, i32* %46, i64 8
  %58 = load i32, i32* %57, align 16
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds i32, i32* %43, i64 8
  %62 = load i32, i32* %61, align 16
  %63 = call i64 @DatumGetPointer(i32 %62)
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32* @lappend(i32* %65, i32* %66)
  store i32* %67, i32** %5, align 8
  br label %68

68:                                               ; preds = %60, %56, %37
  %69 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %69)
  br label %31

70:                                               ; preds = %31
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @FreeExprContext(i32 %72, i32 0)
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @FreeExecutorState(i32* %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @ExecDropSingleTupleTableSlot(i32* %76)
  %78 = load i32*, i32** %5, align 8
  ret i32* %78
}

declare dso_local i32* @CreateExecutorState(...) #1

declare dso_local i32 @InitFunctionCallInfoData(i64, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @MemSet(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @CreateExprContext(i32*) #1

declare dso_local i32 @FunctionCallInvoke(%struct.TYPE_9__*) #1

declare dso_local i32* @MakeSingleTupleTableSlot(%struct.TYPE_10__*) #1

declare dso_local i64 @tuplestore_gettupleslot(i32, i32, i32, i32*) #1

declare dso_local i32 @ExecFetchSlotTuple(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @heap_deform_tuple(i32, %struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32* @lappend(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreeExprContext(i32, i32) #1

declare dso_local i32 @FreeExecutorState(i32*) #1

declare dso_local i32 @ExecDropSingleTupleTableSlot(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
