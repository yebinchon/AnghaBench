; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/lz32/extr_lzexpand_main.c_test_LZCopy.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/lz32/extr_lzexpand_main.c_test_LZCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filename_ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_NEW = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"CreateFileA: error %d\0A\00", align 1
@compressed_file = common dso_local global i32 0, align 4
@compressed_file_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"WriteFile error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Wrote wrong number of bytes\0A\00", align 1
@OF_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"LZOpenFileA failed on compressed file\0A\00", align 1
@filename2 = common dso_local global i32 0, align 4
@OF_CREATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"LZOpenFileA failed on creating new file %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"LZCopy error\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@buf = common dso_local global i32 0, align 4
@uncompressed_data_size = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"ReadFile: error %d\0A\00", align 1
@uncompressed_data = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"buffer contents mismatch\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"DeleteFileA: error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LZCopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LZCopy() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @filename_, align 4
  %9 = load i32, i32* @GENERIC_WRITE, align 4
  %10 = load i32, i32* @CREATE_NEW, align 4
  %11 = call i64 @CreateFileA(i32 %8, i32 %9, i32 0, i32* null, i32 %10, i32 0, i32 0)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 (...) @GetLastError()
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i64, i64* %1, align 8
  %19 = load i32, i32* @compressed_file, align 4
  %20 = load i32, i32* @compressed_file_size, align 4
  %21 = call i32 @WriteFile(i64 %18, i32 %19, i32 %20, i32* %2, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (...) @GetLastError()
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @compressed_file_size, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i64, i64* %1, align 8
  %31 = call i32 @CloseHandle(i64 %30)
  %32 = load i32, i32* @filename_, align 4
  %33 = load i32, i32* @OF_READ, align 4
  %34 = call i32 @LZOpenFileA(i32 %32, i32* %5, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp sge i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32, i32* @filename2, align 4
  %40 = load i32, i32* @OF_CREATE, align 4
  %41 = call i32 @LZOpenFileA(i32 %39, i32* %6, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp sge i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @LZCopy(i32 %47, i32 %48)
  store i32 %49, i32* %2, align 4
  %50 = load i32, i32* %2, align 4
  %51 = icmp sgt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @LZClose(i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @LZClose(i32 %56)
  %58 = load i32, i32* @filename2, align 4
  %59 = load i32, i32* @GENERIC_READ, align 4
  %60 = load i32, i32* @OPEN_EXISTING, align 4
  %61 = call i64 @CreateFileA(i32 %58, i32 %59, i32 0, i32* null, i32 %60, i32 0, i32 0)
  store i64 %61, i64* %1, align 8
  %62 = load i64, i64* %1, align 8
  %63 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %64 = icmp ne i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 (...) @GetLastError()
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i64, i64* %1, align 8
  %69 = load i32, i32* @buf, align 4
  %70 = load i32, i32* @uncompressed_data_size, align 4
  %71 = mul nsw i32 %70, 2
  %72 = call i32 @ReadFile(i64 %68, i32 %69, i32 %71, i32* %2, i32 0)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %0
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @uncompressed_data_size, align 4
  %78 = icmp eq i32 %76, %77
  br label %79

79:                                               ; preds = %75, %0
  %80 = phi i1 [ false, %0 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 (...) @GetLastError()
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @buf, align 4
  %85 = load i32, i32* @uncompressed_data, align 4
  %86 = load i32, i32* @uncompressed_data_size, align 4
  %87 = call i32 @memcmp(i32 %84, i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %92 = load i64, i64* %1, align 8
  %93 = call i32 @CloseHandle(i64 %92)
  %94 = load i32, i32* @filename_, align 4
  %95 = call i32 @DeleteFileA(i32 %94)
  store i32 %95, i32* %2, align 4
  %96 = load i32, i32* %2, align 4
  %97 = call i32 (...) @GetLastError()
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @filename2, align 4
  %100 = call i32 @DeleteFileA(i32 %99)
  store i32 %100, i32* %2, align 4
  %101 = load i32, i32* %2, align 4
  %102 = call i32 (...) @GetLastError()
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %102)
  ret void
}

declare dso_local i64 @CreateFileA(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @WriteFile(i64, i32, i32, i32*, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @LZOpenFileA(i32, i32*, i32) #1

declare dso_local i32 @LZCopy(i32, i32) #1

declare dso_local i32 @LZClose(i32) #1

declare dso_local i32 @ReadFile(i64, i32, i32, i32*, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @DeleteFileA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
