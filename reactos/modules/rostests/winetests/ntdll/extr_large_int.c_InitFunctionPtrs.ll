; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_large_int.c_InitFunctionPtrs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_large_int.c_InitFunctionPtrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"ntdll.dll\00", align 1
@hntdll = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"LoadLibrary failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"RtlExtendedMagicDivide\00", align 1
@pRtlExtendedMagicDivide = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"RtlFreeAnsiString\00", align 1
@pRtlFreeAnsiString = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"RtlInt64ToUnicodeString\00", align 1
@pRtlInt64ToUnicodeString = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"RtlLargeIntegerToChar\00", align 1
@pRtlLargeIntegerToChar = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"RtlUnicodeStringToAnsiString\00", align 1
@pRtlUnicodeStringToAnsiString = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"_alldvrm\00", align 1
@p_alldvrm = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"_aulldvrm\00", align 1
@p_aulldvrm = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InitFunctionPtrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitFunctionPtrs() #0 {
  %1 = call i64 @LoadLibraryA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i64 %1, i64* @hntdll, align 8
  %2 = load i64, i64* @hntdll, align 8
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i32
  %5 = call i32 @ok(i32 %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i64, i64* @hntdll, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %0
  %9 = load i64, i64* @hntdll, align 8
  %10 = call i64 @GetProcAddress(i64 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @pRtlExtendedMagicDivide, align 8
  %12 = load i64, i64* @hntdll, align 8
  %13 = call i64 @GetProcAddress(i64 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** @pRtlFreeAnsiString, align 8
  %15 = load i64, i64* @hntdll, align 8
  %16 = call i64 @GetProcAddress(i64 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** @pRtlInt64ToUnicodeString, align 8
  %18 = load i64, i64* @hntdll, align 8
  %19 = call i64 @GetProcAddress(i64 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** @pRtlLargeIntegerToChar, align 8
  %21 = load i64, i64* @hntdll, align 8
  %22 = call i64 @GetProcAddress(i64 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** @pRtlUnicodeStringToAnsiString, align 8
  %24 = load i64, i64* @hntdll, align 8
  %25 = call i64 @GetProcAddress(i64 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** @p_alldvrm, align 8
  %27 = load i64, i64* @hntdll, align 8
  %28 = call i64 @GetProcAddress(i64 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** @p_aulldvrm, align 8
  br label %30

30:                                               ; preds = %8, %0
  ret void
}

declare dso_local i64 @LoadLibraryA(i8*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @GetProcAddress(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
