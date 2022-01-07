; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/gdihv/extr_mainwnd.c_MainWnd_OnNotify.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/gdihv/extr_mainwnd.c_MainWnd_OnNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@IDC_PROCESSLIST = common dso_local global i32 0, align 4
@LVIS_SELECTED = common dso_local global i32 0, align 4
@LVIF_PARAM = common dso_local global i32 0, align 4
@IDC_HANDLELIST = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @MainWnd_OnNotify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MainWnd_OnNotify(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %57 [
    i32 128, label %17
  ]

17:                                               ; preds = %3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = bitcast %struct.TYPE_8__* %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @IDC_PROCESSLIST, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LVIS_SELECTED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %23
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LVIS_SELECTED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %30
  %38 = call i32 @memset(%struct.TYPE_6__* %10, i32 0, i32 12)
  %39 = load i32, i32* @LVIF_PARAM, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @IDC_PROCESSLIST, align 4
  %47 = call i32 @GetDlgItem(i32 %45, i32 %46)
  %48 = call i32 @ListView_GetItem(i32 %47, %struct.TYPE_6__* %10)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @IDC_HANDLELIST, align 4
  %51 = call i32 @GetDlgItem(i32 %49, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @HandleList_Update(i32 %51, i32 %53)
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %4, align 4
  br label %58

56:                                               ; preds = %30, %23, %17
  br label %57

57:                                               ; preds = %3, %56
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ListView_GetItem(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @HandleList_Update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
