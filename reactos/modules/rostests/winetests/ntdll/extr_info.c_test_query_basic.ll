; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_basic.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Check nonexistent info class\0A\00", align 1
@STATUS_INVALID_INFO_CLASS = common dso_local global i64 0, align 8
@STATUS_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"Expected STATUS_INVALID_INFO_CLASS or STATUS_NOT_IMPLEMENTED, got %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Check zero-length buffer\0A\00", align 1
@SystemBasicInformation = common dso_local global i32 0, align 4
@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Check no SystemInformation buffer\0A\00", align 1
@STATUS_ACCESS_VIOLATION = common dso_local global i64 0, align 8
@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [72 x i8] c"Expected STATUS_ACCESS_VIOLATION or STATUS_INVALID_PARAMETER, got %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Check no ReturnLength pointer\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"Expected STATUS_SUCCESS, got %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Check a too large buffer size\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Check with correct parameters\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Inconsistent length %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Number of Processors : %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Expected more than 0 processors, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_query_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_query_basic() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %5 = call i64 @pNtQuerySystemInformation(i32 -1, %struct.TYPE_3__* null, i32 0, i32* null)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @STATUS_INVALID_INFO_CLASS, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @STATUS_NOT_IMPLEMENTED, align 8
  %12 = icmp eq i64 %10, %11
  br label %13

13:                                               ; preds = %9, %0
  %14 = phi i1 [ true, %0 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %1, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @SystemBasicInformation, align 4
  %21 = call i64 @pNtQuerySystemInformation(i32 %20, %struct.TYPE_3__* null, i32 0, i32* null)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @STATUS_INFO_LENGTH_MISMATCH, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %1, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %30 = load i32, i32* @SystemBasicInformation, align 4
  %31 = call i64 @pNtQuerySystemInformation(i32 %30, %struct.TYPE_3__* null, i32 4, i32* null)
  store i64 %31, i64* %1, align 8
  %32 = load i64, i64* %1, align 8
  %33 = load i64, i64* @STATUS_ACCESS_VIOLATION, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %13
  %36 = load i64, i64* %1, align 8
  %37 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %35, %13
  %40 = phi i1 [ true, %13 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %1, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  %45 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %46 = load i32, i32* @SystemBasicInformation, align 4
  %47 = call i64 @pNtQuerySystemInformation(i32 %46, %struct.TYPE_3__* %3, i32 4, i32* null)
  store i64 %47, i64* %1, align 8
  %48 = load i64, i64* %1, align 8
  %49 = load i64, i64* @STATUS_SUCCESS, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %1, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %53)
  %55 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %56 = load i32, i32* @SystemBasicInformation, align 4
  %57 = call i64 @pNtQuerySystemInformation(i32 %56, %struct.TYPE_3__* %3, i32 8, i32* %2)
  store i64 %57, i64* %1, align 8
  %58 = load i64, i64* %1, align 8
  %59 = load i64, i64* @STATUS_INFO_LENGTH_MISMATCH, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %1, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %66 = load i32, i32* @SystemBasicInformation, align 4
  %67 = call i64 @pNtQuerySystemInformation(i32 %66, %struct.TYPE_3__* %3, i32 4, i32* %2)
  store i64 %67, i64* %1, align 8
  %68 = load i64, i64* %1, align 8
  %69 = load i64, i64* @STATUS_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %1, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %2, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp eq i64 4, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %89)
  ret void
}

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i64 @pNtQuerySystemInformation(i32, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
