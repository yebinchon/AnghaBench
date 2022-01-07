; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_InitFunctionPtrs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_InitFunctionPtrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"ntdll.dll\00", align 1
@hntdll = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"LoadLibrary failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"RtlUnicodeStringToAnsiString\00", align 1
@pRtlUnicodeStringToAnsiString = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"RtlFreeAnsiString\00", align 1
@pRtlFreeAnsiString = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"RtlCreateUnicodeStringFromAsciiz\00", align 1
@pRtlCreateUnicodeStringFromAsciiz = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"RtlFreeUnicodeString\00", align 1
@pRtlFreeUnicodeString = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"atoi\00", align 1
@patoi = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"atol\00", align 1
@patol = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"_atoi64\00", align 1
@p_atoi64 = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"_itoa\00", align 1
@p_itoa = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"_ltoa\00", align 1
@p_ltoa = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"_ultoa\00", align 1
@p_ultoa = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"_i64toa\00", align 1
@p_i64toa = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"_ui64toa\00", align 1
@p_ui64toa = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"_wtoi\00", align 1
@p_wtoi = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"_wtol\00", align 1
@p_wtol = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"_wtoi64\00", align 1
@p_wtoi64 = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"_itow\00", align 1
@p_itow = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"_ltow\00", align 1
@p_ltow = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [7 x i8] c"_ultow\00", align 1
@p_ultow = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c"_i64tow\00", align 1
@p_i64tow = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c"_ui64tow\00", align 1
@p_ui64tow = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [8 x i8] c"_wcslwr\00", align 1
@p_wcslwr = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [8 x i8] c"_wcsupr\00", align 1
@p_wcsupr = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [7 x i8] c"wcschr\00", align 1
@p_wcschr = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [8 x i8] c"wcsrchr\00", align 1
@p_wcsrchr = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [6 x i8] c"qsort\00", align 1
@p_qsort = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [8 x i8] c"bsearch\00", align 1
@p_bsearch = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [10 x i8] c"_snprintf\00", align 1
@p__snprintf = common dso_local global i8* null, align 8
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
  br i1 %7, label %8, label %90

8:                                                ; preds = %0
  %9 = load i64, i64* @hntdll, align 8
  %10 = call i64 @GetProcAddress(i64 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @pRtlUnicodeStringToAnsiString, align 8
  %12 = load i64, i64* @hntdll, align 8
  %13 = call i64 @GetProcAddress(i64 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** @pRtlFreeAnsiString, align 8
  %15 = load i64, i64* @hntdll, align 8
  %16 = call i64 @GetProcAddress(i64 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** @pRtlCreateUnicodeStringFromAsciiz, align 8
  %18 = load i64, i64* @hntdll, align 8
  %19 = call i64 @GetProcAddress(i64 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** @pRtlFreeUnicodeString, align 8
  %21 = load i64, i64* @hntdll, align 8
  %22 = call i64 @GetProcAddress(i64 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** @patoi, align 8
  %24 = load i64, i64* @hntdll, align 8
  %25 = call i64 @GetProcAddress(i64 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** @patol, align 8
  %27 = load i64, i64* @hntdll, align 8
  %28 = call i64 @GetProcAddress(i64 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** @p_atoi64, align 8
  %30 = load i64, i64* @hntdll, align 8
  %31 = call i64 @GetProcAddress(i64 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** @p_itoa, align 8
  %33 = load i64, i64* @hntdll, align 8
  %34 = call i64 @GetProcAddress(i64 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** @p_ltoa, align 8
  %36 = load i64, i64* @hntdll, align 8
  %37 = call i64 @GetProcAddress(i64 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** @p_ultoa, align 8
  %39 = load i64, i64* @hntdll, align 8
  %40 = call i64 @GetProcAddress(i64 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** @p_i64toa, align 8
  %42 = load i64, i64* @hntdll, align 8
  %43 = call i64 @GetProcAddress(i64 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** @p_ui64toa, align 8
  %45 = load i64, i64* @hntdll, align 8
  %46 = call i64 @GetProcAddress(i64 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** @p_wtoi, align 8
  %48 = load i64, i64* @hntdll, align 8
  %49 = call i64 @GetProcAddress(i64 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** @p_wtol, align 8
  %51 = load i64, i64* @hntdll, align 8
  %52 = call i64 @GetProcAddress(i64 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** @p_wtoi64, align 8
  %54 = load i64, i64* @hntdll, align 8
  %55 = call i64 @GetProcAddress(i64 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** @p_itow, align 8
  %57 = load i64, i64* @hntdll, align 8
  %58 = call i64 @GetProcAddress(i64 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %59 = inttoptr i64 %58 to i8*
  store i8* %59, i8** @p_ltow, align 8
  %60 = load i64, i64* @hntdll, align 8
  %61 = call i64 @GetProcAddress(i64 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** @p_ultow, align 8
  %63 = load i64, i64* @hntdll, align 8
  %64 = call i64 @GetProcAddress(i64 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** @p_i64tow, align 8
  %66 = load i64, i64* @hntdll, align 8
  %67 = call i64 @GetProcAddress(i64 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  %68 = inttoptr i64 %67 to i8*
  store i8* %68, i8** @p_ui64tow, align 8
  %69 = load i64, i64* @hntdll, align 8
  %70 = call i64 @GetProcAddress(i64 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** @p_wcslwr, align 8
  %72 = load i64, i64* @hntdll, align 8
  %73 = call i64 @GetProcAddress(i64 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** @p_wcsupr, align 8
  %75 = load i64, i64* @hntdll, align 8
  %76 = call i64 @GetProcAddress(i64 %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %77 = inttoptr i64 %76 to i8*
  store i8* %77, i8** @p_wcschr, align 8
  %78 = load i64, i64* @hntdll, align 8
  %79 = call i64 @GetProcAddress(i64 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** @p_wcsrchr, align 8
  %81 = load i64, i64* @hntdll, align 8
  %82 = call i64 @GetProcAddress(i64 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  %83 = inttoptr i64 %82 to i8*
  store i8* %83, i8** @p_qsort, align 8
  %84 = load i64, i64* @hntdll, align 8
  %85 = call i64 @GetProcAddress(i64 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** @p_bsearch, align 8
  %87 = load i64, i64* @hntdll, align 8
  %88 = call i64 @GetProcAddress(i64 %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  %89 = inttoptr i64 %88 to i8*
  store i8* %89, i8** @p__snprintf, align 8
  br label %90

90:                                               ; preds = %8, %0
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
