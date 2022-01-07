; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regproc.c_delete_registry_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regproc.c_delete_registry_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Incorrect registry class specification in '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't delete registry class '%s'\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_registry_key(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  br label %55

15:                                               ; preds = %9
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @getRegClass(i32* %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = call i32 @_T(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @_tprintf(i32 %22, i32* %23)
  br label %55

25:                                               ; preds = %15
  %26 = load i32*, i32** %2, align 8
  %27 = call i32* @getRegKeyName(i32* %26)
  store i32* %27, i32** %3, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @CHECK_ENOUGH_MEMORY(i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @_tcslen(i32* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  %37 = call i32 @_T(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @_tprintf(i32 %37, i32* %38)
  br label %55

40:                                               ; preds = %25
  %41 = load i64, i64* %5, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @RegOpenKey(i64 %41, i32* %42, i64* %6)
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @RegCloseKey(i64 %47)
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @delete_branch(i64 %49, i32** %3, i32* %4)
  br label %51

51:                                               ; preds = %46, %40
  %52 = call i32 (...) @GetProcessHeap()
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @HeapFree(i32 %52, i32 0, i32* %53)
  br label %55

55:                                               ; preds = %51, %36, %21, %14
  ret void
}

declare dso_local i64 @getRegClass(i32*) #1

declare dso_local i32 @_tprintf(i32, i32*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32* @getRegKeyName(i32*) #1

declare dso_local i32 @CHECK_ENOUGH_MEMORY(i32*) #1

declare dso_local i32 @_tcslen(i32*) #1

declare dso_local i64 @RegOpenKey(i64, i32*, i64*) #1

declare dso_local i32 @RegCloseKey(i64) #1

declare dso_local i32 @delete_branch(i64, i32**, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
