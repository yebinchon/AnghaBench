; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_Len.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_Len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@VT_NULL = common dso_local global i64 0, align 8
@VT_BSTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @Global_Len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Global_Len(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @debugstr_variant(i32* %13)
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @V_VT(i32* %16)
  %18 = load i64, i64* @VT_NULL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @return_null(i32* %21)
  store i32 %22, i32* %5, align 4
  br label %49

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @V_VT(i32* %24)
  %26 = load i64, i64* @VT_BSTR, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @to_string(i32* %29, i32* %12)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @FAILED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %49

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @SysStringLen(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @SysFreeString(i32 %39)
  br label %45

41:                                               ; preds = %23
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @V_BSTR(i32* %42)
  %44 = call i32 @SysStringLen(i32 %43)
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @return_int(i32* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %34, %20
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i32 @return_null(i32*) #1

declare dso_local i32 @to_string(i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @SysStringLen(i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @V_BSTR(i32*) #1

declare dso_local i32 @return_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
