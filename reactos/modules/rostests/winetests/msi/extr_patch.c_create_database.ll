; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_patch.c_create_database.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_patch.c_create_database.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_table = type { i32, i32, i32 }

@CP_ACP = common dso_local global i32 0, align 4
@MSIDBOPEN_CREATE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"expected ERROR_SUCCESS, got %u\0A\00", align 1
@CURR_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.msi_table*, i64)* @create_database to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_database(i8* %0, %struct.msi_table* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.msi_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.msi_table*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.msi_table* %1, %struct.msi_table** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* @CP_ACP, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @MultiByteToWideChar(i32 %13, i32 0, i8* %14, i32 -1, i32* null, i32 0)
  store i32 %15, i32* %11, align 4
  %16 = call i32 (...) @GetProcessHeap()
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32* @HeapAlloc(i32 %16, i32 0, i32 %20)
  store i32* %21, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %96

24:                                               ; preds = %3
  %25 = load i32, i32* @CP_ACP, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @MultiByteToWideChar(i32 %25, i32 0, i8* %26, i32 -1, i32* %27, i32 %28)
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* @MSIDBOPEN_CREATE, align 4
  %32 = call i64 @MsiOpenDatabaseW(i32* %30, i32 %31, i32* %7)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %37)
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %77, %24
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %39
  %44 = load %struct.msi_table*, %struct.msi_table** %5, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.msi_table, %struct.msi_table* %44, i64 %45
  store %struct.msi_table* %46, %struct.msi_table** %12, align 8
  %47 = load %struct.msi_table*, %struct.msi_table** %12, align 8
  %48 = getelementptr inbounds %struct.msi_table, %struct.msi_table* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.msi_table*, %struct.msi_table** %12, align 8
  %51 = getelementptr inbounds %struct.msi_table, %struct.msi_table* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.msi_table*, %struct.msi_table** %12, align 8
  %54 = getelementptr inbounds %struct.msi_table, %struct.msi_table* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 1
  %59 = trunc i64 %58 to i32
  %60 = call i32 @write_file(i32 %49, i32 %52, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @CURR_DIR, align 4
  %63 = load %struct.msi_table*, %struct.msi_table** %12, align 8
  %64 = getelementptr inbounds %struct.msi_table, %struct.msi_table* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @MsiDatabaseImportA(i32 %61, i32 %62, i32 %65)
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @ERROR_SUCCESS, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %71)
  %73 = load %struct.msi_table*, %struct.msi_table** %12, align 8
  %74 = getelementptr inbounds %struct.msi_table, %struct.msi_table* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @DeleteFileA(i32 %75)
  br label %77

77:                                               ; preds = %43
  %78 = load i64, i64* %9, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %9, align 8
  br label %39

80:                                               ; preds = %39
  %81 = load i32, i32* %7, align 4
  %82 = call i64 @MsiDatabaseCommit(i32 %81)
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @ERROR_SUCCESS, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @MsiCloseHandle(i32 %89)
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @set_suminfo(i32* %91)
  %93 = call i32 (...) @GetProcessHeap()
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @HeapFree(i32 %93, i32 0, i32* %94)
  br label %96

96:                                               ; preds = %80, %23
  ret void
}

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @MsiOpenDatabaseW(i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @write_file(i32, i32, i32) #1

declare dso_local i64 @MsiDatabaseImportA(i32, i32, i32) #1

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i64 @MsiDatabaseCommit(i32) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

declare dso_local i32 @set_suminfo(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
