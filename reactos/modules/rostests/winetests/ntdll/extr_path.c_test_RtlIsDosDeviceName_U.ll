; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_path.c_test_RtlIsDosDeviceName_U.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_path.c_test_RtlIsDosDeviceName_U.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i8*, i32, i32, i64 }

@test_RtlIsDosDeviceName_U.tests = internal constant [35 x %struct.test] [%struct.test { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 8, i32 6, i64 128 }, %struct.test { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 8, i32 6, i64 128 }, %struct.test { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 0, i64 0 }, %struct.test { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 0, i64 0 }, %struct.test { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i64 0 }, %struct.test { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 6, i32 6, i64 0 }, %struct.test { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 0, i64 0 }, %struct.test { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0, i64 0 }, %struct.test { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 6, i32 6, i64 128 }, %struct.test { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 6, i32 6, i64 128 }, %struct.test { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 4, i32 6, i64 0 }, %struct.test { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 4, i32 6, i64 0 }, %struct.test { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 4, i32 6, i64 0 }, %struct.test { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 4, i32 6, i64 128 }, %struct.test { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i64 0 }, %struct.test { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 0, i64 0 }, %struct.test { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 0, i32 0, i64 0 }, %struct.test { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0, i64 0 }, %struct.test { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 4, i32 6, i64 0 }, %struct.test { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 4, i32 6, i64 128 }, %struct.test { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 0, i64 0 }, %struct.test { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 4, i32 6, i64 128 }, %struct.test { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 4, i32 6, i64 0 }, %struct.test { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i32 4, i32 6, i64 0 }, %struct.test { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 4, i32 6, i64 0 }, %struct.test { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i32 4, i32 6, i64 128 }, %struct.test { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 6, i64 0 }, %struct.test { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 8, i64 0 }, %struct.test { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i32 4, i32 8, i64 0 }, %struct.test { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 8, i64 0 }, %struct.test { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 8, i64 0 }, %struct.test { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i32 0, i32 0, i64 0 }, %struct.test { i8* getelementptr inbounds ([508 x i8], [508 x i8]* @.str.32, i32 0, i32 0), i32 1000, i32 6, i64 0 }, %struct.test { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 6, i32 6, i64 0 }, %struct.test zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"\\\\.\\CON\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\\\\.\\con\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\\\\.\\CON2\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"\\\\foo\\nul\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"c:\\nul:\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"c:\\nul\\\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"c:\\nul\\foo\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"c:\\nul::\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"c:\\nul::::::\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"c:prn     \00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"c:prn.......\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"c:prn... ...\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"c:NUL  ....  \00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"c: . . .\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"c:\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c" . . . :\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"c:nul. . . :\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"c:nul . . :\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"c:nul0\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"c:prn:aaa\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"c:PRN:.txt\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"c:aux:.txt...\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"c:prn:.txt:\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"c:nul:aaa\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"con:\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"lpt1:\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"c:com5:\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"CoM4:\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"lpt9:\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"c:\\lpt0.txt\00", align 1
@.str.32 = private unnamed_addr constant [508 x i8] c"c:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\nul.txt\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"c:\\nul\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"Wrong result (%d,%d)/(%d,%d) for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlIsDosDeviceName_U to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlIsDosDeviceName_U() #0 {
  %1 = alloca %struct.test*, align 8
  %2 = alloca [2000 x i32], align 16
  %3 = alloca i64, align 8
  store %struct.test* getelementptr inbounds ([35 x %struct.test], [35 x %struct.test]* @test_RtlIsDosDeviceName_U.tests, i64 0, i64 0), %struct.test** %1, align 8
  br label %4

4:                                                ; preds = %61, %0
  %5 = load %struct.test*, %struct.test** %1, align 8
  %6 = getelementptr inbounds %struct.test, %struct.test* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %64

9:                                                ; preds = %4
  %10 = getelementptr inbounds [2000 x i32], [2000 x i32]* %2, i64 0, i64 0
  %11 = load %struct.test*, %struct.test** %1, align 8
  %12 = getelementptr inbounds %struct.test, %struct.test* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.test*, %struct.test** %1, align 8
  %15 = getelementptr inbounds %struct.test, %struct.test* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = add nsw i64 %17, 1
  %19 = call i32 @pRtlMultiByteToUnicodeN(i32* %10, i32 8000, i32* null, i8* %13, i64 %18)
  %20 = getelementptr inbounds [2000 x i32], [2000 x i32]* %2, i64 0, i64 0
  %21 = call i64 @pRtlIsDosDeviceName_U(i32* %20)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load %struct.test*, %struct.test** %1, align 8
  %24 = getelementptr inbounds %struct.test, %struct.test* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.test*, %struct.test** %1, align 8
  %27 = getelementptr inbounds %struct.test, %struct.test* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @MAKELONG(i32 %25, i32 %28)
  %30 = icmp eq i64 %22, %29
  br i1 %30, label %44, label %31

31:                                               ; preds = %9
  %32 = load %struct.test*, %struct.test** %1, align 8
  %33 = getelementptr inbounds %struct.test, %struct.test* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i64, i64* %3, align 8
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i64 @broken(i32 %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %36, %31
  %43 = phi i1 [ false, %31 ], [ %41, %36 ]
  br label %44

44:                                               ; preds = %42, %9
  %45 = phi i1 [ true, %9 ], [ %43, %42 ]
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @HIWORD(i64 %47)
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @LOWORD(i64 %49)
  %51 = load %struct.test*, %struct.test** %1, align 8
  %52 = getelementptr inbounds %struct.test, %struct.test* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.test*, %struct.test** %1, align 8
  %55 = getelementptr inbounds %struct.test, %struct.test* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.test*, %struct.test** %1, align 8
  %58 = getelementptr inbounds %struct.test, %struct.test* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.34, i64 0, i64 0), i32 %48, i32 %50, i32 %53, i32 %56, i8* %59)
  br label %61

61:                                               ; preds = %44
  %62 = load %struct.test*, %struct.test** %1, align 8
  %63 = getelementptr inbounds %struct.test, %struct.test* %62, i32 1
  store %struct.test* %63, %struct.test** %1, align 8
  br label %4

64:                                               ; preds = %4
  ret void
}

declare dso_local i32 @pRtlMultiByteToUnicodeN(i32*, i32, i32*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @pRtlIsDosDeviceName_U(i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @MAKELONG(i32, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @HIWORD(i64) #1

declare dso_local i32 @LOWORD(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
