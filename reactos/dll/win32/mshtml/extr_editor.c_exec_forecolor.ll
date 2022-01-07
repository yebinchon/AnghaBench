; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_editor.c_exec_forecolor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_editor.c_exec_forecolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"(%p)->(%p %p)\0A\00", align 1
@VT_I4 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"#%02x%02x%02x\00", align 1
@NSSTATE_ATTRIBUTE = common dso_local global i32 0, align 4
@NSCMD_FONTCOLOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unsupported forecolor %s\0A\00", align 1
@UPDATE_UI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"unsupported out\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @exec_forecolor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_forecolor(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [10 x i8], align 1
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %12, i32* %13, i32* %14)
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %56

18:                                               ; preds = %4
  %19 = load i32*, i32** %8, align 8
  %20 = call i64 @V_VT(i32* %19)
  %21 = load i64, i64* @VT_I4, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %18
  %24 = call i32* (...) @create_nscommand_params()
  store i32* %24, i32** %10, align 8
  %25 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @V_I4(i32* %26)
  %28 = and i32 %27, 255
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @V_I4(i32* %29)
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 255
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @V_I4(i32* %33)
  %35 = ashr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %32, i32 %36)
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* @NSSTATE_ATTRIBUTE, align 4
  %40 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %41 = call i32 @nsICommandParams_SetCStringValue(i32* %38, i32 %39, i8* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* @NSCMD_FONTCOLOR, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @do_ns_command(i32* %42, i32 %43, i32* %44)
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @nsICommandParams_Release(i32* %46)
  br label %52

48:                                               ; preds = %18
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @debugstr_variant(i32* %49)
  %51 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %23
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @UPDATE_UI, align 4
  %55 = call i32 @update_doc(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %4
  %57 = load i32*, i32** %9, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %61, i32* %5, align 4
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @S_OK, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @TRACE(i8*, i32*, i32*, i32*) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i32* @create_nscommand_params(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @V_I4(i32*) #1

declare dso_local i32 @nsICommandParams_SetCStringValue(i32*, i32, i8*) #1

declare dso_local i32 @do_ns_command(i32*, i32, i32*) #1

declare dso_local i32 @nsICommandParams_Release(i32*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i32 @update_doc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
