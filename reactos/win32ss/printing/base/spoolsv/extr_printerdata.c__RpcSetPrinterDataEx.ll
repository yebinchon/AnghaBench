; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/base/spoolsv/extr_printerdata.c__RpcSetPrinterDataEx.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/base/spoolsv/extr_printerdata.c__RpcSetPrinterDataEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"RpcImpersonateClient failed with error %lu!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_RpcSetPrinterDataEx(i32 %0, i32* %1, i32* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = call i64 @RpcImpersonateClient(i32* null)
  store i64 %15, i64* %14, align 8
  %16 = load i64, i64* %14, align 8
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = load i64, i64* %14, align 8
  %21 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %14, align 8
  store i64 %22, i64* %7, align 8
  br label %33

23:                                               ; preds = %6
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i64 @SetPrinterDataExW(i32 %24, i32* %25, i32* %26, i64 %27, i32* %28, i64 %29)
  store i64 %30, i64* %14, align 8
  %31 = call i32 (...) @RpcRevertToSelf()
  %32 = load i64, i64* %14, align 8
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %23, %19
  %34 = load i64, i64* %7, align 8
  ret i64 %34
}

declare dso_local i64 @RpcImpersonateClient(i32*) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i64 @SetPrinterDataExW(i32, i32*, i32*, i64, i32*, i64) #1

declare dso_local i32 @RpcRevertToSelf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
