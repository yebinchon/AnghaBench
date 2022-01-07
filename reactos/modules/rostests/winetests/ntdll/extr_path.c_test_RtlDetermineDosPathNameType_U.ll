; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_path.c_test_RtlDetermineDosPathNameType_U.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_path.c_test_RtlDetermineDosPathNameType_U.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i8*, i64 }

@test_RtlDetermineDosPathNameType_U.tests = internal constant [29 x %struct.test] [%struct.test { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 1 }, %struct.test { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i64 1 }, %struct.test { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i64 1 }, %struct.test { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 1 }, %struct.test { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i64 1 }, %struct.test { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i64 1 }, %struct.test { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i64 2 }, %struct.test { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i64 2 }, %struct.test { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i64 2 }, %struct.test { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i64 2 }, %struct.test { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i64 2 }, %struct.test { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i64 3 }, %struct.test { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i64 3 }, %struct.test { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i64 3 }, %struct.test { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64 4 }, %struct.test { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i64 4 }, %struct.test { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i64 4 }, %struct.test { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i64 4 }, %struct.test { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i64 5 }, %struct.test { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), i64 5 }, %struct.test { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i64 5 }, %struct.test { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i64 6 }, %struct.test { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i64 6 }, %struct.test { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i64 6 }, %struct.test { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i64 1 }, %struct.test { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i64 1 }, %struct.test { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i64 7 }, %struct.test { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i64 7 }, %struct.test zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"\\\\foo\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"//foo\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\\/foo\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"/\\foo\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"c:\\foo\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"c:/foo\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"c://foo\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"c:\\\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"c:/\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"c:foo\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"c:f\\oo\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"c:foo/bar\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"\\foo\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"/foo\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"\00:foo\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"\\\\.\\foo\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"//./foo\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"/\\./foo\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"\\\\.foo\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"//.foo\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"\\\\.\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"//.\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [27 x i8] c"Wrong result %d/%d for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlDetermineDosPathNameType_U to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlDetermineDosPathNameType_U() #0 {
  %1 = alloca %struct.test*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @MAX_PATH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i32, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  store %struct.test* getelementptr inbounds ([29 x %struct.test], [29 x %struct.test]* @test_RtlDetermineDosPathNameType_U.tests, i64 0, i64 0), %struct.test** %1, align 8
  br label %9

9:                                                ; preds = %41, %0
  %10 = load %struct.test*, %struct.test** %1, align 8
  %11 = getelementptr inbounds %struct.test, %struct.test* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %9
  %15 = mul nuw i64 4, %6
  %16 = trunc i64 %15 to i32
  %17 = load %struct.test*, %struct.test** %1, align 8
  %18 = getelementptr inbounds %struct.test, %struct.test* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.test*, %struct.test** %1, align 8
  %21 = getelementptr inbounds %struct.test, %struct.test* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = add nsw i64 %23, 1
  %25 = call i32 @pRtlMultiByteToUnicodeN(i32* %8, i32 %16, i32* null, i8* %19, i64 %24)
  %26 = call i64 @pRtlDetermineDosPathNameType_U(i32* %8)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.test*, %struct.test** %1, align 8
  %29 = getelementptr inbounds %struct.test, %struct.test* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.test*, %struct.test** %1, align 8
  %35 = getelementptr inbounds %struct.test, %struct.test* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.test*, %struct.test** %1, align 8
  %38 = getelementptr inbounds %struct.test, %struct.test* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i64 %33, i64 %36, i8* %39)
  br label %41

41:                                               ; preds = %14
  %42 = load %struct.test*, %struct.test** %1, align 8
  %43 = getelementptr inbounds %struct.test, %struct.test* %42, i32 1
  store %struct.test* %43, %struct.test** %1, align 8
  br label %9

44:                                               ; preds = %9
  %45 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %45)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pRtlMultiByteToUnicodeN(i32*, i32, i32*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @pRtlDetermineDosPathNameType_U(i32*) #2

declare dso_local i32 @ok(i32, i8*, i64, i64, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
