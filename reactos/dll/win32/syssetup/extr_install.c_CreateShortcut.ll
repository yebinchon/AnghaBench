; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/syssetup/extr_install.c_CreateShortcut.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/syssetup/extr_install.c_CreateShortcut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32, i32*)* @CreateShortcut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateShortcut(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %6
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %75

33:                                               ; preds = %28, %6
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 @ARRAYSIZE(i32* %22)
  %36 = call i64 @ExpandEnvironmentStringsW(i32* %34, i32* %22, i64 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @wcscpy(i32* %22, i32* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = call i64 @ARRAYSIZE(i32* %25)
  %43 = call i64 @GetFullPathNameW(i32* %22, i64 %42, i32* %25, i32** %15)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %41
  %47 = load i64, i64* %13, align 8
  %48 = call i64 @ARRAYSIZE(i32* %25)
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load i32*, i32** %15, align 8
  %52 = icmp ne i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load i32*, i32** %15, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 -1
  store i32* %56, i32** %15, align 8
  store i32 0, i32* %55, align 4
  %57 = load i32*, i32** %15, align 8
  %58 = ptrtoint i32* %57 to i64
  %59 = ptrtoint i32* %25 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  %62 = icmp eq i64 %61, 2
  br i1 %62, label %63, label %71

63:                                               ; preds = %50
  %64 = getelementptr inbounds i32, i32* %25, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 58
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = getelementptr inbounds i32, i32* %25, i64 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 92
  br i1 %70, label %73, label %71

71:                                               ; preds = %67, %63, %50
  %72 = load i32*, i32** %15, align 8
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %71, %67
  store i32* %25, i32** %12, align 8
  br label %74

74:                                               ; preds = %73, %46, %41
  br label %75

75:                                               ; preds = %74, %28
  %76 = load i32*, i32** %12, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32* null, i32** %12, align 8
  br label %84

84:                                               ; preds = %83, %78, %75
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @wcscpy(i32* %22, i32* %85)
  %87 = call i32* @PathAddBackslash(i32* %22)
  store i32* %87, i32** %14, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @wcscpy(i32* %88, i32* %89)
  %91 = load i32*, i32** %9, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = load i32*, i32** %9, align 8
  br label %98

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i32* [ %96, %95 ], [ null, %97 ]
  %100 = load i32, i32* %11, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @CreateShellLink(i32* %22, i32* %91, i8* bitcast ([1 x i32]* @.str to i8*), i32* %92, i32* %99, i32 %100, i32* %101)
  %103 = call i32 @SUCCEEDED(i32 %102)
  %104 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %104)
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ExpandEnvironmentStringsW(i32*, i32*, i64) #2

declare dso_local i64 @ARRAYSIZE(i32*) #2

declare dso_local i32 @wcscpy(i32*, i32*) #2

declare dso_local i64 @GetFullPathNameW(i32*, i64, i32*, i32**) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32* @PathAddBackslash(i32*) #2

declare dso_local i32 @SUCCEEDED(i32) #2

declare dso_local i32 @CreateShellLink(i32*, i32*, i8*, i32*, i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
