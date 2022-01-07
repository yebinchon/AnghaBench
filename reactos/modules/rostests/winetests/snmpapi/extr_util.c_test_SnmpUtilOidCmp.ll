; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/snmpapi/extr_util.c_test_SnmpUtilOidCmp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/snmpapi/extr_util.c_test_SnmpUtilOidCmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@test_SnmpUtilOidCmp.ids1 = internal global [3 x i32] [i32 1, i32 2, i32 3], align 4
@test_SnmpUtilOidCmp.ids2 = internal global [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16
@test_SnmpUtilOidCmp.oid1 = internal global %struct.TYPE_4__ { i32 3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @test_SnmpUtilOidCmp.ids1, i32 0, i32 0) }, align 8
@test_SnmpUtilOidCmp.oid2 = internal global %struct.TYPE_4__ { i32 4, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @test_SnmpUtilOidCmp.ids2, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [23 x i8] c"SnmpUtilOidCmp failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SnmpUtilOidCmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SnmpUtilOidCmp() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 @SnmpUtilOidCmp(%struct.TYPE_4__* @test_SnmpUtilOidCmp.oid2, %struct.TYPE_4__* @test_SnmpUtilOidCmp.oid1)
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = icmp sgt i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @ok(i32 %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %7 = call i64 @SnmpUtilOidCmp(%struct.TYPE_4__* @test_SnmpUtilOidCmp.oid1, %struct.TYPE_4__* @test_SnmpUtilOidCmp.oid2)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = icmp slt i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i64 @SnmpUtilOidCmp(%struct.TYPE_4__*, %struct.TYPE_4__*) #1

declare dso_local i32 @ok(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
