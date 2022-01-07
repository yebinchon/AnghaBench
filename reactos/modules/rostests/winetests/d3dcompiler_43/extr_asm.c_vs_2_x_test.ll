; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_vs_2_x_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_vs_2_x_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_test = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"vs_2_x\0Arep i0\0Abreak\0Aendrep\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"vs_2_x\0Aif_ge r0, r1\0Aendif\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"vs_2_x\0Arep i0\0Abreak_ne r0, r1\0Aendrep\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"vs_2_x\0Asetp_gt p0, r0, r1\0A(!p0) add r2, r2, r3\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"vs_2_x\0Aif p0.x\0Aelse\0Aendif\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"vs_2_x\0Acallnz l0, !p0.z\0Aret\0Alabel l0\0Aret\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"vs.2.x\0Arep i0\0Abreakp p0.w\0Aendrep\0A\00", align 1
@__const.vs_2_x_test.tests = private unnamed_addr constant [7 x %struct.shader_test] [%struct.shader_test { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), %struct.TYPE_2__ { i32 -130559, i32 16777254, i32 -253493248, i32 44, i32 39, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), %struct.TYPE_2__ { i32 -130559, i32 33751081, i32 -2132541440, i32 -2132541439, i32 43, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), %struct.TYPE_2__ { i32 -130559, i32 16777254, i32 -253493248, i32 33882157, i32 -2132541440, i32 -2132541439, i32 39, i32 65535, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), %struct.TYPE_2__ { i32 -130559, i32 50397278, i32 -1341190144, i32 -2132541440, i32 -2132541439, i32 335544322, i32 -2146500606, i32 -1109127168, i32 -2132541438, i32 -2132541437, i32 65535 } }, %struct.shader_test { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), %struct.TYPE_2__ { i32 -130559, i32 16777256, i32 -1342173184, i32 42, i32 43, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0), %struct.TYPE_2__ { i32 -130559, i32 33554458, i32 -1595666432, i32 -1112928256, i32 28, i32 16777246, i32 -1595666432, i32 28, i32 65535, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), %struct.TYPE_2__ { i32 -130559, i32 16777254, i32 -253493248, i32 16777312, i32 -1325461504, i32 39, i32 65535, i32 0, i32 0, i32 0, i32 0 } }], align 16
@.str.7 = private unnamed_addr constant [7 x i8] c"vs_2_x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vs_2_x_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vs_2_x_test() #0 {
  %1 = alloca [7 x %struct.shader_test], align 16
  %2 = bitcast [7 x %struct.shader_test]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([7 x %struct.shader_test]* @__const.vs_2_x_test.tests to i8*), i64 392, i1 false)
  %3 = getelementptr inbounds [7 x %struct.shader_test], [7 x %struct.shader_test]* %1, i64 0, i64 0
  %4 = getelementptr inbounds [7 x %struct.shader_test], [7 x %struct.shader_test]* %1, i64 0, i64 0
  %5 = call i32 @ARRAY_SIZE(%struct.shader_test* %4)
  %6 = call i32 @exec_tests(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %struct.shader_test* %3, i32 %5)
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
