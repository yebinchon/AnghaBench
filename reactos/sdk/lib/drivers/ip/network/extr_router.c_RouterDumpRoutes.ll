; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_router.c_RouterDumpRoutes.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_router.c_RouterDumpRoutes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@DEBUG_ROUTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Dumping Routes\0A\00", align 1
@FIBListHead = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@FIB_ENTRY = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Examining FIBE %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"... NetworkAddress %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"... NCE->Address . %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Dumping Routes ... Done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RouterDumpRoutes() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = load i32, i32* @DEBUG_ROUTER, align 4
  %6 = call i32 @TI_DbgPrint(i32 %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @FIBListHead, i32 0, i32 0), align 8
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %1, align 8
  br label %8

8:                                                ; preds = %11, %0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, @FIBListHead
  br i1 %10, label %11, label %41

11:                                               ; preds = %8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %2, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %16 = load i32, i32* @FIB_ENTRY, align 4
  %17 = load i32, i32* @ListEntry, align 4
  %18 = call %struct.TYPE_9__* @CONTAINING_RECORD(%struct.TYPE_8__* %15, i32 %16, i32 %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %3, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %4, align 8
  %22 = load i32, i32* @DEBUG_ROUTER, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = bitcast %struct.TYPE_9__* %23 to i8*
  %25 = call i32 @TI_DbgPrint(i32 %22, i8* %24)
  %26 = load i32, i32* @DEBUG_ROUTER, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = call i32 @A2S(i32* %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @TI_DbgPrint(i32 %26, i8* %31)
  %33 = load i32, i32* @DEBUG_ROUTER, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = call i32 @A2S(i32* %35)
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @TI_DbgPrint(i32 %33, i8* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %1, align 8
  br label %8

41:                                               ; preds = %8
  %42 = load i32, i32* @DEBUG_ROUTER, align 4
  %43 = call i32 @TI_DbgPrint(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local %struct.TYPE_9__* @CONTAINING_RECORD(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @A2S(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
