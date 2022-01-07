; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_automation.c_create_database.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_automation.c_create_database.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@CP_ACP = common dso_local global i32 0, align 4
@MSIDBOPEN_CREATE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %u\0A\00", align 1
@CURR_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32, i32*, i32)* @create_database to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_database(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* @CP_ACP, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @MultiByteToWideChar(i32 %17, i32 0, i32* %18, i32 -1, i32* null, i32 0)
  store i32 %19, i32* %15, align 4
  %20 = call i32 (...) @GetProcessHeap()
  %21 = load i32, i32* %15, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call i32* @HeapAlloc(i32 %20, i32 0, i32 %24)
  store i32* %25, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  br label %103

28:                                               ; preds = %5
  %29 = load i32, i32* @CP_ACP, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @MultiByteToWideChar(i32 %29, i32 0, i32* %30, i32 -1, i32* %31, i32 %32)
  %34 = load i32*, i32** %13, align 8
  %35 = load i32, i32* @MSIDBOPEN_CREATE, align 4
  %36 = call i64 @MsiOpenDatabaseW(i32* %34, i32 %35, i32* %11)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @ERROR_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %41)
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %82, %28
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %85

47:                                               ; preds = %43
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %16, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 1
  %64 = trunc i64 %63 to i32
  %65 = call i32 @write_file(i32 %54, i32 %57, i32 %64)
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @CURR_DIR, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @MsiDatabaseImportA(i32 %66, i32 %67, i32 %70)
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @ERROR_SUCCESS, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @DeleteFileA(i32 %80)
  br label %82

82:                                               ; preds = %47
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %43

85:                                               ; preds = %43
  %86 = load i32, i32* %11, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @write_msi_summary_info(i32 %86, i32* %87, i32 %88)
  %90 = load i32, i32* %11, align 4
  %91 = call i64 @MsiDatabaseCommit(i32 %90)
  store i64 %91, i64* %12, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* @ERROR_SUCCESS, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %96)
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @MsiCloseHandle(i32 %98)
  %100 = call i32 (...) @GetProcessHeap()
  %101 = load i32*, i32** %13, align 8
  %102 = call i32 @HeapFree(i32 %100, i32 0, i32* %101)
  br label %103

103:                                              ; preds = %85, %27
  ret void
}

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @MsiOpenDatabaseW(i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @write_file(i32, i32, i32) #1

declare dso_local i64 @MsiDatabaseImportA(i32, i32, i32) #1

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i32 @write_msi_summary_info(i32, i32*, i32) #1

declare dso_local i64 @MsiDatabaseCommit(i32) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
