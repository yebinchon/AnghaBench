; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/win/basesrv/extr_dosdev.c_CheckForGlobalDriveLetter.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/win/basesrv/extr_dosdev.c_CheckForGlobalDriveLetter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i32] [i32 92, i32 63, i32 63, i32 92, i32 88, i32 58, i32 0], align 4
@UNICODE_NULL = common dso_local global i64 0, align 8
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SYMBOLIC_LINK_QUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckForGlobalDriveLetter(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [8 x i64], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %10 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0
  %11 = call i32 @wcsncpy(i64* %10, i8* bitcast ([7 x i32]* @.str to i8*), i32 3)
  %12 = load i64, i64* %3, align 8
  %13 = add nsw i64 %12, 65
  %14 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4
  store i64 %13, i64* %14, align 16
  %15 = load i64, i64* @UNICODE_NULL, align 8
  %16 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6
  store i64 %15, i64* %16, align 16
  %17 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0
  %18 = call i32 @RtlInitUnicodeString(i32* %7, i64* %17)
  %19 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %20 = call i32 @InitializeObjectAttributes(i32* %9, i32* %7, i32 %19, i32* null, i32* null)
  %21 = call i32 @CsrImpersonateClient(i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %2, align 4
  br label %46

25:                                               ; preds = %1
  %26 = load i32, i32* @SYMBOLIC_LINK_QUERY, align 4
  %27 = call i32 @NtOpenSymbolicLinkObject(i32* %8, i32 %26, i32* %9)
  store i32 %27, i32* %5, align 4
  %28 = call i32 (...) @CsrRevertToSelf()
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @NT_SUCCESS(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %2, align 4
  br label %46

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @IsGlobalSymbolicLink(i32 %35, i32* %6)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @NtClose(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @NT_SUCCESS(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %42, %32, %23
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @wcsncpy(i64*, i8*, i32) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i64*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @CsrImpersonateClient(i32*) #1

declare dso_local i32 @NtOpenSymbolicLinkObject(i32*, i32, i32*) #1

declare dso_local i32 @CsrRevertToSelf(...) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @IsGlobalSymbolicLink(i32, i32*) #1

declare dso_local i32 @NtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
