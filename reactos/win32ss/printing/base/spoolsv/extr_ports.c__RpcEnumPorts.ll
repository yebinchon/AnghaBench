; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/base/spoolsv/extr_ports.c__RpcEnumPorts.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/base/spoolsv/extr_ports.c__RpcEnumPorts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"RpcImpersonateClient failed with error %lu!\0A\00", align 1
@pPortInfoMarshalling = common dso_local global %struct.TYPE_2__** null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_RpcEnumPorts(i32 %0, i64 %1, i32* %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = call i64 @RpcImpersonateClient(i32* null)
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* %14, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i64, i64* %14, align 8
  %22 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %14, align 8
  store i64 %23, i64* %7, align 8
  br label %72

24:                                               ; preds = %6
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @AlignRpcPtr(i32* %25, i64* %11)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* %15, align 4
  %30 = load i64, i64* %11, align 8
  %31 = load i64*, i64** %12, align 8
  %32 = load i64*, i64** %13, align 8
  %33 = call i64 @EnumPortsW(i32 %27, i64 %28, i32 %29, i64 %30, i64* %31, i64* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %24
  %36 = load i64, i64* %9, align 8
  %37 = icmp sge i64 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i64, i64* %9, align 8
  %40 = icmp sle i64 %39, 2
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i1 [ false, %35 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load i32, i32* %15, align 4
  %46 = load i64*, i64** %13, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pPortInfoMarshalling, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 %49
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pPortInfoMarshalling, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %55
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TRUE, align 4
  %61 = call i32 @MarshallDownStructuresArray(i32 %45, i64 %47, i32 %53, i32 %59, i32 %60)
  br label %64

62:                                               ; preds = %24
  %63 = call i64 (...) @GetLastError()
  store i64 %63, i64* %14, align 8
  br label %64

64:                                               ; preds = %62, %41
  %65 = call i32 (...) @RpcRevertToSelf()
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i64, i64* %11, align 8
  %69 = load i64*, i64** %12, align 8
  %70 = call i32 @UndoAlignRpcPtr(i32* %66, i32 %67, i64 %68, i64* %69)
  %71 = load i64, i64* %14, align 8
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %64, %20
  %73 = load i64, i64* %7, align 8
  ret i64 %73
}

declare dso_local i64 @RpcImpersonateClient(i32*) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @AlignRpcPtr(i32*, i64*) #1

declare dso_local i64 @EnumPortsW(i32, i64, i32, i64, i64*, i64*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MarshallDownStructuresArray(i32, i64, i32, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @RpcRevertToSelf(...) #1

declare dso_local i32 @UndoAlignRpcPtr(i32*, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
