; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/propsys/extr_propsys.c_test_InitPropVariantFromCLSID.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/propsys/extr_propsys.c_test_InitPropVariantFromCLSID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@VT_I4 = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Unexpected hr %#x.\0A\00", align 1
@VT_CLSID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Unexpected type %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Unexpected puuid value.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_InitPropVariantFromCLSID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_InitPropVariantFromCLSID() #0 {
  %1 = alloca %struct.TYPE_10__, align 8
  %2 = alloca %struct.TYPE_10__, align 8
  %3 = alloca i64, align 8
  %4 = call i32 @memset(%struct.TYPE_10__* %1, i32 0, i32 16)
  %5 = load i64, i64* @VT_I4, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i64 %5, i64* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 15, i32* %8, align 8
  %9 = call i32 @memset(%struct.TYPE_10__* %2, i32 204, i32 16)
  %10 = call i64 @InitPropVariantFromCLSID(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %3, align 8
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VT_CLSID, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IsEqualGUID(i32 %27, %struct.TYPE_10__* %2)
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 @PropVariantClear(%struct.TYPE_10__* %1)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @InitPropVariantFromCLSID(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IsEqualGUID(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @PropVariantClear(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
