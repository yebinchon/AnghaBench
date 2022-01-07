; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_main.c_test_findExtension.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_main.c_test_findExtension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@test_findExtension.oid = internal global [6 x i8] c"1.2.3\00", align 1
@__const.test_findExtension.blobbin = private unnamed_addr constant [3 x i32] [i32 2, i32 1, i32 1], align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Expected failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Last error was set to %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"bogus\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"1.2.4\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"1.2.3\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"CertFindExtension failed: %08x\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_findExtension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_findExtension() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [3 x i32], align 4
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = bitcast [3 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast ([3 x i32]* @__const.test_findExtension.blobbin to i8*), i64 12, i1 false)
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_findExtension.oid, i64 0, i64 0), i8** %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32* inttoptr (i64 12 to i32*), i32** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i32 0, i32* %10, align 8
  %11 = call i32 @SetLastError(i32 -559038737)
  %12 = call i32* @CertFindExtension(i8* null, i32 0, %struct.TYPE_5__* null)
  store i32* %12, i32** %1, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = icmp eq i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @GetLastError()
  %18 = icmp eq i32 %17, -559038737
  %19 = zext i1 %18 to i32
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = call i32 @SetLastError(i32 -559038737)
  %23 = call i32* @CertFindExtension(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 1, %struct.TYPE_5__* %3)
  store i32* %23, i32** %1, align 8
  %24 = load i32*, i32** %1, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 (...) @GetLastError()
  %29 = icmp eq i32 %28, -559038737
  %30 = zext i1 %29 to i32
  %31 = call i32 (...) @GetLastError()
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = call i32 @SetLastError(i32 -559038737)
  %34 = call i32* @CertFindExtension(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 1, %struct.TYPE_5__* %3)
  store i32* %34, i32** %1, align 8
  %35 = load i32*, i32** %1, align 8
  %36 = icmp eq i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 (...) @GetLastError()
  %40 = icmp eq i32 %39, -559038737
  %41 = zext i1 %40 to i32
  %42 = call i32 (...) @GetLastError()
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = call i32 @SetLastError(i32 -559038737)
  %45 = call i32* @CertFindExtension(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 1, %struct.TYPE_5__* %3)
  store i32* %45, i32** %1, align 8
  %46 = load i32*, i32** %1, align 8
  %47 = icmp ne i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 (...) @GetLastError()
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32* @CertFindExtension(i8*, i32, %struct.TYPE_5__*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
