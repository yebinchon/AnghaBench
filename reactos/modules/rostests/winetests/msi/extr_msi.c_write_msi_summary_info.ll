; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_write_msi_summary_info.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_write_msi_summary_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %u\0A\00", align 1
@PID_TEMPLATE = common dso_local global i32 0, align 4
@VT_LPSTR = common dso_local global i32 0, align 4
@PID_REVNUMBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"{004757CA-5092-49C2-AD20-28E1CE0DF5F2}\00", align 1
@PID_PAGECOUNT = common dso_local global i32 0, align 4
@VT_I4 = common dso_local global i32 0, align 4
@PID_WORDCOUNT = common dso_local global i32 0, align 4
@PID_TITLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"MSITEST\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @write_msi_summary_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_msi_summary_info(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @MsiGetSummaryInformationA(i32 %11, i32* null, i32 5, i32* %9)
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @PID_TEMPLATE, align 4
  %21 = load i32, i32* @VT_LPSTR, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @MsiSummaryInfoSetPropertyA(i32 %19, i32 %20, i32 %21, i32 0, i32* null, i8* %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @PID_REVNUMBER, align 4
  %32 = load i32, i32* @VT_LPSTR, align 4
  %33 = call i64 @MsiSummaryInfoSetPropertyA(i32 %30, i32 %31, i32 %32, i32 0, i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @ERROR_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @PID_PAGECOUNT, align 4
  %42 = load i32, i32* @VT_I4, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @MsiSummaryInfoSetPropertyA(i32 %40, i32 %41, i32 %42, i32 %43, i32* null, i8* null)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @ERROR_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @PID_WORDCOUNT, align 4
  %53 = load i32, i32* @VT_I4, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @MsiSummaryInfoSetPropertyA(i32 %51, i32 %52, i32 %53, i32 %54, i32* null, i8* null)
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @ERROR_SUCCESS, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @PID_TITLE, align 4
  %64 = load i32, i32* @VT_LPSTR, align 4
  %65 = call i64 @MsiSummaryInfoSetPropertyA(i32 %62, i32 %63, i32 %64, i32 0, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @ERROR_SUCCESS, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @MsiSummaryInfoPersist(i32 %72)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* @ERROR_SUCCESS, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @MsiCloseHandle(i32 %80)
  ret void
}

declare dso_local i64 @MsiGetSummaryInformationA(i32, i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @MsiSummaryInfoSetPropertyA(i32, i32, i32, i32, i32*, i8*) #1

declare dso_local i64 @MsiSummaryInfoPersist(i32) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
