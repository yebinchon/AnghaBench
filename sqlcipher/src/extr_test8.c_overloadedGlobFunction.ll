; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test8.c_overloadedGlobFunction.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test8.c_overloadedGlobFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"::echo_glob_overload\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @overloadedGlobFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @overloadedGlobFunction(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @sqlite3_user_data(i32* %11)
  store i32* %12, i32** %7, align 8
  %13 = call i32 @Tcl_DStringInit(i32* %8)
  %14 = call i32 @Tcl_DStringAppendElement(i32* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %28, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i32**, i32*** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @sqlite3_value_text(i32* %24)
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @Tcl_DStringAppendElement(i32* %8, i8* %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %15

31:                                               ; preds = %15
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @Tcl_DStringValue(i32* %8)
  %34 = call i32 @Tcl_Eval(i32* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = call i32 @Tcl_DStringFree(i32* %8)
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @Tcl_GetStringResult(i32* %40)
  %42 = call i32 @sqlite3_result_error(i32* %39, i32 %41, i32 -1)
  br label %49

43:                                               ; preds = %31
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @Tcl_GetStringResult(i32* %45)
  %47 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %48 = call i32 @sqlite3_result_text(i32* %44, i32 %46, i32 -1, i32 %47)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @Tcl_ResetResult(i32* %50)
  ret void
}

declare dso_local i32* @sqlite3_user_data(i32*) #1

declare dso_local i32 @Tcl_DStringInit(i32*) #1

declare dso_local i32 @Tcl_DStringAppendElement(i32*, i8*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @Tcl_Eval(i32*, i32) #1

declare dso_local i32 @Tcl_DStringValue(i32*) #1

declare dso_local i32 @Tcl_DStringFree(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i32, i32) #1

declare dso_local i32 @Tcl_GetStringResult(i32*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i32, i32, i32) #1

declare dso_local i32 @Tcl_ResetResult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
