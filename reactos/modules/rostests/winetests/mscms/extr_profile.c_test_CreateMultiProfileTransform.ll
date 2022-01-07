; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_CreateMultiProfileTransform.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_CreateMultiProfileTransform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8* }

@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@PROFILE_FILENAME = common dso_local global i8* null, align 8
@PROFILE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @test_CreateMultiProfileTransform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateMultiProfileTransform(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca [2 x i32*], align 16
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i32], align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %10 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %66

15:                                               ; preds = %2
  %16 = load i8*, i8** @PROFILE_FILENAME, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @strlen(i8* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* @PROFILE_READ, align 4
  %24 = load i32, i32* @OPEN_EXISTING, align 4
  %25 = call i32* @pOpenColorProfileA(%struct.TYPE_3__* %5, i32 %23, i32 0, i32 %24)
  %26 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  store i32* %25, i32** %26, align 16
  %27 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %28 = load i32*, i32** %27, align 16
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 (...) @GetLastError()
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i8*, i8** @PROFILE_FILENAME, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i8* @strlen(i8* %37)
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* @PROFILE_READ, align 4
  %41 = load i32, i32* @OPEN_EXISTING, align 4
  %42 = call i32* @pOpenColorProfileA(%struct.TYPE_3__* %5, i32 %40, i32 0, i32 %41)
  %43 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  store i32* %42, i32** %43, align 8
  %44 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 (...) @GetLastError()
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %52 = call i32* @pCreateMultiProfileTransform(i32** %50, i32 2, i32* %51, i32 2, i32 0, i32 0)
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 (...) @GetLastError()
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @pDeleteColorTransform(i32* %58)
  %60 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %61 = load i32*, i32** %60, align 16
  %62 = call i32 @pCloseColorProfile(i32* %61)
  %63 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @pCloseColorProfile(i32* %64)
  br label %66

66:                                               ; preds = %15, %2
  ret void
}

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32* @pOpenColorProfileA(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @pCreateMultiProfileTransform(i32**, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @pDeleteColorTransform(i32*) #1

declare dso_local i32 @pCloseColorProfile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
