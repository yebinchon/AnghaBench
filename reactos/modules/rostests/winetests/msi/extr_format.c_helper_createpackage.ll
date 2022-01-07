; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_format.c_helper_createpackage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_format.c_helper_createpackage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_ACP = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@MSIDBOPEN_CREATEDIRECT = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to create database %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to commit database %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to open summaryinfo\0A\00", align 1
@VT_LPSTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Installation Database\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to set summary info\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Wine Hackers\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c";1033\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"{913B8D18-FBB6-4CAC-A239-C74C11E3FA74}\00", align 1
@VT_I4 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Failed to make summary info persist\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Failed to close suminfo\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*)* @helper_createpackage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @helper_createpackage(i8* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @DeleteFileA(i8* %12)
  %14 = load i32, i32* @CP_ACP, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @MultiByteToWideChar(i32 %14, i32 0, i8* %15, i32 -1, i32* null, i32 0)
  store i32 %16, i32* %11, align 4
  %17 = call i32 (...) @GetProcessHeap()
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i32* @HeapAlloc(i32 %17, i32 0, i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %25, i64* %3, align 8
  br label %150

26:                                               ; preds = %2
  %27 = load i32, i32* @CP_ACP, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @MultiByteToWideChar(i32 %27, i32 0, i8* %28, i32 -1, i32* %29, i32 %30)
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* @MSIDBOPEN_CREATEDIRECT, align 4
  %34 = call i64 @MsiOpenDatabaseW(i32* %32, i32 %33, i32* %8)
  store i64 %34, i64* %9, align 8
  %35 = call i32 (...) @GetProcessHeap()
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @HeapFree(i32 %35, i32 0, i32* %36)
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %9, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %26
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %3, align 8
  br label %150

49:                                               ; preds = %26
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @MsiDatabaseCommit(i32 %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @ERROR_SUCCESS, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %9, align 8
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @MsiGetSummaryInformationA(i32 %58, i32* null, i32 7, i32* %7)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @ERROR_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @VT_LPSTR, align 4
  %67 = call i64 @MsiSummaryInfoSetPropertyA(i32 %65, i32 2, i32 %66, i32 0, i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @ERROR_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @VT_LPSTR, align 4
  %75 = call i64 @MsiSummaryInfoSetPropertyA(i32 %73, i32 3, i32 %74, i32 0, i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @ERROR_SUCCESS, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @VT_LPSTR, align 4
  %83 = call i64 @MsiSummaryInfoSetPropertyA(i32 %81, i32 4, i32 %82, i32 0, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @ERROR_SUCCESS, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @VT_LPSTR, align 4
  %91 = call i64 @MsiSummaryInfoSetPropertyA(i32 %89, i32 7, i32 %90, i32 0, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* @ERROR_SUCCESS, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @VT_LPSTR, align 4
  %99 = call i64 @MsiSummaryInfoSetPropertyA(i32 %97, i32 9, i32 %98, i32 0, i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* @ERROR_SUCCESS, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @VT_I4, align 4
  %107 = call i64 @MsiSummaryInfoSetPropertyA(i32 %105, i32 14, i32 %106, i32 100, i32* null, i8* null)
  store i64 %107, i64* %9, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* @ERROR_SUCCESS, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @VT_I4, align 4
  %115 = call i64 @MsiSummaryInfoSetPropertyA(i32 %113, i32 15, i32 %114, i32 0, i32* null, i8* null)
  store i64 %115, i64* %9, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* @ERROR_SUCCESS, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %121 = load i32, i32* %7, align 4
  %122 = call i64 @MsiSummaryInfoPersist(i32 %121)
  store i64 %122, i64* %9, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* @ERROR_SUCCESS, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %128 = load i32, i32* %7, align 4
  %129 = call i64 @MsiCloseHandle(i32 %128)
  store i64 %129, i64* %9, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* @ERROR_SUCCESS, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %135 = load i32, i32* %8, align 4
  %136 = call i64 @package_from_db(i32 %135, i32* %6)
  store i64 %136, i64* %9, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i64 @MsiCloseHandle(i32 %137)
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* @ERROR_SUCCESS, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %49
  %143 = load i8*, i8** %4, align 8
  %144 = call i32 @DeleteFileA(i8* %143)
  br label %148

145:                                              ; preds = %49
  %146 = load i32, i32* %6, align 4
  %147 = load i32*, i32** %5, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i64, i64* %9, align 8
  store i64 %149, i64* %3, align 8
  br label %150

150:                                              ; preds = %148, %47, %24
  %151 = load i64, i64* %3, align 8
  ret i64 %151
}

declare dso_local i32 @DeleteFileA(i8*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @MsiOpenDatabaseW(i32*, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @MsiDatabaseCommit(i32) #1

declare dso_local i64 @MsiGetSummaryInformationA(i32, i32*, i32, i32*) #1

declare dso_local i64 @MsiSummaryInfoSetPropertyA(i32, i32, i32, i32, i32*, i8*) #1

declare dso_local i64 @MsiSummaryInfoPersist(i32) #1

declare dso_local i64 @MsiCloseHandle(i32) #1

declare dso_local i64 @package_from_db(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
