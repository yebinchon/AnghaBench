; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_layerapi.c_test_AllowPermLayer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_layerapi.c_test_AllowPermLayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Expected AllowPermLayer to fail for NULL\0A\00", align 1
@g_WinVersion = common dso_local global i64 0, align 8
@WINVER_WIN8 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"-:\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Expected AllowPermLayer to succeed\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"@:\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"4:\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"*:\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"*a\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Expected AllowPermLayer to fail\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"*\\\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%c:\\\00", align 1
@DRIVE_REMOTE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [43 x i8] c"Expected AllowPermLayer to be %d for %c:\\\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_AllowPermLayer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_AllowPermLayer() #0 {
  %1 = alloca [20 x i8], align 16
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  %4 = call i32 @pAllowPermLayer(i32* null)
  %5 = load i32, i32* @FALSE, align 4
  %6 = icmp eq i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 (i32, i8*, ...) @ok(i32 %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* @g_WinVersion, align 8
  %10 = load i64, i64* @WINVER_WIN8, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %0
  %13 = call i32 @wrapAllowPermLayer(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @wrapAllowPermLayer(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @wrapAllowPermLayer(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @wrapAllowPermLayer(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %12, %0
  %22 = call i32 @wrapAllowPermLayer(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %23 = load i32, i32* @FALSE, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %27 = call i32 @wrapAllowPermLayer(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %28 = load i32, i32* @FALSE, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  store i8 97, i8* %2, align 1
  br label %32

32:                                               ; preds = %57, %21
  %33 = load i8, i8* %2, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sle i32 %34, 122
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %38 = load i8, i8* %2, align 1
  %39 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8 signext %38)
  %40 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %41 = call i64 @GetDriveTypeA(i8* %40)
  store i64 %41, i64* %3, align 8
  %42 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %43 = call i32 @wrapAllowPermLayer(i8* %42)
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @DRIVE_REMOTE, align 8
  %46 = icmp ne i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = icmp eq i32 %43, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* @DRIVE_REMOTE, align 8
  %52 = icmp ne i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i8, i8* %2, align 1
  %55 = sext i8 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %36
  %58 = load i8, i8* %2, align 1
  %59 = add i8 %58, 1
  store i8 %59, i8* %2, align 1
  br label %32

60:                                               ; preds = %32
  ret void
}

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pAllowPermLayer(i32*) #1

declare dso_local i32 @wrapAllowPermLayer(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext) #1

declare dso_local i64 @GetDriveTypeA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
