; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/sxs/extr_cache.c_build_policy_filename.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/sxs/extr_cache.c_build_policy_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@build_policy_filename.policiesW = internal constant [10 x i8] c"policies\\\00", align 1
@build_policy_filename.suffixW = internal constant [8 x i8] c".policy\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@backslashW = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i8*)* @build_policy_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @build_policy_filename(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i8* @build_policy_name(i8* %20, i8* %21, i8* %22, i32* %14)
  store i8* %23, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  store i32 1, i32* %15, align 4
  br label %82

26:                                               ; preds = %4
  %27 = call i64 @build_sxs_path(i8* %19)
  %28 = load i32, i32* %14, align 4
  %29 = zext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %14, align 4
  %32 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @build_policy_filename.policiesW, i64 0, i64 0))
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %14, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %14, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = call i64 @strlenW(i8* %36)
  %38 = load i32, i32* %14, align 4
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %14, align 4
  %42 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @build_policy_filename.suffixW, i64 0, i64 0))
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* %14, align 4
  %45 = add i32 %44, %43
  store i32 %45, i32* %14, align 4
  %46 = call i32 (...) @GetProcessHeap()
  %47 = load i32, i32* %14, align 4
  %48 = add i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = mul i64 %49, 1
  %51 = trunc i64 %50 to i32
  %52 = call i8* @HeapAlloc(i32 %46, i32 0, i32 %51)
  store i8* %52, i8** %12, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %26
  %55 = call i32 (...) @GetProcessHeap()
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 @HeapFree(i32 %55, i32 0, i8* %56)
  store i8* null, i8** %5, align 8
  store i32 1, i32* %15, align 4
  br label %82

58:                                               ; preds = %26
  %59 = load i8*, i8** %12, align 8
  %60 = call i32 @strcpyW(i8* %59, i8* %19)
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @strcatW(i8* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @build_policy_filename.policiesW, i64 0, i64 0))
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @CreateDirectoryW(i8* %63, i32* null)
  %65 = load i8*, i8** %12, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @strcatW(i8* %65, i8* %66)
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @CreateDirectoryW(i8* %68, i32* null)
  %70 = load i8*, i8** %12, align 8
  %71 = load i8*, i8** @backslashW, align 8
  %72 = call i32 @strcatW(i8* %70, i8* %71)
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @strcatW(i8* %73, i8* %74)
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @strcatW(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @build_policy_filename.suffixW, i64 0, i64 0))
  %78 = call i32 (...) @GetProcessHeap()
  %79 = load i8*, i8** %13, align 8
  %80 = call i32 @HeapFree(i32 %78, i32 0, i8* %79)
  %81 = load i8*, i8** %12, align 8
  store i8* %81, i8** %5, align 8
  store i32 1, i32* %15, align 4
  br label %82

82:                                               ; preds = %58, %54, %25
  %83 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i8*, i8** %5, align 8
  ret i8* %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @build_policy_name(i8*, i8*, i8*, i32*) #2

declare dso_local i64 @build_sxs_path(i8*) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i64 @strlenW(i8*) #2

declare dso_local i8* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

declare dso_local i32 @strcpyW(i8*, i8*) #2

declare dso_local i32 @strcatW(i8*, i8*) #2

declare dso_local i32 @CreateDirectoryW(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
