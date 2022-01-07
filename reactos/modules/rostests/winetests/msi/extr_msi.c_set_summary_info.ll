; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_set_summary_info.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_set_summary_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Failed to open summaryinfo\0A\00", align 1
@VT_LPSTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Installation Database\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to set summary info\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Wine Hackers\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c";1033\00", align 1
@PID_REVNUMBER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"{A2078D65-94D6-4205-8DEE-F68D6FD622AA}\00", align 1
@VT_I4 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to make summary info persist\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Failed to close suminfo\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @set_summary_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_summary_info(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @MsiGetSummaryInformationA(i32 %7, i32* null, i32 7, i32* %6)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @ERROR_SUCCESS, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @VT_LPSTR, align 4
  %16 = call i64 @MsiSummaryInfoSetPropertyA(i32 %14, i32 2, i32 %15, i32 0, i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @VT_LPSTR, align 4
  %24 = call i64 @MsiSummaryInfoSetPropertyA(i32 %22, i32 3, i32 %23, i32 0, i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @VT_LPSTR, align 4
  %32 = call i64 @MsiSummaryInfoSetPropertyA(i32 %30, i32 4, i32 %31, i32 0, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @VT_LPSTR, align 4
  %40 = call i64 @MsiSummaryInfoSetPropertyA(i32 %38, i32 7, i32 %39, i32 0, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @ERROR_SUCCESS, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PID_REVNUMBER, align 4
  %48 = load i32, i32* @VT_LPSTR, align 4
  %49 = call i64 @MsiSummaryInfoSetPropertyA(i32 %46, i32 %47, i32 %48, i32 0, i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @ERROR_SUCCESS, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @VT_I4, align 4
  %57 = call i64 @MsiSummaryInfoSetPropertyA(i32 %55, i32 14, i32 %56, i32 100, i32* null, i8* null)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @ERROR_SUCCESS, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @VT_I4, align 4
  %65 = call i64 @MsiSummaryInfoSetPropertyA(i32 %63, i32 15, i32 %64, i32 0, i32* null, i8* null)
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @ERROR_SUCCESS, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @MsiSummaryInfoPersist(i32 %71)
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @ERROR_SUCCESS, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @MsiCloseHandle(i32 %78)
  store i64 %79, i64* %5, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @ERROR_SUCCESS, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %85 = load i64, i64* %5, align 8
  ret i64 %85
}

declare dso_local i64 @MsiGetSummaryInformationA(i32, i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @MsiSummaryInfoSetPropertyA(i32, i32, i32, i32, i32*, i8*) #1

declare dso_local i64 @MsiSummaryInfoPersist(i32) #1

declare dso_local i64 @MsiCloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
