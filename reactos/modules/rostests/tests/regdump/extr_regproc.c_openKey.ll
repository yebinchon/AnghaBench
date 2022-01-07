; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regproc.c_openKey.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regproc.c_openKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@currentKeyClass = common dso_local global i64 0, align 8
@currentKeyName = common dso_local global i32* null, align 8
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@currentKeyHandle = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@bTheKeyIsOpen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @openKey(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %9, i64* %2, align 8
  br label %38

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @getRegClass(i32* %11)
  store i64 %12, i64* @currentKeyClass, align 8
  %13 = load i64, i64* @currentKeyClass, align 8
  %14 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %17, i64* %2, align 8
  br label %38

18:                                               ; preds = %10
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @getRegKeyName(i32* %19)
  store i32* %20, i32** @currentKeyName, align 8
  %21 = load i32*, i32** @currentKeyName, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %24, i64* %2, align 8
  br label %38

25:                                               ; preds = %18
  %26 = load i64, i64* @currentKeyClass, align 8
  %27 = load i32*, i32** @currentKeyName, align 8
  %28 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %29 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %30 = call i64 @RegCreateKeyEx(i64 %26, i32* %27, i32 0, i32* null, i32 %28, i32 %29, i32* null, i32* @currentKeyHandle, i32* %4)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* @bTheKeyIsOpen, align 4
  br label %36

36:                                               ; preds = %34, %25
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %36, %23, %16, %8
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i64 @getRegClass(i32*) #1

declare dso_local i32* @getRegKeyName(i32*) #1

declare dso_local i64 @RegCreateKeyEx(i64, i32*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
