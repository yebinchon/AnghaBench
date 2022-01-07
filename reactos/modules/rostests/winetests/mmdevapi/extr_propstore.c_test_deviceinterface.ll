; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_propstore.c_test_deviceinterface.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_propstore.c_test_deviceinterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@test_deviceinterface.deviceinterface_key = internal constant %struct.TYPE_13__ { i32 590439624, %struct.TYPE_10__ { i32 1, i32 0, i32 0, %struct.TYPE_11__ zeroinitializer } }, align 4
@VT_EMPTY = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"GetValue failed: %08x\0A\00", align 1
@VT_LPWSTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Got wrong variant type: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"device interface: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_deviceinterface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_deviceinterface(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i64, i64* @VT_EMPTY, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  store i64 %5, i64* %6, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @IPropertyStore_GetValue(i32* %7, %struct.TYPE_13__* @test_deviceinterface.deviceinterface_key, %struct.TYPE_12__* %4)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VT_LPWSTR, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @wine_dbgstr_w(i32 %25)
  %27 = call i32 @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = call i32 @PropVariantClear(%struct.TYPE_12__* %4)
  ret void
}

declare dso_local i64 @IPropertyStore_GetValue(i32*, %struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i32) #1

declare dso_local i32 @PropVariantClear(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
