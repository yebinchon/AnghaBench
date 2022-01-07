; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_set_summary_info.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_set_summary_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Failed to open summaryinfo\0A\00", align 1
@VT_LPSTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Installation Database\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to set summary info\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Wine Hackers\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c";1033,2057\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"{913B8D18-FBB6-4CAC-A239-C74C11E3FA74}\00", align 1
@VT_I4 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to make summary info persist\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Failed to close suminfo\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @set_summary_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_summary_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @MsiGetSummaryInformationA(i32 %5, i32* null, i32 7, i32* %4)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @ERROR_SUCCESS, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @VT_LPSTR, align 4
  %14 = call i64 @MsiSummaryInfoSetPropertyA(i32 %12, i32 2, i32 %13, i32 0, i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @VT_LPSTR, align 4
  %22 = call i64 @MsiSummaryInfoSetPropertyA(i32 %20, i32 3, i32 %21, i32 0, i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @VT_LPSTR, align 4
  %30 = call i64 @MsiSummaryInfoSetPropertyA(i32 %28, i32 4, i32 %29, i32 0, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @VT_LPSTR, align 4
  %38 = call i64 @MsiSummaryInfoSetPropertyA(i32 %36, i32 7, i32 %37, i32 0, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @VT_LPSTR, align 4
  %46 = call i64 @MsiSummaryInfoSetPropertyA(i32 %44, i32 9, i32 %45, i32 0, i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @ERROR_SUCCESS, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @VT_I4, align 4
  %54 = call i64 @MsiSummaryInfoSetPropertyA(i32 %52, i32 14, i32 %53, i32 100, i32* null, i8* null)
  store i64 %54, i64* %3, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* @ERROR_SUCCESS, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @VT_I4, align 4
  %62 = call i64 @MsiSummaryInfoSetPropertyA(i32 %60, i32 15, i32 %61, i32 0, i32* null, i8* null)
  store i64 %62, i64* %3, align 8
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* @ERROR_SUCCESS, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @MsiSummaryInfoPersist(i32 %68)
  store i64 %69, i64* %3, align 8
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* @ERROR_SUCCESS, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @MsiCloseHandle(i32 %75)
  store i64 %76, i64* %3, align 8
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* @ERROR_SUCCESS, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %82 = load i64, i64* %3, align 8
  ret i64 %82
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
