; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetNetworkParams.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetNetworkParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"GetNetworkParams is not supported\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"GetNetworkParams returned %d, expected ERROR_INVALID_PARAMETER\0A\00", align 1
@ERROR_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"GetNetworkParams returned %d, expected ERROR_BUFFER_OVERFLOW\0A\00", align 1
@NO_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [63 x i8] c"GetNetworkParams(buf, &dwSize) returned %d, expected NO_ERROR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testGetNetworkParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testGetNetworkParams() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  br i1 true, label %4, label %44

4:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  %5 = call i64 @pGetNetworkParams(i32* null, i32* null)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @ERROR_NOT_SUPPORTED, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = call i32 @skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %44

11:                                               ; preds = %4
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  %18 = call i64 @pGetNetworkParams(i32* null, i32* %2)
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @ERROR_BUFFER_OVERFLOW, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %1, align 8
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %23)
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @ERROR_BUFFER_OVERFLOW, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %11
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load i32, i32* %2, align 4
  %31 = call i32* @HeapAlloc(i32 %29, i32 0, i32 %30)
  store i32* %31, i32** %3, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @pGetNetworkParams(i32* %32, i32* %2)
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* %1, align 8
  %35 = load i64, i64* @NO_ERROR, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %1, align 8
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  %40 = call i32 (...) @GetProcessHeap()
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @HeapFree(i32 %40, i32 0, i32* %41)
  br label %43

43:                                               ; preds = %28, %11
  br label %44

44:                                               ; preds = %9, %43, %0
  ret void
}

declare dso_local i64 @pGetNetworkParams(i32*, i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
