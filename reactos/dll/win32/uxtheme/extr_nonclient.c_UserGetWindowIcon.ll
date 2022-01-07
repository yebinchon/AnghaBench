; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_nonclient.c_UserGetWindowIcon.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_nonclient.c_UserGetWindowIcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@WM_GETICON = common dso_local global i32 0, align 4
@ICON_SMALL2 = common dso_local global i32 0, align 4
@SMTO_ABORTIFHUNG = common dso_local global i32 0, align 4
@ICON_SMALL = common dso_local global i32 0, align 4
@ICON_BIG = common dso_local global i32 0, align 4
@GCLP_HICONSM = common dso_local global i32 0, align 4
@GCLP_HICON = common dso_local global i32 0, align 4
@WS_EX_DLGMODALFRAME = common dso_local global i32 0, align 4
@IDI_WINLOGO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @UserGetWindowIcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @UserGetWindowIcon(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32* null, i32** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @WM_GETICON, align 4
  %8 = load i32, i32* @ICON_SMALL2, align 4
  %9 = load i32, i32* @SMTO_ABORTIFHUNG, align 4
  %10 = ptrtoint i32** %3 to i32
  %11 = call i32 @SendMessageTimeout(i32 %6, i32 %7, i32 %8, i32 0, i32 %9, i32 1000, i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WM_GETICON, align 4
  %19 = load i32, i32* @ICON_SMALL, align 4
  %20 = load i32, i32* @SMTO_ABORTIFHUNG, align 4
  %21 = ptrtoint i32** %3 to i32
  %22 = call i32 @SendMessageTimeout(i32 %17, i32 %18, i32 %19, i32 0, i32 %20, i32 1000, i32 %21)
  br label %23

23:                                               ; preds = %14, %1
  %24 = load i32*, i32** %3, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WM_GETICON, align 4
  %31 = load i32, i32* @ICON_BIG, align 4
  %32 = load i32, i32* @SMTO_ABORTIFHUNG, align 4
  %33 = ptrtoint i32** %3 to i32
  %34 = call i32 @SendMessageTimeout(i32 %29, i32 %30, i32 %31, i32 0, i32 %32, i32 1000, i32 %33)
  br label %35

35:                                               ; preds = %26, %23
  %36 = load i32*, i32** %3, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @GCLP_HICONSM, align 4
  %43 = call i64 @GetClassLongPtr(i32 %41, i32 %42)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %3, align 8
  br label %45

45:                                               ; preds = %38, %35
  %46 = load i32*, i32** %3, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GCLP_HICON, align 4
  %53 = call i64 @GetClassLongPtr(i32 %51, i32 %52)
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %3, align 8
  br label %55

55:                                               ; preds = %48, %45
  %56 = load i32*, i32** %3, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %55
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @WS_EX_DLGMODALFRAME, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load i64, i64* @IDI_WINLOGO, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32* @LoadIconW(i32* null, i32 %68)
  store i32* %69, i32** %3, align 8
  br label %70

70:                                               ; preds = %66, %58, %55
  %71 = load i32*, i32** %3, align 8
  ret i32* %71
}

declare dso_local i32 @SendMessageTimeout(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @GetClassLongPtr(i32, i32) #1

declare dso_local i32* @LoadIconW(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
