; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/base/spoolsv/extr_printprocessors.c__RpcEnumPrintProcessors.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/base/spoolsv/extr_printprocessors.c__RpcEnumPrintProcessors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"RpcImpersonateClient failed with error %lu!\0A\00", align 1
@PrintProcessorInfo1Marshalling = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_RpcEnumPrintProcessors(i32 %0, i32* %1, i64 %2, i32* %3, i64 %4, i64* %5, i64* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  %18 = call i64 @RpcImpersonateClient(i32* null)
  store i64 %18, i64* %16, align 8
  %19 = load i64, i64* %16, align 8
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %7
  %23 = load i64, i64* %16, align 8
  %24 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i64, i64* %16, align 8
  store i64 %25, i64* %8, align 8
  br label %56

26:                                               ; preds = %7
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @AlignRpcPtr(i32* %27, i64* %13)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i32, i32* %17, align 4
  %33 = load i64, i64* %13, align 8
  %34 = load i64*, i64** %14, align 8
  %35 = load i64*, i64** %15, align 8
  %36 = call i64 @EnumPrintProcessorsW(i32 %29, i32* %30, i64 %31, i32 %32, i64 %33, i64* %34, i64* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %26
  %39 = load i32, i32* %17, align 4
  %40 = load i64*, i64** %15, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PrintProcessorInfo1Marshalling, i32 0, i32 1), align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PrintProcessorInfo1Marshalling, i32 0, i32 0), align 4
  %44 = load i32, i32* @TRUE, align 4
  %45 = call i32 @MarshallDownStructuresArray(i32 %39, i64 %41, i32 %42, i32 %43, i32 %44)
  br label %48

46:                                               ; preds = %26
  %47 = call i64 (...) @GetLastError()
  store i64 %47, i64* %16, align 8
  br label %48

48:                                               ; preds = %46, %38
  %49 = call i32 (...) @RpcRevertToSelf()
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %17, align 4
  %52 = load i64, i64* %13, align 8
  %53 = load i64*, i64** %14, align 8
  %54 = call i32 @UndoAlignRpcPtr(i32* %50, i32 %51, i64 %52, i64* %53)
  %55 = load i64, i64* %16, align 8
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %48, %22
  %57 = load i64, i64* %8, align 8
  ret i64 %57
}

declare dso_local i64 @RpcImpersonateClient(i32*) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @AlignRpcPtr(i32*, i64*) #1

declare dso_local i64 @EnumPrintProcessorsW(i32, i32*, i64, i32, i64, i64*, i64*) #1

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
