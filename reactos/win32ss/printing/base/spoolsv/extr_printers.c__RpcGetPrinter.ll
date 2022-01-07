; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/base/spoolsv/extr_printers.c__RpcGetPrinter.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/base/spoolsv/extr_printers.c__RpcGetPrinter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"RpcImpersonateClient failed with error %lu!\0A\00", align 1
@pPrinterInfoMarshalling = common dso_local global %struct.TYPE_2__** null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_RpcGetPrinter(i32 %0, i64 %1, i32* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = call i64 @RpcImpersonateClient(i32* null)
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i64, i64* %12, align 8
  %20 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* %12, align 8
  store i64 %21, i64* %6, align 8
  br label %62

22:                                               ; preds = %5
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @AlignRpcPtr(i32* %23, i64* %10)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i64, i64* %10, align 8
  %29 = load i64*, i64** %11, align 8
  %30 = call i64 @GetPrinterW(i32 %25, i64 %26, i32 %27, i64 %28, i64* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %22
  %33 = load i64, i64* %8, align 8
  %34 = icmp sle i64 %33, 9
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pPrinterInfoMarshalling, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pPrinterInfoMarshalling, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %44, i64 %45
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i32 @MarshallDownStructure(i32 %37, i32 %43, i32 %49, i32 %50)
  br label %54

52:                                               ; preds = %22
  %53 = call i64 (...) @GetLastError()
  store i64 %53, i64* %12, align 8
  br label %54

54:                                               ; preds = %52, %32
  %55 = call i32 (...) @RpcRevertToSelf()
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i64, i64* %10, align 8
  %59 = load i64*, i64** %11, align 8
  %60 = call i32 @UndoAlignRpcPtr(i32* %56, i32 %57, i64 %58, i64* %59)
  %61 = load i64, i64* %12, align 8
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %54, %18
  %63 = load i64, i64* %6, align 8
  ret i64 %63
}

declare dso_local i64 @RpcImpersonateClient(i32*) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @AlignRpcPtr(i32*, i64*) #1

declare dso_local i64 @GetPrinterW(i32, i64, i32, i64, i64*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MarshallDownStructure(i32, i32, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @RpcRevertToSelf(...) #1

declare dso_local i32 @UndoAlignRpcPtr(i32*, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
