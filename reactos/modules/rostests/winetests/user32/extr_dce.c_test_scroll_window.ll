; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_dce.c_test_scroll_window.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_dce.c_test_scroll_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@hwnd_owndc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid clip box %s\0A\00", align 1
@SW_INVALIDATE = common dso_local global i32 0, align 4
@SW_ERASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_scroll_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_scroll_window() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = load i32, i32* @hwnd_owndc, align 4
  %6 = call i32 @UpdateWindow(i32 %5)
  %7 = call i32 @SetRect(%struct.TYPE_8__* %3, i32 25, i32 25, i32 50, i32 50)
  %8 = load i32, i32* @hwnd_owndc, align 4
  %9 = call i32 @ScrollWindow(i32 %8, i32 -5, i32 -10, i32* null, %struct.TYPE_8__* %3)
  %10 = load i32, i32* @hwnd_owndc, align 4
  %11 = call i32 @BeginPaint(i32 %10, i32* %1)
  store i32 %11, i32* %2, align 4
  %12 = call i32 @SetRectEmpty(%struct.TYPE_8__* %4)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @GetClipBox(i32 %13, %struct.TYPE_8__* %4)
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 25
  br i1 %17, label %18, label %30

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 25
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %24, 50
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %28, 50
  br label %30

30:                                               ; preds = %26, %22, %18, %0
  %31 = phi i1 [ false, %22 ], [ false, %18 ], [ false, %0 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @wine_dbgstr_rect(%struct.TYPE_8__* %4)
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @hwnd_owndc, align 4
  %36 = call i32 @EndPaint(i32 %35, i32* %1)
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @SetViewportExtEx(i32 %37, i32 2, i32 3, i32* null)
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @SetViewportOrgEx(i32 %39, i32 30, i32 20, i32* null)
  %41 = load i32, i32* @hwnd_owndc, align 4
  %42 = call i32 @ScrollWindow(i32 %41, i32 -5, i32 -10, i32* null, %struct.TYPE_8__* %3)
  %43 = load i32, i32* @hwnd_owndc, align 4
  %44 = call i32 @BeginPaint(i32 %43, i32* %1)
  store i32 %44, i32* %2, align 4
  %45 = call i32 @SetRectEmpty(%struct.TYPE_8__* %4)
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @GetClipBox(i32 %46, %struct.TYPE_8__* %4)
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 25
  br i1 %50, label %51, label %63

51:                                               ; preds = %30
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 25
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp sle i32 %57, 50
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %61, 50
  br label %63

63:                                               ; preds = %59, %55, %51, %30
  %64 = phi i1 [ false, %55 ], [ false, %51 ], [ false, %30 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @wine_dbgstr_rect(%struct.TYPE_8__* %4)
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @hwnd_owndc, align 4
  %69 = call i32 @EndPaint(i32 %68, i32* %1)
  %70 = load i32, i32* @hwnd_owndc, align 4
  %71 = load i32, i32* @SW_INVALIDATE, align 4
  %72 = load i32, i32* @SW_ERASE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @ScrollWindowEx(i32 %70, i32 -5, i32 -10, i32* null, %struct.TYPE_8__* %3, i32 0, i32* null, i32 %73)
  %75 = load i32, i32* @hwnd_owndc, align 4
  %76 = call i32 @BeginPaint(i32 %75, i32* %1)
  store i32 %76, i32* %2, align 4
  %77 = call i32 @SetRectEmpty(%struct.TYPE_8__* %4)
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @GetClipBox(i32 %78, %struct.TYPE_8__* %4)
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %81, -5
  br i1 %82, label %83, label %95

83:                                               ; preds = %63
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp sge i32 %85, 5
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp sle i32 %89, 20
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp sle i32 %93, 30
  br label %95

95:                                               ; preds = %91, %87, %83, %63
  %96 = phi i1 [ false, %87 ], [ false, %83 ], [ false, %63 ], [ %94, %91 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @wine_dbgstr_rect(%struct.TYPE_8__* %4)
  %99 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @hwnd_owndc, align 4
  %101 = call i32 @EndPaint(i32 %100, i32* %1)
  %102 = load i32, i32* %2, align 4
  %103 = call i32 @SetViewportExtEx(i32 %102, i32 1, i32 1, i32* null)
  %104 = load i32, i32* %2, align 4
  %105 = call i32 @SetViewportOrgEx(i32 %104, i32 0, i32 0, i32* null)
  %106 = load i32, i32* @hwnd_owndc, align 4
  %107 = load i32, i32* @SW_INVALIDATE, align 4
  %108 = load i32, i32* @SW_ERASE, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @ScrollWindowEx(i32 %106, i32 -5, i32 -10, i32* null, %struct.TYPE_8__* %3, i32 0, i32* null, i32 %109)
  %111 = load i32, i32* @hwnd_owndc, align 4
  %112 = call i32 @BeginPaint(i32 %111, i32* %1)
  store i32 %112, i32* %2, align 4
  %113 = call i32 @SetRectEmpty(%struct.TYPE_8__* %4)
  %114 = load i32, i32* %2, align 4
  %115 = call i32 @GetClipBox(i32 %114, %struct.TYPE_8__* %4)
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp sge i32 %117, 25
  br i1 %118, label %119, label %131

119:                                              ; preds = %95
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp sge i32 %121, 25
  br i1 %122, label %123, label %131

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = icmp sle i32 %125, 50
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp sle i32 %129, 50
  br label %131

131:                                              ; preds = %127, %123, %119, %95
  %132 = phi i1 [ false, %123 ], [ false, %119 ], [ false, %95 ], [ %130, %127 ]
  %133 = zext i1 %132 to i32
  %134 = call i32 @wine_dbgstr_rect(%struct.TYPE_8__* %4)
  %135 = call i32 @ok(i32 %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @hwnd_owndc, align 4
  %137 = call i32 @EndPaint(i32 %136, i32* %1)
  ret void
}

declare dso_local i32 @UpdateWindow(i32) #1

declare dso_local i32 @SetRect(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @ScrollWindow(i32, i32, i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @BeginPaint(i32, i32*) #1

declare dso_local i32 @SetRectEmpty(%struct.TYPE_8__*) #1

declare dso_local i32 @GetClipBox(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_8__*) #1

declare dso_local i32 @EndPaint(i32, i32*) #1

declare dso_local i32 @SetViewportExtEx(i32, i32, i32, i32*) #1

declare dso_local i32 @SetViewportOrgEx(i32, i32, i32, i32*) #1

declare dso_local i32 @ScrollWindowEx(i32, i32, i32, i32*, %struct.TYPE_8__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
