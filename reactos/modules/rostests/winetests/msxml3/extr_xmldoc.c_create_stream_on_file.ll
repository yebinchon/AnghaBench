; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_xmldoc.c_create_stream_on_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_xmldoc.c_create_stream_on_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Expected a valid file handle\0A\00", align 1
@GHND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Expected to read the whole file, read %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Expected non-NULL stream\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32)* @create_stream_on_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_stream_on_file(i32** %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32** %0, i32*** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GENERIC_READ, align 4
  %13 = load i32, i32* @FILE_SHARE_READ, align 4
  %14 = load i32, i32* @OPEN_EXISTING, align 4
  %15 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %16 = call i64 @CreateFileA(i32 %11, i32 %12, i32 %13, i32* null, i32 %14, i32 %15, i32* null)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @GetFileSize(i64 %22, i32* null)
  store i64 %23, i64* %9, align 8
  %24 = load i32, i32* @GHND, align 4
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @GlobalAlloc(i32 %24, i64 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @GlobalLock(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @ReadFile(i64 %29, i32 %30, i64 %31, i64* %10, i32* null)
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %10, align 8
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @TRUE, align 4
  %41 = load i32**, i32*** %3, align 8
  %42 = call i64 @CreateStreamOnHGlobal(i32 %39, i32 %40, i32** %41)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %8, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  %49 = load i32**, i32*** %3, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @CloseHandle(i64 %54)
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @GlobalUnlock(i32 %56)
  ret void
}

declare dso_local i64 @CreateFileA(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetFileSize(i64, i32*) #1

declare dso_local i32 @GlobalAlloc(i32, i64) #1

declare dso_local i32 @GlobalLock(i32) #1

declare dso_local i32 @ReadFile(i64, i32, i64, i64*, i32*) #1

declare dso_local i64 @CreateStreamOnHGlobal(i32, i32, i32**) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @GlobalUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
