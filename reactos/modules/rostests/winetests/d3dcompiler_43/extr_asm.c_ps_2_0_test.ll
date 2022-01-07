; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_ps_2_0_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_ps_2_0_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_test = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"ps_2_0\0Adcl_2d s0\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ps_2_0\0Adcl_cube s0\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ps_2_0\0Adcl_volume s0\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"ps_2_0\0Adcl_volume s0\0Adcl_cube s1\0Adcl_2d s2\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ps_2_0\0Amov r0, t0\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"ps_2_0\0Adcl_2d s2\0Atexld r0, t1, s2\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ps_2_0\0Atexkill t0\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"ps_2_0\0Amov oC0, c0\0Amov oC1, c1\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"ps_2_0\0Amov oDepth, c0.x\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"ps_2_0\0Adcl_2d s2\0Atexldp r0, t1, s2\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"ps.2.0\0Adcl_2d s2\0Atexldb r0, t1, s2\0A\00", align 1
@__const.ps_2_0_test.tests = private unnamed_addr constant [11 x %struct.shader_test] [%struct.shader_test { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), %struct.TYPE_2__ { i32 -65024, i32 33554463, i32 -1879048192, i32 -1609627648, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), %struct.TYPE_2__ { i32 -65024, i32 33554463, i32 -1744830464, i32 -1609627648, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), %struct.TYPE_2__ { i32 -65024, i32 33554463, i32 -1610612736, i32 -1609627648, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), %struct.TYPE_2__ { i32 -65024, i32 33554463, i32 -1610612736, i32 -1609627648, i32 33554463, i32 -1744830464, i32 -1609627647, i32 33554463, i32 -1879048192, i32 -1609627646, i32 65535 } }, %struct.shader_test { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), %struct.TYPE_2__ { i32 -65024, i32 33554433, i32 -2146500608, i32 -1327235072, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0), %struct.TYPE_2__ { i32 -65024, i32 33554463, i32 -1879048192, i32 -1609627646, i32 50331714, i32 -2146500608, i32 -1327235071, i32 -1595668478, i32 65535, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), %struct.TYPE_2__ { i32 -65024, i32 16777281, i32 -1341194240, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), %struct.TYPE_2__ { i32 -65024, i32 33554433, i32 -2146498560, i32 -1595670528, i32 33554433, i32 -2146498559, i32 -1595670527, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), %struct.TYPE_2__ { i32 -65024, i32 33554433, i32 -1878063104, i32 -1610612736, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), %struct.TYPE_2__ { i32 -65024, i32 33554463, i32 -1879048192, i32 -1609627646, i32 50397250, i32 -2146500608, i32 -1327235071, i32 -1595668478, i32 65535, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0), %struct.TYPE_2__ { i32 -65024, i32 33554463, i32 -1879048192, i32 -1609627646, i32 50462786, i32 -2146500608, i32 -1327235071, i32 -1595668478, i32 65535, i32 0, i32 0 } }], align 16
@.str.11 = private unnamed_addr constant [7 x i8] c"ps_2_0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ps_2_0_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_2_0_test() #0 {
  %1 = alloca [11 x %struct.shader_test], align 16
  %2 = bitcast [11 x %struct.shader_test]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([11 x %struct.shader_test]* @__const.ps_2_0_test.tests to i8*), i64 616, i1 false)
  %3 = getelementptr inbounds [11 x %struct.shader_test], [11 x %struct.shader_test]* %1, i64 0, i64 0
  %4 = getelementptr inbounds [11 x %struct.shader_test], [11 x %struct.shader_test]* %1, i64 0, i64 0
  %5 = call i32 @ARRAY_SIZE(%struct.shader_test* %4)
  %6 = call i32 @exec_tests(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), %struct.shader_test* %3, i32 %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @exec_tests(i8*, %struct.shader_test*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.shader_test*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
