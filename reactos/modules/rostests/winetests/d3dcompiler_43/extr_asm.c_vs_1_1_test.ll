; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_vs_1_1_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_vs_1_1_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_test = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"vs_1_1\0Aadd r0, r1, r2\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"vs_1_1\0Anop\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"vs_1_1\0Amov oPos, c0\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"vs_1_1\0Amov oT0, c0\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"vs_1_1\0Amov oT5, c0\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"vs_1_1\0Amov oD0, c0\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"vs_1_1\0Amov oD1, c0\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"vs_1_1\0Amov oFog, c0.x\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"vs_1_1\0Amov oPts, c0.x\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"vs_1_1\0Adcl_position0 v0\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"vs_1_1\0Adcl_position v1\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"vs_1_1\0Adcl_normal12 v15\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"vs_1_1\0Aadd r0, v0, v1\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"vs_1_1\0Adef c12, 0, -1, -0.5, 1024\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"vs_1_1\0Adp4 r0.xw, r1.wzyx, r2.xxww\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"vs_1_1\0Aadd r0, -r0.x, -r1\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"vs_1_1\0Amov r0, c0[a0.x]\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"vs_1_1\0Amov r0, c1[a0.x + 2]\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"vs_1_1\0Adef c0, 1.0f, 1.0f, 1.0f, 0.5f\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"vs_1_1\0Amov r0, c[ a0.x + 12 ]\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"vs_1_1\0Amov r0, c[ 2 + a0.x ]\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"vs_1_1\0Amov r0, c[ 2 + a0.x + 12 ]\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"vs_1_1\0Amov r0, c[ 2 + 10 + 12 ]\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"vs_1_1\0Amov r0, c4[ 2 ]\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"vs_1_1\0Arcp r0, v0.x\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"vs.1.1\0Arsq r0, v0.x\0A\00", align 1
@__const.vs_1_1_test.tests = private unnamed_addr constant [26 x %struct.shader_test] [%struct.shader_test { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 2, i32 -2146500608, i32 -2132541439, i32 -2132541438, i32 65535, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 0, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 1, i32 -1072758784, i32 -1595670528, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 1, i32 -535887872, i32 -1595670528, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 1, i32 -535887867, i32 -1595670528, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 1, i32 -804323328, i32 -1595670528, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 1, i32 -804323327, i32 -1595670528, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 1, i32 -1072758783, i32 -1610612736, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 1, i32 -1072758782, i32 -1610612736, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 31, i32 -2147483648, i32 -1878065152, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 31, i32 -2147483648, i32 -1878065151, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 31, i32 -2146697213, i32 -1878065137, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 2, i32 -2146500608, i32 -1864105984, i32 -1864105983, i32 65535, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 81, i32 -1609629684, i32 0, i32 -1082130432, i32 -1090519040, i32 1149239296, i32 65535 } }, %struct.shader_test { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 9, i32 -2146893824, i32 -2145714175, i32 -2131755006, i32 65535, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 2, i32 -2146500608, i32 -2130706432, i32 -2115764223, i32 65535, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 1, i32 -2146500608, i32 -1595662336, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 1, i32 -2146500608, i32 -1595662333, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 81, i32 -1609629696, i32 1065353216, i32 1065353216, i32 1065353216, i32 1056964608, i32 65535 } }, %struct.shader_test { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 1, i32 -2146500608, i32 -1595662324, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 1, i32 -2146500608, i32 -1595662334, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 1, i32 -2146500608, i32 -1595662322, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 1, i32 -2146500608, i32 -1595670504, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 1, i32 -2146500608, i32 -1595670522, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 6, i32 -2146500608, i32 -1879048192, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 7, i32 -2146500608, i32 -1879048192, i32 65535, i32 0, i32 0, i32 0 } }], align 16
@.str.26 = private unnamed_addr constant [7 x i8] c"vs_1_1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vs_1_1_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vs_1_1_test() #0 {
  %1 = alloca [26 x %struct.shader_test], align 16
  %2 = bitcast [26 x %struct.shader_test]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([26 x %struct.shader_test]* @__const.vs_1_1_test.tests to i8*), i64 1040, i1 false)
  %3 = getelementptr inbounds [26 x %struct.shader_test], [26 x %struct.shader_test]* %1, i64 0, i64 0
  %4 = getelementptr inbounds [26 x %struct.shader_test], [26 x %struct.shader_test]* %1, i64 0, i64 0
  %5 = call i32 @ARRAY_SIZE(%struct.shader_test* %4)
  %6 = call i32 @exec_tests(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), %struct.shader_test* %3, i32 %5)
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
