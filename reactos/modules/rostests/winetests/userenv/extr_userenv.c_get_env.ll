; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/userenv/extr_userenv.c_get_env.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/userenv/extr_userenv.c_get_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@NORM_IGNORECASE = common dso_local global i32 0, align 4
@LOCALE_USE_CP_ACP = common dso_local global i32 0, align 4
@CSTR_EQUAL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8*, i8**)* @get_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_env(i64* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  store i64* %0, i64** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i64*, i64** %5, align 8
  store i64* %13, i64** %8, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8**, i8*** %7, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %16, %3
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %4, align 4
  br label %97

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strlen(i8* %25)
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %91, %24
  %28 = load i32, i32* @CP_ACP, align 4
  %29 = load i64*, i64** %8, align 8
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %31 = call i32 @WideCharToMultiByte(i32 %28, i32 0, i64* %29, i32 -1, i8* %30, i32 256, i32* null, i32* null)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 255
  store i8 0, i8* %34, align 1
  br label %35

35:                                               ; preds = %33, %27
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %37 = call i32 @strlen(i8* %36)
  store i32 %37, i32* %9, align 4
  %38 = call i32 (...) @GetThreadLocale()
  %39 = load i32, i32* @NORM_IGNORECASE, align 4
  %40 = load i32, i32* @LOCALE_USE_CP_ACP, align 4
  %41 = or i32 %39, %40
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @min(i32 %43, i32 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @CompareStringA(i32 %38, i32 %41, i8* %42, i32 %45, i8* %46, i32 %47)
  %49 = load i64, i64* @CSTR_EQUAL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %35
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 61
  br i1 %57, label %58, label %79

58:                                               ; preds = %51
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %60 = call i32 @strlen(i8* %59)
  store i32 %60, i32* %11, align 4
  %61 = call i32 (...) @GetProcessHeap()
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i8* @HeapAlloc(i32 %61, i32 0, i32 %63)
  %65 = load i8**, i8*** %7, align 8
  store i8* %64, i8** %65, align 8
  %66 = load i8**, i8*** %7, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %4, align 4
  br label %97

71:                                               ; preds = %58
  %72 = load i8**, i8*** %7, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @memcpy(i8* %73, i8* %74, i32 %76)
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %4, align 4
  br label %97

79:                                               ; preds = %51
  br label %80

80:                                               ; preds = %79, %35
  br label %81

81:                                               ; preds = %85, %80
  %82 = load i64*, i64** %8, align 8
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i64*, i64** %8, align 8
  %87 = getelementptr inbounds i64, i64* %86, i32 1
  store i64* %87, i64** %8, align 8
  br label %81

88:                                               ; preds = %81
  %89 = load i64*, i64** %8, align 8
  %90 = getelementptr inbounds i64, i64* %89, i32 1
  store i64* %90, i64** %8, align 8
  br label %91

91:                                               ; preds = %88
  %92 = load i64*, i64** %8, align 8
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %27, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %71, %69, %22
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i64*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i64 @CompareStringA(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @GetThreadLocale(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
