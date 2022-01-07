; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_ShellFolderContextMenu.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_ShellFolderContextMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i32, i32*, i32*, i64, i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@IID_IContextMenu = common dso_local global i32 0, align 4
@FCIDM_SHVIEWFIRST = common dso_local global i64 0, align 8
@FCIDM_SHVIEWLAST = common dso_local global i32 0, align 4
@CMF_NORMAL = common dso_local global i32 0, align 4
@TPM_LEFTALIGN = common dso_local global i32 0, align 4
@TPM_RETURNCMD = common dso_local global i32 0, align 4
@TPM_RIGHTBUTTON = common dso_local global i32 0, align 4
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32, i32)* @ShellFolderContextMenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ShellFolderContextMenu(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = bitcast i32** %13 to i32*
  %25 = call i32 @IShellFolder_GetUIObjectOf(i32* %20, i32 %21, i32 %22, i32* %23, i32* @IID_IContextMenu, i32* null, i32* %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = call i64 @SUCCEEDED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %84

29:                                               ; preds = %6
  %30 = call i64 (...) @CreatePopupMenu()
  store i64 %30, i64* %16, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32* @CtxMenu_query_interfaces(i32* %31)
  store i32* %32, i32** %13, align 8
  %33 = load i64, i64* %16, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %81

35:                                               ; preds = %29
  %36 = load i32*, i32** %13, align 8
  %37 = load i64, i64* %16, align 8
  %38 = load i64, i64* @FCIDM_SHVIEWFIRST, align 8
  %39 = load i32, i32* @FCIDM_SHVIEWLAST, align 4
  %40 = load i32, i32* @CMF_NORMAL, align 4
  %41 = call i32 @IContextMenu_QueryContextMenu(i32* %36, i64 %37, i32 0, i64 %38, i32 %39, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i64 @SUCCEEDED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %78

45:                                               ; preds = %35
  %46 = load i64, i64* %16, align 8
  %47 = load i32, i32* @TPM_LEFTALIGN, align 4
  %48 = load i32, i32* @TPM_RETURNCMD, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @TPM_RIGHTBUTTON, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @TrackPopupMenu(i64 %46, i32 %51, i32 %52, i32 %53, i32 0, i32 %54, i32* null)
  store i64 %55, i64* %17, align 8
  %56 = call i32 (...) @CtxMenu_reset()
  %57 = load i64, i64* %17, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %45
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 72, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 8
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 7
  store i32 %62, i32* %63, align 8
  %64 = load i64, i64* %17, align 8
  %65 = load i64, i64* @FCIDM_SHVIEWFIRST, align 8
  %66 = sub nsw i64 %64, %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 6
  store i64 %66, i64* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  store i32* null, i32** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  store i32* null, i32** %69, align 8
  %70 = load i32, i32* @SW_SHOWNORMAL, align 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  store i32 %70, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @IContextMenu_InvokeCommand(i32* %74, %struct.TYPE_3__* %18)
  store i32 %75, i32* %15, align 4
  %76 = load i64, i64* @TRUE, align 8
  store i64 %76, i64* %14, align 8
  br label %77

77:                                               ; preds = %59, %45
  br label %80

78:                                               ; preds = %35
  %79 = call i32 (...) @CtxMenu_reset()
  br label %80

80:                                               ; preds = %78, %77
  br label %81

81:                                               ; preds = %80, %29
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 @IContextMenu_Release(i32* %82)
  br label %84

84:                                               ; preds = %81, %6
  %85 = load i32, i32* %15, align 4
  %86 = call i64 @FAILED(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* %15, align 4
  br label %99

90:                                               ; preds = %84
  %91 = load i64, i64* %14, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @S_OK, align 4
  br label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @S_FALSE, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  br label %99

99:                                               ; preds = %97, %88
  %100 = phi i32 [ %89, %88 ], [ %98, %97 ]
  ret i32 %100
}

declare dso_local i32 @IShellFolder_GetUIObjectOf(i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i64 @CreatePopupMenu(...) #1

declare dso_local i32* @CtxMenu_query_interfaces(i32*) #1

declare dso_local i32 @IContextMenu_QueryContextMenu(i32*, i64, i32, i64, i32, i32) #1

declare dso_local i64 @TrackPopupMenu(i64, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @CtxMenu_reset(...) #1

declare dso_local i32 @IContextMenu_InvokeCommand(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @IContextMenu_Release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
