; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/hivetest/extr_hivetest.c_test8.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/hivetest/extr_hivetest.c_test8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@TOKEN_ADJUST_PRIVILEGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"\09\09\09\09Status =%x\0A\00", align 1
@SE_PRIVILEGE_ENABLED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"\09\09\09\09bRes =%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i32] [i32 116, i32 101, i32 115, i32 116, i32 53, i32 0], align 4
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"test5\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\09\09\09\09dwError =%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"NtOpenKey \\Registry\\Machine : \00", align 1
@.str.7 = private unnamed_addr constant [18 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 0], align 4
@MAXIMUM_ALLOWED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"\09\09\09Status =%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test8() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca i32, align 4
  %10 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = call i32 (...) @GetCurrentProcess()
  %12 = load i32, i32* @TOKEN_ADJUST_PRIVILEGES, align 4
  %13 = call i32 @NtOpenProcessToken(i32 %11, i32 %12, i32* %6)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = bitcast %struct.TYPE_7__* %20 to i8*
  %22 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load i32, i32* @SE_PRIVILEGE_ENABLED, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @AdjustTokenPrivileges(i32 %28, i32 %29, %struct.TYPE_6__* %5, i32 0, i32* null, i32* null)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %2, i8* bitcast ([6 x i32]* @.str.2 to i8*))
  %34 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %35 = call i32 @InitializeObjectAttributes(i32* %1, i32* %2, i32 %34, i32* null, i32* null)
  %36 = load i64, i64* @HKEY_LOCAL_MACHINE, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @NtLoadKey(i32 %37, i32* %1)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i64, i64* @HKEY_LOCAL_MACHINE, align 8
  %42 = call i32 @RegLoadKey(i64 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  %45 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %46 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %2, i8* bitcast ([18 x i32]* @.str.7 to i8*))
  %47 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %48 = call i32 @InitializeObjectAttributes(i32* %1, i32* %2, i32 %47, i32* null, i32* null)
  %49 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %50 = call i32 @NtOpenKey(i32* %7, i32 %49, i32* %1)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %51)
  %53 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %2, i8* bitcast ([6 x i32]* @.str.2 to i8*))
  %54 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %55 = call i32 @InitializeObjectAttributes(i32* %1, i32* %2, i32 %54, i32* null, i32* null)
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @NtLoadKey(i32 %56, i32* %1)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %58)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @NtOpenProcessToken(i32, i32, i32*) #2

declare dso_local i32 @GetCurrentProcess(...) #2

declare dso_local i32 @dprintf(i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @AdjustTokenPrivileges(i32, i32, %struct.TYPE_6__*, i32, i32*, i32*) #2

declare dso_local i32 @RtlRosInitUnicodeStringFromLiteral(i32*, i8*) #2

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @NtLoadKey(i32, i32*) #2

declare dso_local i32 @RegLoadKey(i64, i8*, i8*) #2

declare dso_local i32 @NtOpenKey(i32*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
