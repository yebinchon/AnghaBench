; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_cache_container_map_index.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_cache_container_map_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cache_container_map_index.mapping_name_format = internal constant [16 x i8] c"%sindex.dat_%lu\00", align 16
@MAX_PATH = common dso_local global i32 0, align 4
@FILE_MAP_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i32, i32*)* @cache_container_map_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cache_container_map_index(i64 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @wsprintfW(i8* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cache_container_map_index.mapping_name_format, i64 0, i64 0), i8* %18, i32 %19)
  %21 = call i32 @cache_container_create_object_name(i8* %17, i8 signext 95)
  %22 = load i32, i32* @FILE_MAP_WRITE, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i64 @OpenFileMappingW(i32 %22, i32 %23, i8* %17)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @FALSE, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i64, i64* %12, align 8
  store i64 %34, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %45

35:                                               ; preds = %4
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @TRUE, align 4
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* @PAGE_READWRITE, align 4
  %44 = call i64 @CreateFileMappingW(i64 %42, i32* null, i32 %43, i32 0, i32 0, i8* %17)
  store i64 %44, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %45

45:                                               ; preds = %41, %33
  %46 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i64, i64* %5, align 8
  ret i64 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wsprintfW(i8*, i8*, i8*, i32) #2

declare dso_local i32 @cache_container_create_object_name(i8*, i8 signext) #2

declare dso_local i64 @OpenFileMappingW(i32, i32, i8*) #2

declare dso_local i64 @CreateFileMappingW(i64, i32*, i32, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
