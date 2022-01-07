; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_NeedCurrentDirectoryForExePathW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_NeedCurrentDirectoryForExePathW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_NeedCurrentDirectoryForExePathW.thispath = private unnamed_addr constant [2 x i8] c".\00", align 1
@__const.test_NeedCurrentDirectoryForExePathW.fullpath = private unnamed_addr constant [4 x i8] c"c:\\\00", align 1
@__const.test_NeedCurrentDirectoryForExePathW.cmdname = private unnamed_addr constant [8 x i8] c"cmd.exe\00", align 1
@.str = private unnamed_addr constant [35 x i8] c"NoDefaultCurrentDirectoryInExePath\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"returned FALSE for \22.\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"returned FALSE for \22c:\\\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"returned FALSE for \22cmd.exe\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"nya\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"returned TRUE for \22.\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"returned TRUE for \22cmd.exe\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_NeedCurrentDirectoryForExePathW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_NeedCurrentDirectoryForExePathW() #0 {
  %1 = alloca [2 x i8], align 1
  %2 = alloca [4 x i8], align 1
  %3 = alloca [8 x i8], align 1
  %4 = bitcast [2 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.test_NeedCurrentDirectoryForExePathW.thispath, i32 0, i32 0), i64 2, i1 false)
  %5 = bitcast [4 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_NeedCurrentDirectoryForExePathW.fullpath, i32 0, i32 0), i64 4, i1 false)
  %6 = bitcast [8 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_NeedCurrentDirectoryForExePathW.cmdname, i32 0, i32 0), i64 8, i1 false)
  %7 = call i32 @SetEnvironmentVariableA(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* null)
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 0
  %9 = call i32 @pNeedCurrentDirectoryForExePathW(i8* %8)
  %10 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %11 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %12 = call i32 @pNeedCurrentDirectoryForExePathW(i8* %11)
  %13 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %15 = call i32 @pNeedCurrentDirectoryForExePathW(i8* %14)
  %16 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @SetEnvironmentVariableA(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 0
  %19 = call i32 @pNeedCurrentDirectoryForExePathW(i8* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %25 = call i32 @pNeedCurrentDirectoryForExePathW(i8* %24)
  %26 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %28 = call i32 @pNeedCurrentDirectoryForExePathW(i8* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SetEnvironmentVariableA(i8*, i8*) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @pNeedCurrentDirectoryForExePathW(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
