; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_GetColorProfileElementTag.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_GetColorProfileElementTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@PROFILE_FILENAME = common dso_local global i32 0, align 4
@PROFILE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"OpenColorProfileA() failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"GetColorProfileElementTag() succeeded (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"GetColorProfileElementTag() failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_GetColorProfileElementTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetColorProfileElementTag(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %76

11:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  store i64 1668313716, i64* %8, align 8
  %12 = load i32, i32* @PROFILE_FILENAME, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @PROFILE_READ, align 4
  %20 = load i32, i32* @OPEN_EXISTING, align 4
  %21 = call i32* @pOpenColorProfileA(%struct.TYPE_3__* %3, i32 %19, i32 0, i32 %20)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @pGetColorProfileElementTag(i32* null, i32 %27, i64* %7)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @pGetColorProfileElementTag(i32* %35, i32 0, i64* %7)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 (...) @GetLastError()
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @pGetColorProfileElementTag(i32* %43, i32 %44, i64* null)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 (...) @GetLastError()
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i64 @pGetColorProfileElementTag(i32* %52, i32 18, i64* null)
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 (...) @GetLastError()
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @pGetColorProfileElementTag(i32* %60, i32 %61, i64* %7)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %11
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %66, %67
  br label %69

69:                                               ; preds = %65, %11
  %70 = phi i1 [ false, %11 ], [ %68, %65 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 (...) @GetLastError()
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @pCloseColorProfile(i32* %74)
  br label %76

76:                                               ; preds = %69, %1
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @pOpenColorProfileA(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @pGetColorProfileElementTag(i32*, i32, i64*) #1

declare dso_local i32 @pCloseColorProfile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
