; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_actctx.c_run_child_process.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_actctx.c_run_child_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c".manifest\00", align 1
@manifest1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not create manifest file\0A\00", align 1
@FILE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"\22%s\22 %s manifest1\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Could not create process: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_child_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_child_process() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %1, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %2, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %3, align 8
  %18 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = call i32 @GetModuleFileNameA(i32* null, i8* %17, i32 %19)
  %21 = call i32 @strcat(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @manifest1, align 4
  %23 = call i32 @create_manifest_file(i8* %17, i32 %22, i32 -1, i32* null, i32* null)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %0
  %26 = call i32 @skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %74

27:                                               ; preds = %0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 8, i32* %28, align 4
  %29 = call i32 @winetest_get_mainargs(i8*** %4)
  %30 = load i8**, i8*** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %34 = load i32, i32* @FILE_SHARE_READ, align 4
  %35 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @OPEN_EXISTING, align 4
  %38 = call i64 @CreateFileA(i8* %32, i32 %33, i32 %36, i32* null, i32 %37, i32 0, i32* null)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %27
  %43 = call i32 @GetSystemTimeAsFileTime(i32* %8)
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @SetFileTime(i64 %44, i32* null, i32* null, i32* %8)
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @CloseHandle(i64 %46)
  br label %48

48:                                               ; preds = %42, %27
  %49 = load i8**, i8*** %4, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %4, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %51, i8* %54)
  %56 = load i8**, i8*** %4, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* @FALSE, align 4
  %60 = call i32 @CreateProcessA(i8* %58, i8* %14, i32* null, i32* null, i32 %59, i32 0, i32* null, i32* null, %struct.TYPE_5__* %6, %struct.TYPE_6__* %5)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (...) @GetLastError()
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @winetest_wait_child_process(i64 %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @CloseHandle(i64 %68)
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @CloseHandle(i64 %71)
  %73 = call i32 @DeleteFileA(i8* %17)
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %48, %25
  %75 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %10, align 4
  switch i32 %76, label %78 [
    i32 0, label %77
    i32 1, label %77
  ]

77:                                               ; preds = %74, %74
  ret void

78:                                               ; preds = %74
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @GetModuleFileNameA(i32*, i8*, i32) #3

declare dso_local i32 @strcat(i8*, i8*) #3

declare dso_local i32 @create_manifest_file(i8*, i32, i32, i32*, i32*) #3

declare dso_local i32 @skip(i8*) #3

declare dso_local i32 @winetest_get_mainargs(i8***) #3

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #3

declare dso_local i32 @GetSystemTimeAsFileTime(i32*) #3

declare dso_local i32 @SetFileTime(i64, i32*, i32*, i32*) #3

declare dso_local i32 @CloseHandle(i64) #3

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #3

declare dso_local i32 @CreateProcessA(i8*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_6__*) #3

declare dso_local i32 @ok(i32, i8*, i32) #3

declare dso_local i32 @GetLastError(...) #3

declare dso_local i32 @winetest_wait_child_process(i64) #3

declare dso_local i32 @DeleteFileA(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
