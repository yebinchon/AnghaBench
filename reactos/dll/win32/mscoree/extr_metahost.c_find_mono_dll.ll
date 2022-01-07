; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_metahost.c_find_mono_dll.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_metahost.c_find_mono_dll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@find_mono_dll.mono_dll = internal constant [14 x i8] c"\\bin\\mono.dll\00", align 1
@find_mono_dll.libmono_dll = internal constant [17 x i8] c"\\bin\\libmono.dll\00", align 16
@find_mono_dll.mono2_dll = internal constant [18 x i8] c"\\bin\\mono-2.0.dll\00", align 16
@find_mono_dll.libmono2_dll = internal constant [21 x i8] c"\\bin\\libmono-2.0.dll\00", align 16
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@libmono2_arch_dll = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @find_mono_dll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_mono_dll(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @strcpyW(i32 %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @strcatW(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @find_mono_dll.mono_dll, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @GetFileAttributesW(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %11
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @strcpyW(i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @strcatW(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @find_mono_dll.libmono_dll, i64 0, i64 0))
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @GetFileAttributesW(i32 %28)
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %22, %11
  br label %68

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %67

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @strcpyW(i32 %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i8*, i8** @libmono2_arch_dll, align 8
  %40 = call i32 @strcatW(i32 %38, i8* %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @GetFileAttributesW(i32 %41)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @strcpyW(i32 %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @strcatW(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @find_mono_dll.mono2_dll, i64 0, i64 0))
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @GetFileAttributesW(i32 %52)
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %46, %34
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @strcpyW(i32 %59, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @strcatW(i32 %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @find_mono_dll.libmono2_dll, i64 0, i64 0))
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @GetFileAttributesW(i32 %64)
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %58, %54
  br label %67

67:                                               ; preds = %66, %31
  br label %68

68:                                               ; preds = %67, %30
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %71 = icmp ne i64 %69, %70
  %72 = zext i1 %71 to i32
  ret i32 %72
}

declare dso_local i32 @strcpyW(i32, i32) #1

declare dso_local i32 @strcatW(i32, i8*) #1

declare dso_local i64 @GetFileAttributesW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
