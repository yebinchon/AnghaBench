; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/wlanapi/extr_wlanapi.c_WlanCloseHandle_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/wlanapi/extr_wlanapi.c_WlanCloseHandle_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"expected failure\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @WlanCloseHandle_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WlanCloseHandle_test() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  store i32* inttoptr (i64 -559038737 to i32*), i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i64 @WlanCloseHandle(i32* %3, i32* inttoptr (i64 1 to i32*))
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = call i64 @WlanCloseHandle(i32* null, i32* null)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @WlanCloseHandle(i32* %16, i32* null)
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i64 @WlanCloseHandle(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
