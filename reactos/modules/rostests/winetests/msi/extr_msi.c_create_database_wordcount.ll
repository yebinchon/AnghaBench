; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_create_database_wordcount.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_create_database_wordcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@CP_ACP = common dso_local global i32 0, align 4
@MSIDBOPEN_CREATE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %u\0A\00", align 1
@CURR_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32, i32, i32, i8*)* @create_database_wordcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_database_wordcount(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %19 = load i32, i32* @CP_ACP, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @MultiByteToWideChar(i32 %19, i32 0, i32* %20, i32 -1, i32* null, i32 0)
  store i32 %21, i32* %17, align 4
  %22 = call i32 (...) @GetProcessHeap()
  %23 = load i32, i32* %17, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i32* @HeapAlloc(i32 %22, i32 0, i32 %26)
  store i32* %27, i32** %15, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %6
  br label %106

30:                                               ; preds = %6
  %31 = load i32, i32* @CP_ACP, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* %17, align 4
  %35 = call i32 @MultiByteToWideChar(i32 %31, i32 0, i32* %32, i32 -1, i32* %33, i32 %34)
  %36 = load i32*, i32** %15, align 8
  %37 = load i32, i32* @MSIDBOPEN_CREATE, align 4
  %38 = call i64 @MsiOpenDatabaseW(i32* %36, i32 %37, i32* %13)
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %43)
  store i32 0, i32* %16, align 4
  br label %45

45:                                               ; preds = %84, %30
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %87

49:                                               ; preds = %45
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %18, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 1
  %66 = trunc i64 %65 to i32
  %67 = call i32 @write_file(i32 %56, i32 %59, i32 %66)
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @CURR_DIR, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @MsiDatabaseImportA(i32 %68, i32 %69, i32 %72)
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* @ERROR_SUCCESS, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %14, align 8
  %79 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @DeleteFileA(i32 %82)
  br label %84

84:                                               ; preds = %49
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  br label %45

87:                                               ; preds = %45
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @write_msi_summary_info(i32 %88, i32 %89, i32 %90, i8* %91)
  %93 = load i32, i32* %13, align 4
  %94 = call i64 @MsiDatabaseCommit(i32 %93)
  store i64 %94, i64* %14, align 8
  %95 = load i64, i64* %14, align 8
  %96 = load i64, i64* @ERROR_SUCCESS, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %14, align 8
  %100 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %99)
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @MsiCloseHandle(i32 %101)
  %103 = call i32 (...) @GetProcessHeap()
  %104 = load i32*, i32** %15, align 8
  %105 = call i32 @HeapFree(i32 %103, i32 0, i32* %104)
  br label %106

106:                                              ; preds = %87, %29
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

declare dso_local i32 @write_msi_summary_info(i32, i32, i32, i8*) #1

declare dso_local i64 @MsiDatabaseCommit(i32) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
