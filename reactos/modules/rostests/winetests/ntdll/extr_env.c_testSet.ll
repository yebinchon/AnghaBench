; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_env.c_testSet.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_env.c_testSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Creating environment\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dog\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"horse\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"zz\00", align 1
@STATUS_VARIABLE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"meouw\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"me=too\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"also\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"too=also\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"=too\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"zork%03d\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"is alive\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"fOo\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Destroying environment\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testSet() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i8], align 16
  %3 = alloca i32, align 4
  %4 = load i32, i32* @FALSE, align 4
  %5 = call i64 @pRtlCreateEnvironment(i32 %4, i32* %1)
  %6 = load i64, i64* @STATUS_SUCCESS, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* @STATUS_SUCCESS, align 8
  %11 = call i32 @testSetHelper(i32* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %10, i32 0)
  %12 = load i64, i64* @STATUS_SUCCESS, align 8
  %13 = call i32 @testSetHelper(i32* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %12, i32 0)
  %14 = load i64, i64* @STATUS_SUCCESS, align 8
  %15 = call i32 @testSetHelper(i32* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %14, i32 0)
  %16 = load i64, i64* @STATUS_SUCCESS, align 8
  %17 = call i32 @testSetHelper(i32* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* null, i64 %16, i32 0)
  %18 = load i64, i64* @STATUS_SUCCESS, align 8
  %19 = load i32, i32* @STATUS_VARIABLE_NOT_FOUND, align 4
  %20 = call i32 @testSetHelper(i32* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* null, i64 %18, i32 %19)
  %21 = load i64, i64* @STATUS_SUCCESS, align 8
  %22 = call i32 @testSetHelper(i32* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %21, i32 0)
  %23 = load i64, i64* @STATUS_SUCCESS, align 8
  %24 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %25 = call i32 @testSetHelper(i32* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %23, i32 %24)
  %26 = load i64, i64* @STATUS_SUCCESS, align 8
  %27 = call i32 @testSetHelper(i32* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i64 %26, i32 0)
  %28 = load i64, i64* @STATUS_SUCCESS, align 8
  %29 = call i32 @testSetHelper(i32* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %28, i32 0)
  %30 = load i64, i64* @STATUS_SUCCESS, align 8
  %31 = call i32 @testSetHelper(i32* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %30, i32 0)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %42, %0
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 128
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %40 = load i64, i64* @STATUS_SUCCESS, align 8
  %41 = call i32 @testSetHelper(i32* %1, i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i64 %40, i32 0)
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %32

45:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %56, %45
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %47, 128
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @sprintf(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %54 = load i64, i64* @STATUS_SUCCESS, align 8
  %55 = call i32 @testSetHelper(i32* %1, i8* %53, i8* null, i64 %54, i32 0)
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %46

59:                                               ; preds = %46
  %60 = load i64, i64* @STATUS_SUCCESS, align 8
  %61 = call i32 @testSetHelper(i32* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* null, i64 %60, i32 0)
  %62 = load i32, i32* %1, align 4
  %63 = call i64 @pRtlDestroyEnvironment(i32 %62)
  %64 = load i64, i64* @STATUS_SUCCESS, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @pRtlCreateEnvironment(i32, i32*) #1

declare dso_local i32 @testSetHelper(i32*, i8*, i8*, i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @pRtlDestroyEnvironment(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
