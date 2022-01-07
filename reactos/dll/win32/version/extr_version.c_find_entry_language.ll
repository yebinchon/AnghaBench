; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/version/extr_version.c_find_entry_language.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/version/extr_version.c_find_entry_language.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FILE_VER_GET_LOCALISED = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@LANG_ENGLISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32)* @find_entry_language to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_entry_language(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [9 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @FILE_VER_GET_LOCALISED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %3
  %17 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @LANG_NEUTRAL, align 4
  %20 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %21 = call i32 @MAKELANGID(i32 %19, i32 %20)
  %22 = call i32 @push_language(i32* %17, i32 %18, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %24 = load i32, i32* %11, align 4
  %25 = call %struct.TYPE_2__* (...) @NtCurrentTeb()
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @LANGIDFROMLCID(i32 %27)
  %29 = call i32 @push_language(i32* %23, i32 %24, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %31 = load i32, i32* %11, align 4
  %32 = call i32 (...) @GetUserDefaultLangID()
  %33 = call i32 @push_language(i32* %30, i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (...) @GetUserDefaultLangID()
  %37 = call i32 @PRIMARYLANGID(i32 %36)
  %38 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %39 = call i32 @MAKELANGID(i32 %37, i32 %38)
  %40 = call i32 @push_language(i32* %34, i32 %35, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %42 = load i32, i32* %11, align 4
  %43 = call i32 (...) @GetUserDefaultLangID()
  %44 = call i32 @PRIMARYLANGID(i32 %43)
  %45 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %46 = call i32 @MAKELANGID(i32 %44, i32 %45)
  %47 = call i32 @push_language(i32* %41, i32 %42, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %49 = load i32, i32* %11, align 4
  %50 = call i32 (...) @GetSystemDefaultLangID()
  %51 = call i32 @push_language(i32* %48, i32 %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %53 = load i32, i32* %11, align 4
  %54 = call i32 (...) @GetSystemDefaultLangID()
  %55 = call i32 @PRIMARYLANGID(i32 %54)
  %56 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %57 = call i32 @MAKELANGID(i32 %55, i32 %56)
  %58 = call i32 @push_language(i32* %52, i32 %53, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %60 = load i32, i32* %11, align 4
  %61 = call i32 (...) @GetSystemDefaultLangID()
  %62 = call i32 @PRIMARYLANGID(i32 %61)
  %63 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %64 = call i32 @MAKELANGID(i32 %62, i32 %63)
  %65 = call i32 @push_language(i32* %59, i32 %60, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @LANG_ENGLISH, align 4
  %69 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %70 = call i32 @MAKELANGID(i32 %68, i32 %69)
  %71 = call i32 @push_language(i32* %66, i32 %67, i32 %70)
  store i32 %71, i32* %11, align 4
  br label %79

72:                                               ; preds = %3
  %73 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @LANG_ENGLISH, align 4
  %76 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %77 = call i32 @MAKELANGID(i32 %75, i32 %76)
  %78 = call i32 @push_language(i32* %73, i32 %74, i32 %77)
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %72, %16
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %96, %79
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %6, align 8
  %91 = call i32* @find_entry_by_id(i32* %85, i32 %89, i8* %90)
  store i32* %91, i32** %8, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32*, i32** %8, align 8
  store i32* %94, i32** %4, align 8
  br label %103

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %80

99:                                               ; preds = %80
  %100 = load i32*, i32** %5, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = call i32* @find_entry_default(i32* %100, i8* %101)
  store i32* %102, i32** %4, align 8
  br label %103

103:                                              ; preds = %99, %93
  %104 = load i32*, i32** %4, align 8
  ret i32* %104
}

declare dso_local i32 @push_language(i32*, i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @LANGIDFROMLCID(i32) #1

declare dso_local %struct.TYPE_2__* @NtCurrentTeb(...) #1

declare dso_local i32 @GetUserDefaultLangID(...) #1

declare dso_local i32 @PRIMARYLANGID(i32) #1

declare dso_local i32 @GetSystemDefaultLangID(...) #1

declare dso_local i32* @find_entry_by_id(i32*, i32, i8*) #1

declare dso_local i32* @find_entry_default(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
