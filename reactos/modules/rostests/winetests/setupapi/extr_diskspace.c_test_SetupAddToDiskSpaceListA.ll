; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_diskspace.c_test_SetupAddToDiskSpaceListA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_diskspace.c_test_SetupAddToDiskSpaceListA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"C:\\some-file.dat\00", align 1
@FILEOP_COPY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Expected SetupAddToDiskSpaceListA to return FALSE, got %d\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"Expected GetLastError() to return ERROR_INVALID_HANDLE, got %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Expected SetupCreateDiskSpaceListA to return a valid handle\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Expected SetupAddToDiskSpaceListA to succeed\0A\00", align 1
@FILEOP_RENAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Expected SetupAddToDiskSpaceListA to return FALSE\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [67 x i8] c"Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Expected SetupDestroyDiskSpaceList to succeed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetupAddToDiskSpaceListA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetupAddToDiskSpaceListA() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @FILEOP_COPY, align 4
  %4 = call i32 @SetupAddToDiskSpaceListA(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0, i32 %3, i32 0, i32 0)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* %2, align 4
  %10 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = call i32 (...) @GetLastError()
  %12 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 (...) @GetLastError()
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = call i32* @SetupCreateDiskSpaceListA(i32* null, i32 0, i32 0)
  store i32* %17, i32** %1, align 8
  %18 = load i32*, i32** %1, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %22 = load i32*, i32** %1, align 8
  %23 = load i32, i32* @FILEOP_COPY, align 4
  %24 = call i32 @SetupAddToDiskSpaceListA(i32* %22, i8* null, i32 0, i32 %23, i32 0, i32 0)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %0
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @broken(i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %27, %0
  %35 = phi i1 [ true, %0 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %38 = load i32*, i32** %1, align 8
  %39 = load i32, i32* @FILEOP_COPY, align 4
  %40 = call i32 @SetupAddToDiskSpaceListA(i32* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 -20, i32 %39, i32 0, i32 0)
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32*, i32** %1, align 8
  %44 = load i32, i32* @FILEOP_RENAME, align 4
  %45 = call i32 @SetupAddToDiskSpaceListA(i32* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0, i32 %44, i32 0, i32 0)
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %51 = call i32 (...) @GetLastError()
  %52 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 (...) @GetLastError()
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %1, align 8
  %58 = load i32, i32* @FILEOP_RENAME, align 4
  %59 = call i32 @SetupAddToDiskSpaceListA(i32* %57, i8* null, i32 0, i32 %58, i32 0, i32 0)
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* %2, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %34
  %63 = load i32, i32* %2, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i64 @broken(i32 %66)
  %68 = icmp ne i64 %67, 0
  br label %69

69:                                               ; preds = %62, %34
  %70 = phi i1 [ true, %34 ], [ %68, %62 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* @FILEOP_RENAME, align 4
  %74 = call i32 @SetupAddToDiskSpaceListA(i32* null, i8* null, i32 0, i32 %73, i32 0, i32 0)
  store i32 %74, i32* %2, align 4
  %75 = load i32, i32* %2, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %2, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i64 @broken(i32 %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %77, %69
  %85 = phi i1 [ true, %69 ], [ %83, %77 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i32*, i32** %1, align 8
  %89 = call i32 @SetupDestroyDiskSpaceList(i32* %88)
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SetupAddToDiskSpaceListA(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @SetupCreateDiskSpaceListA(i32*, i32, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @SetupDestroyDiskSpaceList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
