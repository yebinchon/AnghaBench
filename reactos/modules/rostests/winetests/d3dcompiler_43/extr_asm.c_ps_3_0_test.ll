; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_ps_3_0_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_ps_3_0_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_test = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"ps_3_0\0Amov r0, c0\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ps_3_0\0Adcl_normal5 v0\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ps_3_0\0Amov r0, vPos\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ps_3_0\0Amov r0, vFace\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"ps_3_0\0Amov r0, v[ aL + 12 ]\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"ps_3_0\0Aloop aL, i0\0Amov r0, v0[aL]\0Aendloop\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"ps_3_0\0Atexldl r0, v0, s0\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"ps_3_0\0Aadd_pp r0, r0, r1\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"ps_3_0\0Adsx_sat r0, r1\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"ps_3_0\0Atexldd_pp r0, r1, r2, r3, r4\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"ps_3_0\0Atexkill v0\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"ps_3_0\0Aadd oC3, r0, r1\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"ps_3_0\0Adcl_texcoord0_centroid v0\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"ps_3_0\0Adcl_2d_centroid s0\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"ps.3.0\0Adcl_2d_pp s0\0A\00", align 1
@__const.ps_3_0_test.tests = private unnamed_addr constant [15 x %struct.shader_test] [%struct.shader_test { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), %struct.TYPE_2__ { i32 -64768, i32 33554433, i32 -2146500608, i32 -1595670528, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), %struct.TYPE_2__ { i32 -64768, i32 33554463, i32 -2147155965, i32 -1878065152, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), %struct.TYPE_2__ { i32 -64768, i32 33554433, i32 -2146500608, i32 -1864101888, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), %struct.TYPE_2__ { i32 -64768, i32 33554433, i32 -2146500608, i32 -1864101887, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), %struct.TYPE_2__ { i32 -64768, i32 50331649, i32 -2146500608, i32 -1864097780, i32 -253491200, i32 65535, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), %struct.TYPE_2__ { i32 -64768, i32 33554459, i32 -253491200, i32 -253493248, i32 50331649, i32 -2146500608, i32 -1864097792, i32 -253491200, i32 29, i32 65535 } }, %struct.shader_test { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), %struct.TYPE_2__ { i32 -64768, i32 50331743, i32 -2146500608, i32 -1864105984, i32 -1595668480, i32 65535, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), %struct.TYPE_2__ { i32 -64768, i32 50331650, i32 -2144403456, i32 -2132541440, i32 -2132541439, i32 65535, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), %struct.TYPE_2__ { i32 -64768, i32 33554523, i32 -2145452032, i32 -2132541439, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), %struct.TYPE_2__ { i32 -64768, i32 83886173, i32 -2144403456, i32 -2132541439, i32 -2132541438, i32 -2132541437, i32 -2132541436, i32 65535, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), %struct.TYPE_2__ { i32 -64768, i32 16777281, i32 -1878065152, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), %struct.TYPE_2__ { i32 -64768, i32 50331650, i32 -2146498557, i32 -2132541440, i32 -2132541439, i32 65535, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), %struct.TYPE_2__ { i32 -64768, i32 33554463, i32 -2147483643, i32 -1873870848, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), %struct.TYPE_2__ { i32 -64768, i32 33554463, i32 -1879048192, i32 -1605433344, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), %struct.TYPE_2__ { i32 -64768, i32 33554463, i32 -1879048192, i32 -1607530496, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }], align 16
@.str.15 = private unnamed_addr constant [7 x i8] c"ps_3_0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ps_3_0_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_3_0_test() #0 {
  %1 = alloca [15 x %struct.shader_test], align 16
  %2 = bitcast [15 x %struct.shader_test]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([15 x %struct.shader_test]* @__const.ps_3_0_test.tests to i8*), i64 720, i1 false)
  %3 = getelementptr inbounds [15 x %struct.shader_test], [15 x %struct.shader_test]* %1, i64 0, i64 0
  %4 = getelementptr inbounds [15 x %struct.shader_test], [15 x %struct.shader_test]* %1, i64 0, i64 0
  %5 = call i32 @ARRAY_SIZE(%struct.shader_test* %4)
  %6 = call i32 @exec_tests(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), %struct.shader_test* %3, i32 %5)
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
