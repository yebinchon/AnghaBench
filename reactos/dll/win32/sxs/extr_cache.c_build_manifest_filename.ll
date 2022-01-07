; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/sxs/extr_cache.c_build_manifest_filename.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/sxs/extr_cache.c_build_manifest_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@build_manifest_filename.manifestsW = internal constant [11 x i8] c"manifests\\\00", align 1
@build_manifest_filename.suffixW = internal constant [10 x i8] c".manifest\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i8*)* @build_manifest_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @build_manifest_filename(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
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
  %23 = load i8*, i8** %9, align 8
  %24 = call i8* @build_assembly_name(i8* %20, i8* %21, i8* %22, i8* %23, i32* %14)
  store i8* %24, i8** %13, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  store i32 1, i32* %15, align 4
  br label %67

27:                                               ; preds = %4
  %28 = call i64 @build_sxs_path(i8* %19)
  %29 = load i32, i32* %14, align 4
  %30 = zext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %14, align 4
  %33 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @build_manifest_filename.manifestsW, i64 0, i64 0))
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* %14, align 4
  %36 = add i32 %35, %34
  store i32 %36, i32* %14, align 4
  %37 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @build_manifest_filename.suffixW, i64 0, i64 0))
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %14, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %14, align 4
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load i32, i32* %14, align 4
  %43 = add i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = mul i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = call i8* @HeapAlloc(i32 %41, i32 0, i32 %46)
  store i8* %47, i8** %12, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %27
  %50 = call i32 (...) @GetProcessHeap()
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @HeapFree(i32 %50, i32 0, i8* %51)
  store i8* null, i8** %5, align 8
  store i32 1, i32* %15, align 4
  br label %67

53:                                               ; preds = %27
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @strcpyW(i8* %54, i8* %19)
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @strcatW(i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @build_manifest_filename.manifestsW, i64 0, i64 0))
  %58 = load i8*, i8** %12, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @strcatW(i8* %58, i8* %59)
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @strcatW(i8* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @build_manifest_filename.suffixW, i64 0, i64 0))
  %63 = call i32 (...) @GetProcessHeap()
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @HeapFree(i32 %63, i32 0, i8* %64)
  %66 = load i8*, i8** %12, align 8
  store i8* %66, i8** %5, align 8
  store i32 1, i32* %15, align 4
  br label %67

67:                                               ; preds = %53, %49, %26
  %68 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i8*, i8** %5, align 8
  ret i8* %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @build_assembly_name(i8*, i8*, i8*, i8*, i32*) #2

declare dso_local i64 @build_sxs_path(i8*) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i8* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

declare dso_local i32 @strcpyW(i8*, i8*) #2

declare dso_local i32 @strcatW(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
