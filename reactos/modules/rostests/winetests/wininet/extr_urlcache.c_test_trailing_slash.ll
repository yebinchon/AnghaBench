; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_urlcache.c_test_trailing_slash.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_urlcache.c_test_trailing_slash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_trailing_slash.filetime_zero = internal constant i32 0, align 4
@test_trailing_slash.url_with_slash = internal global [26 x i8] c"http://testing.cache.com/\00", align 16
@.str = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"CreateUrlCacheEntry failed with error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Visited: http://testing.cache.com/\00", align 1
@NORMAL_CACHE_ENTRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"CommitUrlCacheEntry failed with error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"cache entry does not exist\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Visited: http://testing.cache.com\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"cache entry exists\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"DeleteCacheEntryA failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_trailing_slash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_trailing_slash() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MAX_PATH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %9 = call i32 @CreateUrlCacheEntryA(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @test_trailing_slash.url_with_slash, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (...) @GetLastError()
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = call i32 @create_and_write_file(i8* %8, i32* %3, i32 4)
  %14 = load i32, i32* @test_trailing_slash.filetime_zero, align 4
  %15 = load i32, i32* @test_trailing_slash.filetime_zero, align 4
  %16 = load i32, i32* @NORMAL_CACHE_ENTRY, align 4
  %17 = call i32 @CommitUrlCacheEntryA(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %14, i32 %15, i32 %16, i32* null, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (...) @GetLastError()
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = call i32 @cache_entry_exists(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %23 = call i32 @cache_entry_exists(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %28 = call i32 @DeleteUrlCacheEntryA(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %31 = call i32 @DeleteFileA(i8* %8)
  %32 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %32)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CreateUrlCacheEntryA(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @create_and_write_file(i8*, i32*, i32) #2

declare dso_local i32 @CommitUrlCacheEntryA(i8*, i32*, i32, i32, i32, i32*, i32, i8*, i32*) #2

declare dso_local i32 @cache_entry_exists(i8*) #2

declare dso_local i32 @DeleteUrlCacheEntryA(i8*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
