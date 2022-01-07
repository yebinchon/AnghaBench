; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_olecmd.c_show_context_menu.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_olecmd.c_show_context_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@S_OK = common dso_local global i64 0, align 8
@IDR_BROWSE_CONTEXT_MENU = common dso_local global i32 0, align 4
@TPM_LEFTALIGN = common dso_local global i32 0, align 4
@TPM_RIGHTBUTTON = common dso_local global i32 0, align 4
@TPM_RETURNCMD = common dso_local global i32 0, align 4
@CGID_MSHTML = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_context_menu(%struct.TYPE_9__* %0, i64 %1, %struct.TYPE_8__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load i64, i64* @S_OK, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @IDocHostUIHandler_ShowContextMenu(i64 %20, i64 %21, %struct.TYPE_8__* %22, i32* %25, i32* %26)
  %28 = icmp eq i64 %17, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %64

30:                                               ; preds = %16, %4
  %31 = call i32 (...) @get_shdoclc()
  %32 = load i32, i32* @IDR_BROWSE_CONTEXT_MENU, align 4
  %33 = call i32 @MAKEINTRESOURCEW(i32 %32)
  %34 = call i32 @LoadMenuW(i32 %31, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @GetSubMenu(i32 %35, i64 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @TPM_LEFTALIGN, align 4
  %40 = load i32, i32* @TPM_RIGHTBUTTON, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @TPM_RETURNCMD, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @TrackPopupMenu(i32 %38, i32 %43, i32 %46, i32 %49, i32 0, i32 %52, i32* null)
  store i64 %53, i64* %11, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @DestroyMenu(i32 %54)
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %30
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @IOleCommandTarget_Exec(i32* %61, i32* @CGID_MSHTML, i64 %62, i32 0, i32* null, i32* null)
  br label %64

64:                                               ; preds = %29, %58, %30
  ret void
}

declare dso_local i64 @IDocHostUIHandler_ShowContextMenu(i64, i64, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @LoadMenuW(i32, i32) #1

declare dso_local i32 @get_shdoclc(...) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @GetSubMenu(i32, i64) #1

declare dso_local i64 @TrackPopupMenu(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @DestroyMenu(i32) #1

declare dso_local i32 @IOleCommandTarget_Exec(i32*, i32*, i64, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
