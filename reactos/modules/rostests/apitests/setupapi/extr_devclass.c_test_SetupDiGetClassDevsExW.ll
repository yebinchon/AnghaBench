; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/setupapi/extr_devclass.c_test_SetupDiGetClassDevsExW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/setupapi/extr_devclass.c_test_SetupDiGetClassDevsExW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@__const.test_SetupDiGetClassDevsExW.not_existing_guid = private unnamed_addr constant %struct.TYPE_9__ { i32 -559038737, i32 57005, i32 48879, %struct.TYPE_7__ { i32 136, i32 153, i32 170, i32 187, i32 204, i32 221, i32 238, i32 255 } }, align 4
@DIGCF_PRESENT = common dso_local global i32 0, align 4
@DIGCF_DEVICEINTERFACE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Expected success\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Expected failure.\0A\00", align 1
@ERROR_NO_MORE_ITEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetupDiGetClassDevsExW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetupDiGetClassDevsExW() #0 {
  %1 = alloca %struct.TYPE_9__, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = bitcast %struct.TYPE_9__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_9__* @__const.test_SetupDiGetClassDevsExW.not_existing_guid to i8*), i64 44, i1 false)
  %6 = load i32, i32* @DIGCF_PRESENT, align 4
  %7 = load i32, i32* @DIGCF_DEVICEINTERFACE, align 4
  %8 = or i32 %6, %7
  %9 = call i64 @SetupDiGetClassDevsExW(%struct.TYPE_9__* %1, i32* null, i32* null, i32 %8, i32* null, i32* null, i32* null)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @ZeroMemory(%struct.TYPE_8__* %4, i32 4)
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i32 4, i32* %16, align 4
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @SetupDiEnumDeviceInfo(i64 %17, i32 0, %struct.TYPE_8__* %4)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %25 = call i32 @ok_lasterr(i32 %24)
  %26 = load i64, i64* %2, align 8
  %27 = call i32 @SetupDiDestroyDeviceInfoList(i64 %26)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @SetupDiGetClassDevsExW(%struct.TYPE_9__*, i32*, i32*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @ZeroMemory(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @SetupDiEnumDeviceInfo(i64, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @ok_lasterr(i32) #2

declare dso_local i32 @SetupDiDestroyDeviceInfoList(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
