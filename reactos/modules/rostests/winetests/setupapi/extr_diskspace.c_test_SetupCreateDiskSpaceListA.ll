; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_diskspace.c_test_SetupCreateDiskSpaceListA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_diskspace.c_test_SetupCreateDiskSpaceListA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [71 x i8] c"Expected SetupCreateDiskSpaceListA to return a valid handle, got NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Expected SetupDestroyDiskSpaceList to succeed\0A\00", align 1
@SPDSL_IGNORE_DISK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Expected SetupCreateDiskSpaceListA to return NULL, got %p\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetupCreateDiskSpaceListA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetupCreateDiskSpaceListA() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* @SetupCreateDiskSpaceListA(i8* null, i32 0, i32 0)
  store i32* %2, i32** %1, align 8
  %3 = load i32*, i32** %1, align 8
  %4 = icmp ne i32* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 (i32, i8*, ...) @ok(i32 %5, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @SetupDestroyDiskSpaceList(i32* %7)
  %9 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @SPDSL_IGNORE_DISK, align 4
  %11 = call i32* @SetupCreateDiskSpaceListA(i8* null, i32 0, i32 %10)
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @SetupDestroyDiskSpaceList(i32* %16)
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @SetLastError(i32 -559038737)
  %20 = call i32* @SetupCreateDiskSpaceListA(i8* null, i32 0, i32 -1)
  store i32* %20, i32** %1, align 8
  %21 = load i32*, i32** %1, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %0
  %24 = load i32*, i32** %1, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 @broken(i32 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %23, %0
  %30 = phi i1 [ true, %0 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32* %32)
  %34 = load i32*, i32** %1, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = call i32 (...) @GetLastError()
  %38 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 (...) @GetLastError()
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  br label %47

43:                                               ; preds = %29
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @SetupDestroyDiskSpaceList(i32* %44)
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %36
  %48 = call i32 @SetLastError(i32 -559038737)
  %49 = call i32* @SetupCreateDiskSpaceListA(i8* null, i32 -559038737, i32 0)
  store i32* %49, i32** %1, align 8
  %50 = load i32*, i32** %1, align 8
  %51 = icmp eq i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32* %53)
  %55 = call i32 (...) @GetLastError()
  %56 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %47
  %59 = call i32 (...) @GetLastError()
  %60 = icmp eq i32 %59, -559038737
  %61 = zext i1 %60 to i32
  %62 = call i64 @broken(i32 %61)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %58, %47
  %65 = phi i1 [ true, %47 ], [ %63, %58 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 (...) @GetLastError()
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = call i32 @SetLastError(i32 -559038737)
  %70 = call i32* @SetupCreateDiskSpaceListA(i8* inttoptr (i64 3735928559 to i8*), i32 0, i32 0)
  store i32* %70, i32** %1, align 8
  %71 = load i32*, i32** %1, align 8
  %72 = icmp eq i32* %71, null
  %73 = zext i1 %72 to i32
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32* %74)
  %76 = call i32 (...) @GetLastError()
  %77 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %64
  %80 = call i32 (...) @GetLastError()
  %81 = icmp eq i32 %80, -559038737
  %82 = zext i1 %81 to i32
  %83 = call i64 @broken(i32 %82)
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %79, %64
  %86 = phi i1 [ true, %64 ], [ %84, %79 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 (...) @GetLastError()
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = call i32 @SetLastError(i32 -559038737)
  %91 = call i32* @SetupCreateDiskSpaceListA(i8* inttoptr (i64 3735928559 to i8*), i32 -559038737, i32 0)
  store i32* %91, i32** %1, align 8
  %92 = load i32*, i32** %1, align 8
  %93 = icmp eq i32* %92, null
  %94 = zext i1 %93 to i32
  %95 = load i32*, i32** %1, align 8
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32* %95)
  %97 = call i32 (...) @GetLastError()
  %98 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %85
  %101 = call i32 (...) @GetLastError()
  %102 = icmp eq i32 %101, -559038737
  %103 = zext i1 %102 to i32
  %104 = call i64 @broken(i32 %103)
  %105 = icmp ne i64 %104, 0
  br label %106

106:                                              ; preds = %100, %85
  %107 = phi i1 [ true, %85 ], [ %105, %100 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 (...) @GetLastError()
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  ret void
}

declare dso_local i32* @SetupCreateDiskSpaceListA(i8*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SetupDestroyDiskSpaceList(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
