; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_create_cache_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_create_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@__const.create_cache_entry.cache_headers = private unnamed_addr constant [20 x i8] c"HTTP/1.1 200 OK\0D\0A\0D\0A\00", align 16
@.str = private unnamed_addr constant [23 x i8] c"Testing cache read...\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"CreateUrlCacheEntryA failed: %u\0A\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"CreateFile failed\0A\00", align 1
@NORMAL_CACHE_ENTRY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"CommitUrlCacheEntryA failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @create_cache_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_cache_entry(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [1000 x i8], align 16
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [20 x i8], align 16
  store i32* %0, i32** %2, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = bitcast [20 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.create_cache_entry.cache_headers, i32 0, i32 0), i64 20, i1 false)
  %21 = call i32 @trace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = call i8* @w2a(i32* %22)
  store i8* %23, i8** %10, align 8
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %36, %1
  %25 = load i32, i32* %13, align 4
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %26, 1000
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i32, i32* %13, align 4
  %30 = urem i32 %29, 10
  %31 = add i32 48, %30
  %32 = trunc i32 %31 to i8
  %33 = load i32, i32* %13, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 %34
  store i8 %32, i8* %35, align 1
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %13, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %13, align 4
  br label %24

39:                                               ; preds = %24
  %40 = call i32 @GetSystemTimeAsFileTime(%struct.TYPE_9__* %3)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 711573504
  store i32 %51, i32* %49, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1423147008
  store i32 %62, i32* %60, align 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @CreateUrlCacheEntryA(i8* %71, i32 1000, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 0)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 (...) @GetLastError()
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @GENERIC_WRITE, align 4
  %77 = load i32, i32* @CREATE_ALWAYS, align 4
  %78 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %79 = call i64 @CreateFileA(i8* %19, i32 %76, i32 0, i32* null, i32 %77, i32 %78, i32* null)
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %82 = icmp ne i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %87 = call i32 @WriteFile(i64 %85, i8* %86, i32 1000, i32* %12, i32* null)
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @CloseHandle(i64 %88)
  %90 = load i8*, i8** %10, align 8
  %91 = load i32, i32* @NORMAL_CACHE_ENTRY, align 4
  %92 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %93 = bitcast %struct.TYPE_9__* %4 to i64*
  %94 = load i64, i64* %93, align 4
  %95 = bitcast %struct.TYPE_9__* %5 to i64*
  %96 = load i64, i64* %95, align 4
  %97 = call i32 @CommitUrlCacheEntryA(i8* %90, i8* %19, i64 %94, i64 %96, i32 %91, i8* %92, i32 19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i32 (...) @GetLastError()
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  %101 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %101)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @trace(i8*) #3

declare dso_local i8* @w2a(i32*) #3

declare dso_local i32 @GetSystemTimeAsFileTime(%struct.TYPE_9__*) #3

declare dso_local i32 @CreateUrlCacheEntryA(i8*, i32, i8*, i8*, i32) #3

declare dso_local i32 @ok(i32, i8*, ...) #3

declare dso_local i32 @GetLastError(...) #3

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #3

declare dso_local i32 @WriteFile(i64, i8*, i32, i32*, i32*) #3

declare dso_local i32 @CloseHandle(i64) #3

declare dso_local i32 @CommitUrlCacheEntryA(i8*, i8*, i64, i64, i32, i8*, i32, i8*, i32) #3

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
