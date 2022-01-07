; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_OpenColorProfileW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_OpenColorProfileW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }

@PROFILE_FILENAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"OpenColorProfileW() failed (%d)\0A\00", align 1
@PROFILE_READ = common dso_local global i32 0, align 4
@PROFILE_READWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"CloseColorProfile() succeeded\0A\00", align 1
@OPEN_EXISTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"CloseColorProfile() failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_OpenColorProfileW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_OpenColorProfileW(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @PROFILE_FILENAME, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32* null, i32** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = call i32* @pOpenColorProfileW(%struct.TYPE_3__* null, i32 0, i32 0, i32 0)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 (...) @GetLastError()
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32* @pOpenColorProfileW(%struct.TYPE_3__* %3, i32 0, i32 0, i32 0)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @PROFILE_READ, align 4
  %23 = call i32* @pOpenColorProfileW(%struct.TYPE_3__* %3, i32 %22, i32 0, i32 0)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 (...) @GetLastError()
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @PROFILE_READWRITE, align 4
  %30 = call i32* @pOpenColorProfileW(%struct.TYPE_3__* %3, i32 %29, i32 0, i32 0)
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
  %41 = load i32*, i32** %2, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %87

43:                                               ; preds = %1
  %44 = load i32*, i32** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32* %44, i32** %45, align 8
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @lstrlenW(i32* %46)
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = call i32* @pOpenColorProfileW(%struct.TYPE_3__* %3, i32 0, i32 0, i32 0)
  store i32* %52, i32** %4, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = icmp eq i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 (...) @GetLastError()
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @PROFILE_READ, align 4
  %59 = call i32* @pOpenColorProfileW(%struct.TYPE_3__* %3, i32 %58, i32 0, i32 0)
  store i32* %59, i32** %4, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = icmp eq i32* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 (...) @GetLastError()
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @PROFILE_READ, align 4
  %66 = load i32, i32* @PROFILE_READWRITE, align 4
  %67 = or i32 %65, %66
  %68 = call i32* @pOpenColorProfileW(%struct.TYPE_3__* %3, i32 %67, i32 0, i32 0)
  store i32* %68, i32** %4, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = icmp eq i32* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i32 (...) @GetLastError()
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @PROFILE_READ, align 4
  %75 = load i32, i32* @OPEN_EXISTING, align 4
  %76 = call i32* @pOpenColorProfileW(%struct.TYPE_3__* %3, i32 %74, i32 0, i32 %75)
  store i32* %76, i32** %4, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = icmp ne i32* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i32 (...) @GetLastError()
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @pCloseColorProfile(i32* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 (...) @GetLastError()
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32* @pOpenColorProfileW(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @pCloseColorProfile(i32*) #1

declare dso_local i32 @lstrlenW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
