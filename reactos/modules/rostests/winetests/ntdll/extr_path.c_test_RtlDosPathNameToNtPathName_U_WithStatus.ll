; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_path.c_test_RtlDosPathNameToNtPathName_U_WithStatus.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_path.c_test_RtlDosPathNameToNtPathName_U_WithStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_RtlDosPathNameToNtPathName_U_WithStatus.emptyW = internal constant [1 x i32] zeroinitializer, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed convert to nt path, %#x.\0A\00", align 1
@STATUS_OBJECT_NAME_INVALID = common dso_local global i64 0, align 8
@STATUS_OBJECT_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Unexpected status %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlDosPathNameToNtPathName_U_WithStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlDosPathNameToNtPathName_U_WithStatus() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i32, i32* @MAX_PATH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i32, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = call i32 @GetCurrentDirectoryW(i32 %9, i32* %8)
  %11 = call i64 @pRtlDosPathNameToNtPathName_U_WithStatus(i32* %8, i32* %3, i32* null, i32* null)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = call i64 @pRtlDosPathNameToNtPathName_U_WithStatus(i32* null, i32* %3, i32* null, i32* null)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @STATUS_OBJECT_NAME_INVALID, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %0
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @STATUS_OBJECT_PATH_NOT_FOUND, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @broken(i32 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %22, %0
  %30 = phi i1 [ true, %0 ], [ %28, %22 ]
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = call i64 @pRtlDosPathNameToNtPathName_U_WithStatus(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @test_RtlDosPathNameToNtPathName_U_WithStatus.emptyW, i64 0, i64 0), i32* %3, i32* null, i32* null)
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @STATUS_OBJECT_NAME_INVALID, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %29
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @STATUS_OBJECT_PATH_NOT_FOUND, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @broken(i32 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %38, %29
  %46 = phi i1 [ true, %29 ], [ %44, %38 ]
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = call i32 @RtlFreeUnicodeString(i32* %3)
  %51 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %51)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetCurrentDirectoryW(i32, i32*) #2

declare dso_local i64 @pRtlDosPathNameToNtPathName_U_WithStatus(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @RtlFreeUnicodeString(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
