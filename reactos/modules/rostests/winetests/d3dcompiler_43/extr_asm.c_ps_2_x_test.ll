; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_ps_2_x_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_ps_2_x_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_test = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"ps_2_x\0Adefb b0, true\0Adefb b1, false\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"ps_2_x\0Adefi i0, -1, 1, 10, 0\0Adefi i1, 0, 40, 30, 10\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ps_2_x\0Adsx r0, r0\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ps_2_x\0Adsy r0, r0\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"ps_2_x\0Adcl_2d s2\0Atexldd r0, v1, s2, r3, r4\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"ps_2_x\0Acall l0\0Aret\0Alabel l0\0Aret\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"ps_2_x\0Acallnz l0, b0\0Aret\0Alabel l0\0Aret\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"ps_2_x\0Acallnz l0, !b0\0Aret\0Alabel l0\0Aret\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"ps_2_x\0Aif !b0\0Aelse\0Aendif\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"ps_2_x\0Arep i0\0Abreak\0Aendrep\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"ps_2_x\0Aif_ge r0, r1\0Aendif\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"ps_2_x\0Arep i0\0Abreak_ne r0, r1\0Aendrep\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"ps_2_x\0Asetp_gt p0, r0, r1\0A(!p0) add r2, r2, r3\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"ps_2_x\0Aif p0.x\0Aelse\0Aendif\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"ps_2_x\0Acallnz l0, !p0.z\0Aret\0Alabel l0\0Aret\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"ps_2_x\0Arep i0\0Abreakp p0.w\0Aendrep\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"ps.2.x\0Acall l2047\0Aret\0Alabel l2047\0Aret\0A\00", align 1
@__const.ps_2_x_test.tests = private unnamed_addr constant [17 x %struct.shader_test] [%struct.shader_test { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), %struct.TYPE_2__ { i32 -65023, i32 33554479, i32 -535885824, i32 1, i32 33554479, i32 -535885823, i32 0, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i32 0, i32 0), %struct.TYPE_2__ { i32 -65023, i32 83886128, i32 -267452416, i32 -1, i32 1, i32 10, i32 0, i32 83886128, i32 -267452415, i32 0, i32 40, i32 30, i32 10, i32 65535 } }, %struct.shader_test { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), %struct.TYPE_2__ { i32 -65023, i32 33554523, i32 -2146500608, i32 -2132541440, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), %struct.TYPE_2__ { i32 -65023, i32 33554524, i32 -2146500608, i32 -2132541440, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0), %struct.TYPE_2__ { i32 -65023, i32 33554463, i32 -1879048192, i32 -1609627646, i32 83886173, i32 -2146500608, i32 -1864105983, i32 -1595668478, i32 -2132541437, i32 -2132541436, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), %struct.TYPE_2__ { i32 -65023, i32 16777241, i32 -1595666432, i32 28, i32 16777246, i32 -1595666432, i32 28, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), %struct.TYPE_2__ { i32 -65023, i32 33554458, i32 -1595666432, i32 -521926656, i32 28, i32 16777246, i32 -1595666432, i32 28, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0), %struct.TYPE_2__ { i32 -65023, i32 33554458, i32 -1595666432, i32 -303822848, i32 28, i32 16777246, i32 -1595666432, i32 28, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), %struct.TYPE_2__ { i32 -65023, i32 16777256, i32 -303822848, i32 42, i32 43, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), %struct.TYPE_2__ { i32 -65023, i32 16777254, i32 -253493248, i32 44, i32 39, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), %struct.TYPE_2__ { i32 -65023, i32 33751081, i32 -2132541440, i32 -2132541439, i32 43, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0), %struct.TYPE_2__ { i32 -65023, i32 16777254, i32 -253493248, i32 33882157, i32 -2132541440, i32 -2132541439, i32 39, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i32 0, i32 0), %struct.TYPE_2__ { i32 -65023, i32 50397278, i32 -1341190144, i32 -2132541440, i32 -2132541439, i32 335544322, i32 -2146500606, i32 -1109127168, i32 -2132541438, i32 -2132541437, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), %struct.TYPE_2__ { i32 -65023, i32 16777256, i32 -1342173184, i32 42, i32 43, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0), %struct.TYPE_2__ { i32 -65023, i32 33554458, i32 -1595666432, i32 -1112928256, i32 28, i32 16777246, i32 -1595666432, i32 28, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0), %struct.TYPE_2__ { i32 -65023, i32 16777254, i32 -253493248, i32 16777312, i32 -1325461504, i32 39, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), %struct.TYPE_2__ { i32 -65023, i32 16777241, i32 -1595664385, i32 28, i32 16777246, i32 -1595664385, i32 28, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }], align 16
@.str.17 = private unnamed_addr constant [7 x i8] c"ps_2_x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ps_2_x_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_2_x_test() #0 {
  %1 = alloca [17 x %struct.shader_test], align 16
  %2 = bitcast [17 x %struct.shader_test]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([17 x %struct.shader_test]* @__const.ps_2_x_test.tests to i8*), i64 1088, i1 false)
  %3 = getelementptr inbounds [17 x %struct.shader_test], [17 x %struct.shader_test]* %1, i64 0, i64 0
  %4 = getelementptr inbounds [17 x %struct.shader_test], [17 x %struct.shader_test]* %1, i64 0, i64 0
  %5 = call i32 @ARRAY_SIZE(%struct.shader_test* %4)
  %6 = call i32 @exec_tests(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), %struct.shader_test* %3, i32 %5)
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
