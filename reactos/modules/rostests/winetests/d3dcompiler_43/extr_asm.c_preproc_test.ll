; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_preproc_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_preproc_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_test = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [81 x i8] c"vs.1.1\0D\0A//some comments\0D\0A//other comments\0A; yet another comment\0D\0Aadd r0, r0, r1\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"#line 1 \22vertex.vsh\22\0Avs.1.1\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"#define REG 1 + 2 +\\\0A3 + 4\0Avs.1.1\0Amov r0, c0[ REG ]\0A\00", align 1
@__const.preproc_test.tests = private unnamed_addr constant [3 x %struct.shader_test] [%struct.shader_test { i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 2, i32 -2146500608, i32 -2132541440, i32 -2132541439, i32 65535 } }, %struct.shader_test { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 65535, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0), %struct.TYPE_2__ { i32 -130815, i32 1, i32 -2146500608, i32 -1595670518, i32 65535, i32 0 } }], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"preproc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @preproc_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preproc_test() #0 {
  %1 = alloca [3 x %struct.shader_test], align 16
  %2 = bitcast [3 x %struct.shader_test]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([3 x %struct.shader_test]* @__const.preproc_test.tests to i8*), i64 96, i1 false)
  %3 = getelementptr inbounds [3 x %struct.shader_test], [3 x %struct.shader_test]* %1, i64 0, i64 0
  %4 = getelementptr inbounds [3 x %struct.shader_test], [3 x %struct.shader_test]* %1, i64 0, i64 0
  %5 = call i32 @ARRAY_SIZE(%struct.shader_test* %4)
  %6 = call i32 @exec_tests(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.shader_test* %3, i32 %5)
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
