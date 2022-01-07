; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv_new/frontends/gui/extr_guiterm.c_GuiConsoleAppendMenuItems.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv_new/frontends/gui/extr_guiterm.c_GuiConsoleAppendMenuItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, %struct.TYPE_3__* }

@ConSrvDllInstance = common dso_local global i32 0, align 4
@MF_STRING = common dso_local global i32 0, align 4
@MF_POPUP = common dso_local global i32 0, align 4
@MF_SEPARATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @GuiConsoleAppendMenuItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GuiConsoleAppendMenuItems(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [255 x i32], align 16
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %99, %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, -1
  br i1 %15, label %16, label %71

16:                                               ; preds = %9
  %17 = load i32, i32* @ConSrvDllInstance, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds [255 x i32], [255 x i32]* %7, i64 0, i64 0
  %24 = call i64 @LoadStringW(i32 %17, i64 %22, i32* %23, i32 255)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %70

26:                                               ; preds = %16
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %59

33:                                               ; preds = %26
  %34 = call i32* (...) @CreatePopupMenu()
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = call i32 @GuiConsoleAppendMenuItems(i32* %38, %struct.TYPE_3__* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @MF_STRING, align 4
  %47 = load i32, i32* @MF_POPUP, align 4
  %48 = or i32 %46, %47
  %49 = load i32*, i32** %8, align 8
  %50 = ptrtoint i32* %49 to i64
  %51 = getelementptr inbounds [255 x i32], [255 x i32]* %7, i64 0, i64 0
  %52 = call i32 @AppendMenuW(i32* %45, i32 %48, i64 %50, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %37
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @DestroyMenu(i32* %55)
  br label %57

57:                                               ; preds = %54, %37
  br label %58

58:                                               ; preds = %57, %33
  br label %69

59:                                               ; preds = %26
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* @MF_STRING, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds [255 x i32], [255 x i32]* %7, i64 0, i64 0
  %68 = call i32 @AppendMenuW(i32* %60, i32 %61, i64 %66, i32* %67)
  br label %69

69:                                               ; preds = %59, %58
  br label %70

70:                                               ; preds = %69, %16
  br label %75

71:                                               ; preds = %9
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* @MF_SEPARATOR, align 4
  %74 = call i32 @AppendMenuW(i32* %72, i32 %73, i64 0, i32* null)
  br label %75

75:                                               ; preds = %71, %70
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %75
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %78
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = icmp eq %struct.TYPE_3__* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br label %99

99:                                               ; preds = %92, %85, %78
  %100 = phi i1 [ false, %85 ], [ false, %78 ], [ %98, %92 ]
  %101 = xor i1 %100, true
  br i1 %101, label %9, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @LoadStringW(i32, i64, i32*, i32) #1

declare dso_local i32* @CreatePopupMenu(...) #1

declare dso_local i32 @AppendMenuW(i32*, i32, i64, i32*) #1

declare dso_local i32 @DestroyMenu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
