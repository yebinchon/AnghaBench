; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_main.c_test_findRDNAttr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_main.c_test_findRDNAttr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__* }

@test_findRDNAttr.oid = internal global [6 x i8] c"1.2.3\00", align 1
@__const.test_findRDNAttr.bin = private unnamed_addr constant [11 x i32] [i32 22, i32 9, i32 74, i32 117, i32 97, i32 110, i32 32, i32 76, i32 97, i32 110, i32 103], align 16
@CERT_RDN_IA5_STRING = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"bogus\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Expected failure\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Last error was set to %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"1.2.4\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"1.2.3\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"CertFindRDNAttr failed: %08x\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_findRDNAttr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_findRDNAttr() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [11 x i32], align 16
  %3 = alloca [1 x %struct.TYPE_9__], align 16
  %4 = alloca [1 x %struct.TYPE_9__], align 16
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = bitcast [11 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([11 x i32]* @__const.test_findRDNAttr.bin to i8*), i64 44, i1 false)
  %7 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %3, i64 0, i64 0
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_findRDNAttr.oid, i64 0, i64 0), i8** %8, align 16
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CERT_RDN_IA5_STRING, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 44, i32* %12, align 16
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %14 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 0
  store i32* %14, i32** %13, align 8
  %15 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %4, i64 0, i64 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %3, i64 0, i64 0
  %18 = call i8* @ARRAY_SIZE(%struct.TYPE_9__* %17)
  store i8* %18, i8** %16, align 16
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %20 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %3, i64 0, i64 0
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %22 = bitcast %struct.TYPE_8__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 16, i1 false)
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %24 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %4, i64 0, i64 0
  %25 = call i8* @ARRAY_SIZE(%struct.TYPE_9__* %24)
  store i8* %25, i8** %23, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %27 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %4, i64 0, i64 0
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %26, align 8
  %28 = call i32 @SetLastError(i32 -559038737)
  %29 = call i32* @CertFindRDNAttr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %5)
  store i32* %29, i32** %1, align 8
  %30 = load i32*, i32** %1, align 8
  %31 = icmp eq i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 (...) @GetLastError()
  %35 = icmp eq i32 %34, -559038737
  %36 = zext i1 %35 to i32
  %37 = call i32 (...) @GetLastError()
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = call i32 @SetLastError(i32 -559038737)
  %40 = call i32* @CertFindRDNAttr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_10__* %5)
  store i32* %40, i32** %1, align 8
  %41 = load i32*, i32** %1, align 8
  %42 = icmp eq i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 (...) @GetLastError()
  %46 = icmp eq i32 %45, -559038737
  %47 = zext i1 %46 to i32
  %48 = call i32 (...) @GetLastError()
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = call i32 @SetLastError(i32 -559038737)
  %51 = call i32* @CertFindRDNAttr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_10__* %5)
  store i32* %51, i32** %1, align 8
  %52 = load i32*, i32** %1, align 8
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 (...) @GetLastError()
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @ARRAY_SIZE(%struct.TYPE_9__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32* @CertFindRDNAttr(i8*, %struct.TYPE_10__*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
