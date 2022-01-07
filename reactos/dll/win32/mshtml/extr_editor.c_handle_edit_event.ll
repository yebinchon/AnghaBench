; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_editor.c_handle_edit_event.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_editor.c_handle_edit_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_nsIDOMKeyEvent = common dso_local global i32 0, align 4
@handle_edit_event.cmds = internal constant [4 x i8*] [i8* inttoptr (i64 151 to i8*), i8* inttoptr (i64 128 to i8*), i8* inttoptr (i64 138 to i8*), i8* inttoptr (i64 130 to i8*)], align 16
@.str = private unnamed_addr constant [6 x i8] c"left\0A\00", align 1
@handle_edit_event.cmds.1 = internal constant [4 x i8*] [i8* inttoptr (i64 152 to i8*), i8* inttoptr (i64 129 to i8*), i8* inttoptr (i64 139 to i8*), i8* inttoptr (i64 131 to i8*)], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"right\0A\00", align 1
@handle_edit_event.cmds.3 = internal constant [4 x i8*] [i8* inttoptr (i64 146 to i8*), i8* inttoptr (i64 143 to i8*), i8* inttoptr (i64 135 to i8*), i8* inttoptr (i64 133 to i8*)], align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"up\0A\00", align 1
@handle_edit_event.cmds.5 = internal constant [4 x i8*] [i8* inttoptr (i64 147 to i8*), i8* inttoptr (i64 144 to i8*), i8* inttoptr (i64 136 to i8*), i8* inttoptr (i64 134 to i8*)], align 16
@.str.6 = private unnamed_addr constant [6 x i8] c"down\0A\00", align 1
@handle_edit_event.cmds.7 = internal constant [4 x i8*] [i8* inttoptr (i64 150 to i8*), i8* inttoptr (i64 149 to i8*), i8* null, i8* null], align 16
@.str.8 = private unnamed_addr constant [8 x i8] c"delete\0A\00", align 1
@handle_edit_event.cmds.9 = internal constant [4 x i8*] [i8* inttoptr (i64 153 to i8*), i8* inttoptr (i64 142 to i8*), i8* inttoptr (i64 141 to i8*), i8* inttoptr (i64 132 to i8*)], align 16
@.str.10 = private unnamed_addr constant [6 x i8] c"home\0A\00", align 1
@handle_edit_event.cmds.11 = internal constant [4 x i8*] [i8* inttoptr (i64 148 to i8*), i8* inttoptr (i64 145 to i8*), i8* inttoptr (i64 137 to i8*), i8* inttoptr (i64 140 to i8*)], align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_edit_event(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32** %5 to i8**
  %9 = call i32 @nsIDOMEvent_QueryInterface(i32* %7, i32* @IID_nsIDOMKeyEvent, i8** %8)
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @nsIDOMKeyEvent_GetKeyCode(i32* %10, i32* %6)
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %48 [
    i32 156, label %13
    i32 155, label %18
    i32 154, label %23
    i32 159, label %28
    i32 160, label %33
    i32 157, label %38
    i32 158, label %43
  ]

13:                                               ; preds = %2
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @handle_arrow_key(i32* %15, i32* %16, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @handle_edit_event.cmds, i64 0, i64 0))
  br label %48

18:                                               ; preds = %2
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @handle_arrow_key(i32* %20, i32* %21, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @handle_edit_event.cmds.1, i64 0, i64 0))
  br label %48

23:                                               ; preds = %2
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @handle_arrow_key(i32* %25, i32* %26, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @handle_edit_event.cmds.3, i64 0, i64 0))
  br label %48

28:                                               ; preds = %2
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @handle_arrow_key(i32* %30, i32* %31, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @handle_edit_event.cmds.5, i64 0, i64 0))
  br label %48

33:                                               ; preds = %2
  %34 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @handle_arrow_key(i32* %35, i32* %36, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @handle_edit_event.cmds.7, i64 0, i64 0))
  br label %48

38:                                               ; preds = %2
  %39 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @handle_arrow_key(i32* %40, i32* %41, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @handle_edit_event.cmds.9, i64 0, i64 0))
  br label %48

43:                                               ; preds = %2
  %44 = call i32 @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @handle_arrow_key(i32* %45, i32* %46, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @handle_edit_event.cmds.11, i64 0, i64 0))
  br label %48

48:                                               ; preds = %2, %43, %38, %33, %28, %23, %18, %13
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @nsIDOMKeyEvent_Release(i32* %49)
  ret void
}

declare dso_local i32 @nsIDOMEvent_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @nsIDOMKeyEvent_GetKeyCode(i32*, i32*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @handle_arrow_key(i32*, i32*, i8**) #1

declare dso_local i32 @nsIDOMKeyEvent_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
