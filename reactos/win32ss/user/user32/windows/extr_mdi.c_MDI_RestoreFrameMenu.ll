; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDI_RestoreFrameMenu.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDI_RestoreFrameMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"frame %p,child %p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SC_RESTORE = common dso_local global i64 0, align 8
@SC_CLOSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"no system buttons then nothing to do\0A\00", align 1
@MIIM_DATA = common dso_local global i32 0, align 4
@MIIM_TYPE = common dso_local global i32 0, align 4
@MIIM_BITMAP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MF_BYPOSITION = common dso_local global i32 0, align 4
@MFT_BITMAP = common dso_local global i32 0, align 4
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@SC_MINIMIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @MDI_RestoreFrameMenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MDI_RestoreFrameMenu(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @GetMenu(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %4, align 4
  br label %95

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @GetMenuItemCount(i32 %22)
  %24 = sub nsw i64 %23, 1
  store i64 %24, i64* %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i64, i64* %10, align 8
  %27 = call i64 @GetMenuItemID(i32 %25, i64 %26)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @SC_RESTORE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %21
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @SC_CLOSE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = call i32 @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %4, align 4
  br label %95

38:                                               ; preds = %31, %21
  %39 = call i32 @memset(%struct.TYPE_4__* %8, i32 0, i32 32)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 32, i32* %40, align 8
  %41 = load i32, i32* @MIIM_DATA, align 4
  %42 = load i32, i32* @MIIM_TYPE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @MIIM_BITMAP, align 4
  %45 = or i32 %43, %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @TRUE, align 4
  %49 = call i32 @GetMenuItemInfoW(i32 %47, i32 0, i32 %48, %struct.TYPE_4__* %8)
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @MF_BYPOSITION, align 4
  %52 = call i32 @RemoveMenu(i32 %50, i32 0, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MFT_BITMAP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %38
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @DeleteObject(i64 %69)
  br label %71

71:                                               ; preds = %67, %62, %58, %38
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @DeleteObject(i64 %77)
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %9, align 4
  %81 = load i64, i64* @SC_CLOSE, align 8
  %82 = load i32, i32* @MF_BYCOMMAND, align 4
  %83 = call i32 @DeleteMenu(i32 %80, i64 %81, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load i64, i64* @SC_RESTORE, align 8
  %86 = load i32, i32* @MF_BYCOMMAND, align 4
  %87 = call i32 @DeleteMenu(i32 %84, i64 %85, i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = load i64, i64* @SC_MINIMIZE, align 8
  %90 = load i32, i32* @MF_BYCOMMAND, align 4
  %91 = call i32 @DeleteMenu(i32 %88, i64 %89, i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @DrawMenuBar(i32 %92)
  %94 = load i32, i32* @TRUE, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %79, %35, %19
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @GetMenu(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i64 @GetMenuItemCount(i32) #1

declare dso_local i64 @GetMenuItemID(i32, i64) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @GetMenuItemInfoW(i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @RemoveMenu(i32, i32, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @DeleteMenu(i32, i64, i32) #1

declare dso_local i32 @DrawMenuBar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
