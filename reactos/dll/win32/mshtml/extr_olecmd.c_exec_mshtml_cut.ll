; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_olecmd.c_exec_mshtml_cut.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_olecmd.c_exec_mshtml_cut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"(%p)->(%08x %p %p)\0A\00", align 1
@EDITMODE = common dso_local global i64 0, align 8
@E_UNEXPECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Paste failed: %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32*, i32*)* @exec_mshtml_cut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_mshtml_cut(%struct.TYPE_8__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %12, i32 %13, i32* %14, i32* %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EDITMODE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @editor_exec_cut(%struct.TYPE_8__* %25, i32 %26, i32* %27, i32* %28)
  store i32 %29, i32* %5, align 4
  br label %51

30:                                               ; preds = %4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = call i32* @get_clipboard_commands(%struct.TYPE_8__* %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %36, i32* %5, align 4
  br label %51

37:                                               ; preds = %30
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @nsIClipboardCommands_CutSelection(i32* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @nsIClipboardCommands_Release(i32* %40)
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @NS_FAILED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @E_FAIL, align 4
  store i32 %48, i32* %5, align 4
  br label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @S_OK, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %45, %35, %24
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_8__*, i32, i32*, i32*) #1

declare dso_local i32 @editor_exec_cut(%struct.TYPE_8__*, i32, i32*, i32*) #1

declare dso_local i32* @get_clipboard_commands(%struct.TYPE_8__*) #1

declare dso_local i32 @nsIClipboardCommands_CutSelection(i32*) #1

declare dso_local i32 @nsIClipboardCommands_Release(i32*) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
