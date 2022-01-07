; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_install.c_update_ini_callback.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_install.c_update_ini_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INF_STRING_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Writing %s = %s in %s of file %s\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i8*)* @update_ini_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @update_ini_callback(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @SetupFindFirstLineW(i32 %17, i32 %18, i32* null, i32* %7)
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %85, %3
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %87

23:                                               ; preds = %20
  %24 = load i32, i32* @MAX_INF_STRING_LENGTH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %28 = load i32, i32* @MAX_INF_STRING_LENGTH, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i64, i64 %29, align 16
  store i64 %29, i64* %11, align 8
  %31 = load i32, i32* @MAX_INF_STRING_LENGTH, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i64, i64 %32, align 16
  store i64 %32, i64* %12, align 8
  %34 = load i32, i32* @MAX_INF_STRING_LENGTH, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i64, i64 %35, align 16
  store i64 %35, i64* %13, align 8
  %37 = load i32, i32* @MAX_INF_STRING_LENGTH, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i64, i64 %38, align 16
  store i64 %38, i64* %14, align 8
  %40 = mul nuw i64 8, %29
  %41 = udiv i64 %40, 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @SetupGetStringFieldW(i32* %7, i32 1, i64* %30, i32 %42, i32* null)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %23
  store i32 4, i32* %16, align 4
  br label %81

46:                                               ; preds = %23
  %47 = mul nuw i64 8, %32
  %48 = udiv i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @SetupGetStringFieldW(i32* %7, i32 2, i64* %33, i32 %49, i32* null)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  store i32 4, i32* %16, align 4
  br label %81

53:                                               ; preds = %46
  %54 = mul nuw i64 8, %25
  %55 = udiv i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @SetupGetStringFieldW(i32* %7, i32 4, i64* %27, i32 %56, i32* null)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  store i32 4, i32* %16, align 4
  br label %81

60:                                               ; preds = %53
  %61 = call i64* @strchrW(i64* %27, i8 signext 61)
  store i64* %61, i64** %15, align 8
  %62 = load i64*, i64** %15, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i64*, i64** %15, align 8
  store i64 0, i64* %65, align 8
  %66 = call i32 @strcpyW(i64* %36, i64* %27)
  %67 = load i64*, i64** %15, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %15, align 8
  %69 = load i64*, i64** %15, align 8
  %70 = call i32 @strcpyW(i64* %39, i64* %69)
  br label %74

71:                                               ; preds = %60
  %72 = call i32 @strcpyW(i64* %36, i64* %27)
  %73 = getelementptr inbounds i64, i64* %39, i64 0
  store i64 0, i64* %73, align 16
  br label %74

74:                                               ; preds = %71, %64
  %75 = call i32 @debugstr_w(i64* %36)
  %76 = call i32 @debugstr_w(i64* %39)
  %77 = call i32 @debugstr_w(i64* %33)
  %78 = call i32 @debugstr_w(i64* %30)
  %79 = call i32 @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = call i32 @WritePrivateProfileStringW(i64* %33, i64* %36, i64* %39, i64* %30)
  store i32 0, i32* %16, align 4
  br label %81

81:                                               ; preds = %74, %59, %52, %45
  %82 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %16, align 4
  switch i32 %83, label %89 [
    i32 0, label %84
    i32 4, label %85
  ]

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84, %81
  %86 = call i64 @SetupFindNextLine(i32* %7, i32* %7)
  store i64 %86, i64* %8, align 8
  br label %20

87:                                               ; preds = %20
  %88 = load i64, i64* @TRUE, align 8
  ret i64 %88

89:                                               ; preds = %81
  unreachable
}

declare dso_local i64 @SetupFindFirstLineW(i32, i32, i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SetupGetStringFieldW(i32*, i32, i64*, i32, i32*) #1

declare dso_local i64* @strchrW(i64*, i8 signext) #1

declare dso_local i32 @strcpyW(i64*, i64*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @debugstr_w(i64*) #1

declare dso_local i32 @WritePrivateProfileStringW(i64*, i64*, i64*, i64*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @SetupFindNextLine(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
