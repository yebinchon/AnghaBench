; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_SetColorProfileElement.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_SetColorProfileElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@test_SetColorProfileElement.data = internal global [21 x i8] c"(c) The Wine Project\00", align 16
@test_SetColorProfileElement.buffer = internal global [51 x i8] zeroinitializer, align 16
@PROFILE_FILENAME = common dso_local global i32 0, align 4
@PROFILE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"OpenColorProfileA() failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"SetColorProfileElement() succeeded (%d)\0A\00", align 1
@PROFILE_READWRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"SetColorProfileElement() failed %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"GetColorProfileElement() failed %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"wrong size\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Unexpected tag data, expected %s, got %s (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_SetColorProfileElement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetColorProfileElement(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %103

11:                                               ; preds = %1
  store i32 1668313716, i32* %8, align 4
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
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @pSetColorProfileElement(i32* %27, i32 %28, i32 0, i32* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @test_SetColorProfileElement.data, i64 0, i64 0))
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @pCloseColorProfile(i32* %36)
  %38 = load i32, i32* @PROFILE_READWRITE, align 4
  %39 = load i32, i32* @OPEN_EXISTING, align 4
  %40 = call i32* @pOpenColorProfileA(%struct.TYPE_3__* %3, i32 %38, i32 0, i32 %39)
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 (...) @GetLastError()
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = call i32 @pSetColorProfileElement(i32* null, i32 0, i32 0, i32* null, i8* null)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 (...) @GetLastError()
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @pSetColorProfileElement(i32* %53, i32 0, i32 0, i32* null, i8* null)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 (...) @GetLastError()
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @pSetColorProfileElement(i32* %61, i32 %62, i32 0, i32* null, i8* null)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 (...) @GetLastError()
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @pSetColorProfileElement(i32* %70, i32 %71, i32 0, i32* %5, i8* null)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 (...) @GetLastError()
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  store i32 21, i32* %5, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @pSetColorProfileElement(i32* %79, i32 %80, i32 0, i32* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @test_SetColorProfileElement.data, i64 0, i64 0))
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (...) @GetLastError()
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  store i32 51, i32* %5, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @pGetColorProfileElement(i32* %85, i32 %86, i32 0, i32* %5, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @test_SetColorProfileElement.buffer, i64 0, i64 0), i32* %7)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (...) @GetLastError()
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = icmp sgt i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %95 = call i32 @memcmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @test_SetColorProfileElement.data, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @test_SetColorProfileElement.buffer, i64 0, i64 0), i32 21)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 (...) @GetLastError()
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @test_SetColorProfileElement.data, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @test_SetColorProfileElement.buffer, i64 0, i64 0), i32 %99)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @pCloseColorProfile(i32* %101)
  br label %103

103:                                              ; preds = %11, %1
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @pOpenColorProfileA(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @pSetColorProfileElement(i32*, i32, i32, i32*, i8*) #1

declare dso_local i32 @pCloseColorProfile(i32*) #1

declare dso_local i32 @pGetColorProfileElement(i32*, i32, i32, i32*, i8*, i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
