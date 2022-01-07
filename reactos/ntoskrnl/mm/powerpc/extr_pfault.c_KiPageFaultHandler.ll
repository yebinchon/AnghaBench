; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/mm/powerpc/extr_pfault.c_KiPageFaultHandler.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/mm/powerpc/extr_pfault.c_KiPageFaultHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32*, i64, i32*, i32*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@UserMode = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Page Fault at %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@APC_LEVEL = common dso_local global i32 0, align 4
@STATUS_ACCESS_VIOLATION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @KiPageFaultHandler(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %13 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 268435456
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  store i32* null, i32** %11, align 8
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 16384
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @UserMode, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @KernelMode, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %6, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32, i32* @FALSE, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @MmAccessFault(i32 %51, i32* %54, i32 %55, i32* %56)
  store i32 %57, i32* %5, align 4
  br label %63

58:                                               ; preds = %42
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @MmNotPresentFault(i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %58, %50
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @NT_SUCCESS(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = call i32 (...) @MmuCallbackRet()
  br label %69

69:                                               ; preds = %67, %63
  %70 = call %struct.TYPE_11__* (...) @KeGetCurrentThread()
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load i32, i32* @APC_LEVEL, align 4
  %77 = call i32 @KeRaiseIrql(i32 %76, i32* %12)
  %78 = load i32, i32* @UserMode, align 4
  %79 = call i32 @KiDeliverApc(i32 %78, i32* null, i32* null)
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @KeLowerIrql(i32 %80)
  br label %82

82:                                               ; preds = %75, %69
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = call i32 @MmpPpcTrapFrameToTrapFrame(%struct.TYPE_9__* %83, i32* %8)
  %85 = load i32, i32* @STATUS_ACCESS_VIOLATION, align 4
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 5
  store i32 %85, i32* %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 4
  store i32* null, i32** %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i32*
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  store i32* %93, i32** %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 2, i32* %95, align 8
  %96 = load i32, i32* %9, align 4
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* %10, align 4
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %100, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @TRUE, align 4
  %107 = call i32 @KiDispatchException(%struct.TYPE_10__* %7, i32 0, i32* %8, i32 %105, i32 %106)
  %108 = call i32 (...) @MmuCallbackRet()
  ret void
}

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i32 @MmAccessFault(i32, i32*, i32, i32*) #1

declare dso_local i32 @MmNotPresentFault(i32, i32, i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @MmuCallbackRet(...) #1

declare dso_local %struct.TYPE_11__* @KeGetCurrentThread(...) #1

declare dso_local i32 @KeRaiseIrql(i32, i32*) #1

declare dso_local i32 @KiDeliverApc(i32, i32*, i32*) #1

declare dso_local i32 @KeLowerIrql(i32) #1

declare dso_local i32 @MmpPpcTrapFrameToTrapFrame(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @KiDispatchException(%struct.TYPE_10__*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
