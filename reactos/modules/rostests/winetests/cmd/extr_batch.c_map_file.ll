; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/cmd/extr_batch.c_map_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/cmd/extr_batch.c_map_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"CreateFile failed: %08x\0A\00", align 1
@PAGE_READONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"CreateFileMappingA(%s) failed: %u\0A\00", align 1
@FILE_MAP_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"MapViewOfFile failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @map_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_file(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @GENERIC_READ, align 4
  %11 = load i32, i32* @OPEN_EXISTING, align 4
  %12 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %13 = call i64 @CreateFileA(i8* %9, i32 %10, i32 0, i32* null, i32 %11, i32 %12, i32* null)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 (...) @GetLastError()
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 (i32, i8*, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

26:                                               ; preds = %2
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @GetFileSize(i64 %27, i32* null)
  store i32 %28, i32* %8, align 4
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* @PAGE_READONLY, align 4
  %31 = call i64 @CreateFileMappingA(i64 %29, i32* null, i32 %30, i32 0, i32 0, i32* null)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @CloseHandle(i64 %32)
  %34 = load i64, i64* %7, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = icmp ne i8* %35, null
  %37 = zext i1 %36 to i32
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 (...) @GetLastError()
  %40 = call i32 (i32, i8*, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %39)
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %65

44:                                               ; preds = %26
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* @FILE_MAP_READ, align 4
  %47 = call i8* @MapViewOfFile(i64 %45, i32 %46, i32 0, i32 0, i32 0)
  %48 = load i8**, i8*** %5, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 (...) @GetLastError()
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 (i32, i8*, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @CloseHandle(i64 %57)
  %59 = load i8**, i8*** %5, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %65

63:                                               ; preds = %44
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %62, %43, %25
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @GetFileSize(i64, i32*) #1

declare dso_local i64 @CreateFileMappingA(i64, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i8* @MapViewOfFile(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
