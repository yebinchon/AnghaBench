; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_IsColorProfileTagPresent.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_IsColorProfileTagPresent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@PROFILE_FILENAME = common dso_local global i32 0, align 4
@PROFILE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"OpenColorProfileA() failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"IsColorProfileTagPresent() succeeded (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"IsColorProfileTagPresent() failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_IsColorProfileTagPresent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IsColorProfileTagPresent(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %72

10:                                               ; preds = %1
  %11 = load i32, i32* @PROFILE_FILENAME, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @PROFILE_READ, align 4
  %19 = load i32, i32* @OPEN_EXISTING, align 4
  %20 = call i32* @pOpenColorProfileA(%struct.TYPE_3__* %3, i32 %18, i32 0, i32 %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 (...) @GetLastError()
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %7, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @pIsColorProfileTagPresent(i32* %26, i32 %27, i64* %6)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %10
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %31, %10
  %35 = phi i1 [ false, %10 ], [ %33, %31 ]
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 (...) @GetLastError()
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i32 1668313716, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @pIsColorProfileTagPresent(i32* null, i32 %40, i64* %6)
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 (...) @GetLastError()
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @pIsColorProfileTagPresent(i32* %48, i32 %49, i64* null)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 (...) @GetLastError()
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @pIsColorProfileTagPresent(i32* %57, i32 %58, i64* %6)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %34
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %62, %34
  %66 = phi i1 [ false, %34 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 (...) @GetLastError()
  %69 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @pCloseColorProfile(i32* %70)
  br label %72

72:                                               ; preds = %65, %1
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @pOpenColorProfileA(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @pIsColorProfileTagPresent(i32*, i32, i64*) #1

declare dso_local i32 @pCloseColorProfile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
