; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_Paste.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_Paste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@ES_READONLY = common dso_local global i32 0, align 4
@CF_UNICODETEXT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ES_PASSWORD = common dso_local global i32 0, align 4
@empty_stringW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @EDIT_WM_Paste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_WM_Paste(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ES_READONLY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @OpenClipboard(i32 %15)
  %17 = load i32, i32* @CF_UNICODETEXT, align 4
  %18 = call i32 @GetClipboardData(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @GlobalLock(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = load i32, i32* @TRUE, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i32 @EDIT_EM_ReplaceSel(%struct.TYPE_4__* %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @GlobalUnlock(i32 %29)
  br label %46

31:                                               ; preds = %12
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ES_PASSWORD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = load i32, i32* @TRUE, align 4
  %41 = load i32, i32* @empty_stringW, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i32 @EDIT_EM_ReplaceSel(%struct.TYPE_4__* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %31
  br label %46

46:                                               ; preds = %45, %20
  %47 = call i32 (...) @CloseClipboard()
  br label %48

48:                                               ; preds = %46, %11
  ret void
}

declare dso_local i32 @OpenClipboard(i32) #1

declare dso_local i32 @GetClipboardData(i32) #1

declare dso_local i32 @GlobalLock(i32) #1

declare dso_local i32 @EDIT_EM_ReplaceSel(%struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @CloseClipboard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
