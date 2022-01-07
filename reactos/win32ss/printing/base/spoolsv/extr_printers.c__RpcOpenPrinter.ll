; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/base/spoolsv/extr_printers.c__RpcOpenPrinter.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/base/spoolsv/extr_printers.c__RpcOpenPrinter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32*, i64 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"RpcImpersonateClient failed with error %lu!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_RpcOpenPrinter(i32 %0, i32* %1, i32* %2, %struct.TYPE_5__* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %10, align 8
  store i64 %4, i64* %11, align 8
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
  br label %40

22:                                               ; preds = %5
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i64 %23, i64* %24, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i32* %25, i32** %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @OpenPrinterW(i32 %31, i32* %32, %struct.TYPE_6__* %13)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %22
  %36 = call i64 (...) @GetLastError()
  store i64 %36, i64* %12, align 8
  br label %37

37:                                               ; preds = %35, %22
  %38 = call i32 (...) @RpcRevertToSelf()
  %39 = load i64, i64* %12, align 8
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %37, %18
  %41 = load i64, i64* %6, align 8
  ret i64 %41
}

declare dso_local i64 @RpcImpersonateClient(i32*) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @OpenPrinterW(i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @RpcRevertToSelf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
