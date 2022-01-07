; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regproc.c_getRegClass.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regproc.c_getRegClass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_MAX_LEN = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@REG_CLASS_NUMBER = common dso_local global i32 0, align 4
@reg_class_names = common dso_local global i32* null, align 8
@reg_class_keys = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getRegClass(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %10 = load i32, i32* @KEY_MAX_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i64*, i64** %3, align 8
  %15 = icmp eq i64* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %17, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %75

18:                                               ; preds = %1
  %19 = load i64*, i64** %3, align 8
  %20 = load i32, i32* @KEY_MAX_LEN, align 4
  %21 = call i32 @_tcsncpy(i64* %13, i64* %19, i32 %20)
  %22 = call i64 @_T(i8 signext 92)
  %23 = call i64* @_tcschr(i64* %13, i64 %22)
  store i64* %23, i64** %4, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %18
  %27 = call i32 @_tcslen(i64* %13)
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %13, i64 %28
  store i64* %29, i64** %4, align 8
  %30 = load i64*, i64** %4, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 -1
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @_T(i8 signext 93)
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i64*, i64** %4, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 -1
  store i64* %37, i64** %4, align 8
  br label %38

38:                                               ; preds = %35, %26
  br label %39

39:                                               ; preds = %38, %18
  %40 = call i64 @_T(i8 signext 0)
  %41 = load i64*, i64** %4, align 8
  store i64 %40, i64* %41, align 8
  %42 = getelementptr inbounds i64, i64* %13, i64 0
  %43 = load i64, i64* %42, align 16
  %44 = call i64 @_T(i8 signext 91)
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = getelementptr inbounds i64, i64* %13, i64 1
  store i64* %47, i64** %5, align 8
  br label %49

48:                                               ; preds = %39
  store i64* %13, i64** %5, align 8
  br label %49

49:                                               ; preds = %48, %46
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %70, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @REG_CLASS_NUMBER, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load i64*, i64** %5, align 8
  %56 = load i32*, i32** @reg_class_names, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @_tcscmp(i64* %55, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %54
  %64 = load i32*, i32** @reg_class_keys, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %75

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %50

73:                                               ; preds = %50
  %74 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %74, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %75

75:                                               ; preds = %73, %63, %16
  %76 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_tcsncpy(i64*, i64*, i32) #2

declare dso_local i64* @_tcschr(i64*, i64) #2

declare dso_local i64 @_T(i8 signext) #2

declare dso_local i32 @_tcslen(i64*) #2

declare dso_local i32 @_tcscmp(i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
