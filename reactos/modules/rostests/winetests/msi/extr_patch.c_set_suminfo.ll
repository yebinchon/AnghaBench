; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_patch.c_set_suminfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_patch.c_set_suminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSIDBOPEN_DIRECT = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"failed to open database %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to open summaryinfo %u\0A\00", align 1
@VT_LPSTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Installation Database\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to set summary info %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"WineHQ\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c";1033\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"{E528DDD6-4801-4BEC-BBB6-C5EE0FD097E9}\00", align 1
@VT_I4 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to persist suminfo %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to close suminfo %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"failed to close database %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @set_suminfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_suminfo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @MSIDBOPEN_DIRECT, align 4
  %8 = call i64 @MsiOpenDatabaseW(i32* %6, i32 %7, i32* %5)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @ERROR_SUCCESS, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @MsiGetSummaryInformationA(i32 %15, i32* null, i32 7, i32* %4)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @VT_LPSTR, align 4
  %25 = call i64 @MsiSummaryInfoSetPropertyA(i32 %23, i32 2, i32 %24, i32 0, i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @VT_LPSTR, align 4
  %34 = call i64 @MsiSummaryInfoSetPropertyA(i32 %32, i32 3, i32 %33, i32 0, i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @VT_LPSTR, align 4
  %43 = call i64 @MsiSummaryInfoSetPropertyA(i32 %41, i32 4, i32 %42, i32 0, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @VT_LPSTR, align 4
  %52 = call i64 @MsiSummaryInfoSetPropertyA(i32 %50, i32 7, i32 %51, i32 0, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @ERROR_SUCCESS, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @VT_LPSTR, align 4
  %61 = call i64 @MsiSummaryInfoSetPropertyA(i32 %59, i32 9, i32 %60, i32 0, i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  store i64 %61, i64* %3, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @ERROR_SUCCESS, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @VT_I4, align 4
  %70 = call i64 @MsiSummaryInfoSetPropertyA(i32 %68, i32 14, i32 %69, i32 100, i32* null, i8* null)
  store i64 %70, i64* %3, align 8
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* @ERROR_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %3, align 8
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @VT_I4, align 4
  %79 = call i64 @MsiSummaryInfoSetPropertyA(i32 %77, i32 15, i32 %78, i32 0, i32* null, i8* null)
  store i64 %79, i64* %3, align 8
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* @ERROR_SUCCESS, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* %3, align 8
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* %4, align 4
  %87 = call i64 @MsiSummaryInfoPersist(i32 %86)
  store i64 %87, i64* %3, align 8
  %88 = load i64, i64* %3, align 8
  %89 = load i64, i64* @ERROR_SUCCESS, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %3, align 8
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %92)
  %94 = load i32, i32* %4, align 4
  %95 = call i64 @MsiCloseHandle(i32 %94)
  store i64 %95, i64* %3, align 8
  %96 = load i64, i64* %3, align 8
  %97 = load i64, i64* @ERROR_SUCCESS, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i64, i64* %3, align 8
  %101 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 %100)
  %102 = load i32, i32* %5, align 4
  %103 = call i64 @MsiCloseHandle(i32 %102)
  store i64 %103, i64* %3, align 8
  %104 = load i64, i64* %3, align 8
  %105 = load i64, i64* @ERROR_SUCCESS, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i64, i64* %3, align 8
  %109 = call i32 @ok(i32 %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 %108)
  ret void
}

declare dso_local i64 @MsiOpenDatabaseW(i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @MsiGetSummaryInformationA(i32, i32*, i32, i32*) #1

declare dso_local i64 @MsiSummaryInfoSetPropertyA(i32, i32, i32, i32, i32*, i8*) #1

declare dso_local i64 @MsiSummaryInfoPersist(i32) #1

declare dso_local i64 @MsiCloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
