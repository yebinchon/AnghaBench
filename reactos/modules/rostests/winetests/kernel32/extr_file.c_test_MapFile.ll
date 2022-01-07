; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test_MapFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test_MapFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Couldn't create test file.\0A\00", align 1
@PAGE_READWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"named_file_map\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"mapping should work, I named it!\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"can't close mapping handle\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"We should still be able to map!\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"can't close file handle\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"mapped zero size file\0A\00", align 1
@ERROR_FILE_INVALID = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"not ERROR_FILE_INVALID\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"mapping should fail\0A\00", align 1
@filename = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"DeleteFile failed after map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_MapFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_MapFile() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 @test_Mapfile_createtemp(i32** %1)
  %4 = call i32 @ok(i32 %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %5 = load i32*, i32** %1, align 8
  %6 = load i32, i32* @PAGE_READWRITE, align 4
  %7 = call i32* @CreateFileMappingA(i32* %5, i32* null, i32 %6, i32 0, i32 4096, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @CloseHandle(i32* %12)
  %14 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i32*, i32** %1, align 8
  %16 = load i32, i32* @PAGE_READWRITE, align 4
  %17 = call i32* @CreateFileMappingA(i32* %15, i32* null, i32 %16, i32 0, i32 0, i8* null)
  store i32* %17, i32** %2, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @CloseHandle(i32* %22)
  %24 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @CloseHandle(i32* %25)
  %27 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  %28 = call i32 @test_Mapfile_createtemp(i32** %1)
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %1, align 8
  %31 = load i32, i32* @PAGE_READWRITE, align 4
  %32 = call i32* @CreateFileMappingA(i32* %30, i32* null, i32 %31, i32 0, i32 0, i8* null)
  store i32* %32, i32** %2, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = icmp eq i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %37 = call i64 (...) @GetLastError()
  %38 = load i64, i64* @ERROR_FILE_INVALID, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %42 = load i32*, i32** %1, align 8
  %43 = load i32, i32* @PAGE_READWRITE, align 4
  %44 = call i32* @CreateFileMappingA(i32* %42, i32* null, i32 %43, i32 -2147483648, i32 0, i8* null)
  store i32* %44, i32** %2, align 8
  %45 = load i32*, i32** %2, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %0
  %48 = load i32*, i32** %2, align 8
  %49 = icmp ne i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i64 @broken(i32 %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %47, %0
  %54 = phi i1 [ true, %0 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %57 = load i32*, i32** %2, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @CloseHandle(i32* %60)
  br label %62

62:                                               ; preds = %59, %53
  %63 = load i32*, i32** %1, align 8
  %64 = load i32, i32* @PAGE_READWRITE, align 4
  %65 = call i32* @CreateFileMappingA(i32* %63, i32* null, i32 %64, i32 -2147483648, i32 65536, i8* null)
  store i32* %65, i32** %2, align 8
  %66 = load i32*, i32** %2, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load i32*, i32** %2, align 8
  %70 = icmp ne i32* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i64 @broken(i32 %71)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %68, %62
  %75 = phi i1 [ true, %62 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %78 = load i32*, i32** %2, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @CloseHandle(i32* %81)
  br label %83

83:                                               ; preds = %80, %74
  %84 = load i32*, i32** %1, align 8
  %85 = call i32 @CloseHandle(i32* %84)
  %86 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %87 = load i32, i32* @filename, align 4
  %88 = call i32 @DeleteFileA(i32 %87)
  %89 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @test_Mapfile_createtemp(i32**) #1

declare dso_local i32* @CreateFileMappingA(i32*, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @DeleteFileA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
