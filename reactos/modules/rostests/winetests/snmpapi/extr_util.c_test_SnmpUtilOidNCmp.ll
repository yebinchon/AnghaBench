; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/snmpapi/extr_util.c_test_SnmpUtilOidNCmp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/snmpapi/extr_util.c_test_SnmpUtilOidNCmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32 }

@test_SnmpUtilOidNCmp.ids1 = internal global [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16
@test_SnmpUtilOidNCmp.ids2 = internal global [4 x i32] [i32 5, i32 6, i32 7, i32 8], align 16
@test_SnmpUtilOidNCmp.oid1 = internal global %struct.TYPE_4__ { i32 4, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @test_SnmpUtilOidNCmp.ids1, i32 0, i32 0), i32 0, i32 0 }, align 8
@test_SnmpUtilOidNCmp.oid2 = internal global %struct.TYPE_4__ { i32 4, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @test_SnmpUtilOidNCmp.ids2, i32 0, i32 0), i32 0, i32 0 }, align 8
@.str = private unnamed_addr constant [24 x i8] c"SnmpUtilOidNCmp failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"SnmpUtilOidNCmp failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SnmpUtilOidNCmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SnmpUtilOidNCmp() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 @SnmpUtilOidNCmp(%struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid1, %struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid1, i32 0)
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = icmp ne i64 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 (i32, i8*, ...) @ok(i32 %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = call i64 @SnmpUtilOidNCmp(%struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid1, %struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid1, i32 4)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = call i64 @SnmpUtilOidNCmp(%struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid1, %struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid2, i32 4)
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = icmp slt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %1, align 8
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = call i64 @SnmpUtilOidNCmp(%struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid2, %struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid1, i32 4)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = icmp sgt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %1, align 8
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid1, i32 0, i32 2), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid1, i32 0, i32 3), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid2, i32 0, i32 3), align 4
  %28 = call i32 @memcpy(i32 %26, i32 %27, i32 16)
  %29 = call i64 @SnmpUtilOidNCmp(%struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid1, %struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid1, i32 4)
  store i64 %29, i64* %1, align 8
  %30 = load i64, i64* %1, align 8
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %1, align 8
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = call i64 @SnmpUtilOidNCmp(%struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid2, %struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid1, i32 4)
  store i64 %36, i64* %1, align 8
  %37 = load i64, i64* %1, align 8
  %38 = icmp sgt i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %1, align 8
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = call i64 @SnmpUtilOidNCmp(%struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid1, %struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid2, i32 4)
  store i64 %42, i64* %1, align 8
  %43 = load i64, i64* %1, align 8
  %44 = icmp slt i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %1, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = call i64 @SnmpUtilOidNCmp(%struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid1, %struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid2, i32 2)
  store i64 %48, i64* %1, align 8
  %49 = load i64, i64* %1, align 8
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %1, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  %55 = call i64 @SnmpUtilOidNCmp(%struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid2, %struct.TYPE_4__* @test_SnmpUtilOidNCmp.oid1, i32 2)
  store i64 %55, i64* %1, align 8
  %56 = load i64, i64* %1, align 8
  %57 = icmp ne i64 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %1, align 8
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  ret void
}

declare dso_local i64 @SnmpUtilOidNCmp(%struct.TYPE_4__*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
