; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_OpenColorProfileA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_OpenColorProfileA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i8* }

@PROFILE_FILENAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"OpenColorProfileA() failed (%d)\0A\00", align 1
@PROFILE_READ = common dso_local global i32 0, align 4
@PROFILE_READWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"CloseColorProfile() succeeded\0A\00", align 1
@OPEN_EXISTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"CloseColorProfile() failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"sRGB Color Space Profile.icm\00", align 1
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_OpenColorProfileA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_OpenColorProfileA(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** @PROFILE_FILENAME, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i8* %6, i8** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i8* null, i8** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 0, i32* %9, align 8
  %10 = call i32* @pOpenColorProfileA(%struct.TYPE_3__* null, i32 0, i32 0, i32 0)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 (...) @GetLastError()
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32* @pOpenColorProfileA(%struct.TYPE_3__* %3, i32 0, i32 0, i32 0)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @PROFILE_READ, align 4
  %23 = call i32* @pOpenColorProfileA(%struct.TYPE_3__* %3, i32 %22, i32 0, i32 0)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 (...) @GetLastError()
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @PROFILE_READWRITE, align 4
  %30 = call i32* @pOpenColorProfileA(%struct.TYPE_3__* %3, i32 %29, i32 0, i32 0)
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = icmp eq i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = call i32 @pCloseColorProfile(i32* null)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i8*, i8** %2, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %102

43:                                               ; preds = %1
  %44 = load i8*, i8** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 %47, i32* %48, align 8
  %49 = call i32* @pOpenColorProfileA(%struct.TYPE_3__* %3, i32 0, i32 0, i32 0)
  store i32* %49, i32** %4, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = icmp eq i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 (...) @GetLastError()
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @PROFILE_READ, align 4
  %56 = call i32* @pOpenColorProfileA(%struct.TYPE_3__* %3, i32 %55, i32 0, i32 0)
  store i32* %56, i32** %4, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = icmp eq i32* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 (...) @GetLastError()
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @PROFILE_READ, align 4
  %63 = load i32, i32* @PROFILE_READWRITE, align 4
  %64 = or i32 %62, %63
  %65 = call i32* @pOpenColorProfileA(%struct.TYPE_3__* %3, i32 %64, i32 0, i32 0)
  store i32* %65, i32** %4, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = icmp eq i32* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 (...) @GetLastError()
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @PROFILE_READ, align 4
  %72 = load i32, i32* @OPEN_EXISTING, align 4
  %73 = call i32* @pOpenColorProfileA(%struct.TYPE_3__* %3, i32 %71, i32 0, i32 %72)
  store i32* %73, i32** %4, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = icmp ne i32* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 (...) @GetLastError()
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @pCloseColorProfile(i32* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 (...) @GetLastError()
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i8*, i8** @PROFILE_FILENAME, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i8* %84, i8** %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8** %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 29, i32* %87, align 8
  %88 = load i32, i32* @PROFILE_READ, align 4
  %89 = load i32, i32* @FILE_SHARE_READ, align 4
  %90 = load i32, i32* @OPEN_EXISTING, align 4
  %91 = call i32* @pOpenColorProfileA(%struct.TYPE_3__* %3, i32 %88, i32 %89, i32 %90)
  store i32* %91, i32** %4, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = icmp ne i32* %92, null
  %94 = zext i1 %93 to i32
  %95 = call i32 (...) @GetLastError()
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @pCloseColorProfile(i32* %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 (...) @GetLastError()
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %43, %1
  ret void
}

declare dso_local i32* @pOpenColorProfileA(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @pCloseColorProfile(i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
