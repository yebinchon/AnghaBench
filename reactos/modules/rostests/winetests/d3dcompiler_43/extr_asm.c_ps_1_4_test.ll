; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_ps_1_4_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_ps_1_4_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_test = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"ps_1_4\0Amov r0, r1\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ps_1_4\0Amov r0, r5\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ps_1_4\0Amov r0, c7\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ps_1_4\0Amov r0, v1\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ps_1_4\0Aphase\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"ps_1_4\0Atexcrd r0, t0\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"ps_1_4\0Atexcrd r4, t3\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"ps_1_4\0Atexcrd_sat r4, t3\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"ps_1_4\0Atexld r0, t0\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"ps_1_4\0Atexld r1, t4\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"ps_1_4\0Atexld r5, r0\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"ps_1_4\0Atexld r5, c0\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"ps_1_4\0Atexld r5, r2_dz\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"ps_1_4\0Abem r1.rg, c0, r0\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"ps_1_4\0Atexdepth r5\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"ps_1_4\0Aadd r0, r1, r2_bx2\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"ps_1_4\0Aadd_x4 r0, r1, r2\0A\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"ps_1_4\0Aadd r0.rgb, r1, r2\0A+add r0.a, r1, r2\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"ps_1_4\0Atexdepth_x2 r5\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"ps.1.4\0Abem_d2 r1, c0, r0\0A\00", align 1
@__const.ps_1_4_test.tests = private unnamed_addr constant [20 x %struct.shader_test] [%struct.shader_test { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 1, i32 -2146500608, i32 -2132541439, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 1, i32 -2146500608, i32 -2132541435, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 1, i32 -2146500608, i32 -1595670521, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 1, i32 -2146500608, i32 -1864105983, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 65533, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 64, i32 -2146500608, i32 -1327235072, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 64, i32 -2146500604, i32 -1327235069, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 64, i32 -2145452028, i32 -1327235069, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 66, i32 -2146500608, i32 -1327235072, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 66, i32 -2146500607, i32 -1327235068, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 66, i32 -2146500603, i32 -2132541440, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 66, i32 -2146500603, i32 -1595670528, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 66, i32 -2146500603, i32 -1981546494, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 89, i32 -2147287039, i32 -1595670528, i32 -2132541440, i32 65535, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 87, i32 -2146500603, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 2, i32 -2146500608, i32 -2132541439, i32 -2065432574, i32 65535, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 2, i32 -2112946176, i32 -2132541439, i32 -2132541438, i32 65535, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 2, i32 -2147024896, i32 -2132541439, i32 -2132541438, i32 1073741826, i32 -2146959360, i32 -2132541439, i32 -2132541438, i32 65535 } }, %struct.shader_test { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 87, i32 -2129723387, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0), %struct.TYPE_2__ { i32 -65276, i32 89, i32 -1894842367, i32 -1595670528, i32 -2132541440, i32 65535, i32 0, i32 0, i32 0, i32 0 } }], align 16
@.str.20 = private unnamed_addr constant [7 x i8] c"ps_1_4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ps_1_4_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_1_4_test() #0 {
  %1 = alloca [20 x %struct.shader_test], align 16
  %2 = bitcast [20 x %struct.shader_test]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([20 x %struct.shader_test]* @__const.ps_1_4_test.tests to i8*), i64 960, i1 false)
  %3 = getelementptr inbounds [20 x %struct.shader_test], [20 x %struct.shader_test]* %1, i64 0, i64 0
  %4 = getelementptr inbounds [20 x %struct.shader_test], [20 x %struct.shader_test]* %1, i64 0, i64 0
  %5 = call i32 @ARRAY_SIZE(%struct.shader_test* %4)
  %6 = call i32 @exec_tests(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), %struct.shader_test* %3, i32 %5)
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
