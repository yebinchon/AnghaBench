; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_notification_query_async.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_notification_query_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_notification_query_async.queryW = internal constant [38 x i8] c"SELECT * FROM Win32_DeviceChangeEvent\00", align 16
@wqlW = common dso_local global i8* null, align 8
@WBEM_E_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@sink_refs = common dso_local global i64 0, align 8
@sink = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@WBEM_E_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"got %u refs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_notification_query_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_notification_query_async(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i8*, i8** @wqlW, align 8
  %8 = call i32 @SysAllocString(i8* %7)
  store i32 %8, i32* %3, align 4
  %9 = call i32 @SysAllocString(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @test_notification_query_async.queryW, i64 0, i64 0))
  store i32 %9, i32* %4, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @IWbemServices_ExecNotificationQueryAsync(i32* %10, i32 %11, i32 %12, i32 0, i32* null, i32* null)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @WBEM_E_INVALID_PARAMETER, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* @sink_refs, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @IWbemServices_ExecNotificationQueryAsync(i32* %21, i32 %22, i32 %23, i32 0, i32* null, i32* @sink)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %1
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @WBEM_E_NOT_FOUND, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @broken(i32 %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %28, %1
  %36 = phi i1 [ true, %1 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i64, i64* @sink_refs, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = load i64, i64* @sink_refs, align 8
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @broken(i32 %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %43, %35
  %51 = phi i1 [ true, %35 ], [ %49, %43 ]
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* @sink_refs, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i64 @IWbemServices_CancelAsyncCall(i32* %55, i32* @sink)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @S_OK, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %50
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @WBEM_E_NOT_FOUND, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @broken(i32 %64)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %60, %50
  %68 = phi i1 [ true, %50 ], [ %66, %60 ]
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @SysFreeString(i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @SysFreeString(i32 %74)
  ret void
}

declare dso_local i32 @SysAllocString(i8*) #1

declare dso_local i64 @IWbemServices_ExecNotificationQueryAsync(i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @IWbemServices_CancelAsyncCall(i32*, i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
