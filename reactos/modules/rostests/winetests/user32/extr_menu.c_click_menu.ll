; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_menu.c_click_menu.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_menu.c_click_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu_item_pair_s = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@hMenus = common dso_local global i32* null, align 8
@SM_CXSCREEN = common dso_local global i32 0, align 4
@SM_CYSCREEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@INPUT_MOUSE = common dso_local global i32 0, align 4
@MOUSEEVENTF_ABSOLUTE = common dso_local global i32 0, align 4
@MOUSEEVENTF_MOVE = common dso_local global i32 0, align 4
@MOUSEEVENTF_LEFTDOWN = common dso_local global i32 0, align 4
@MOUSEEVENTF_LEFTUP = common dso_local global i32 0, align 4
@PM_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.menu_item_pair_s*)* @click_menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @click_menu(i32* %0, %struct.menu_item_pair_s* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.menu_item_pair_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x %struct.TYPE_9__], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.menu_item_pair_s* %1, %struct.menu_item_pair_s** %5, align 8
  %13 = load i32*, i32** @hMenus, align 8
  %14 = load %struct.menu_item_pair_s*, %struct.menu_item_pair_s** %5, align 8
  %15 = getelementptr inbounds %struct.menu_item_pair_s, %struct.menu_item_pair_s* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @SM_CXSCREEN, align 4
  %20 = call i32 @GetSystemMetrics(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @SM_CYSCREEN, align 4
  %22 = call i32 @GetSystemMetrics(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.menu_item_pair_s*, %struct.menu_item_pair_s** %5, align 8
  %24 = getelementptr inbounds %struct.menu_item_pair_s, %struct.menu_item_pair_s* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %30

28:                                               ; preds = %2
  %29 = load i32*, i32** %4, align 8
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i32* [ null, %27 ], [ %29, %28 ]
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.menu_item_pair_s*, %struct.menu_item_pair_s** %5, align 8
  %34 = getelementptr inbounds %struct.menu_item_pair_s, %struct.menu_item_pair_s* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @GetMenuItemRect(i32* %31, i32 %32, i32 %35, %struct.TYPE_10__* %9)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %3, align 8
  br label %132

41:                                               ; preds = %30
  %42 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %7, i64 0, i64 0
  %43 = call i32 @memset(%struct.TYPE_9__* %42, i32 0, i32 48)
  %44 = load i32, i32* @INPUT_MOUSE, align 4
  %45 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %7, i64 0, i64 2
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %7, i64 0, i64 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  %49 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %7, i64 0, i64 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i32 %44, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 5
  %54 = mul nsw i32 %53, 65535
  %55 = load i32, i32* %10, align 4
  %56 = sdiv i32 %54, %55
  %57 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %7, i64 0, i64 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 16
  %61 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %7, i64 0, i64 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 %56, i32* %64, align 16
  %65 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %7, i64 0, i64 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 %56, i32* %68, align 16
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 5
  %72 = mul nsw i32 %71, 65535
  %73 = load i32, i32* %11, align 4
  %74 = sdiv i32 %72, %73
  %75 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %7, i64 0, i64 2
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  %79 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %7, i64 0, i64 1
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i32 %74, i32* %82, align 4
  %83 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %7, i64 0, i64 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store i32 %74, i32* %86, align 4
  %87 = load i32, i32* @MOUSEEVENTF_ABSOLUTE, align 4
  %88 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %7, i64 0, i64 2
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  store i32 %87, i32* %91, align 8
  %92 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %7, i64 0, i64 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  store i32 %87, i32* %95, align 8
  %96 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %7, i64 0, i64 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  store i32 %87, i32* %99, align 8
  %100 = load i32, i32* @MOUSEEVENTF_MOVE, align 4
  %101 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %7, i64 0, i64 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %100
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* @MOUSEEVENTF_LEFTDOWN, align 4
  %108 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %7, i64 0, i64 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %107
  store i32 %113, i32* %111, align 8
  %114 = load i32, i32* @MOUSEEVENTF_LEFTUP, align 4
  %115 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %7, i64 0, i64 2
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %114
  store i32 %120, i32* %118, align 8
  %121 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %7, i64 0, i64 0
  %122 = bitcast %struct.TYPE_9__* %121 to i32*
  %123 = call i64 @pSendInput(i32 3, i32* %122, i32 4)
  store i64 %123, i64* %12, align 8
  br label %124

124:                                              ; preds = %128, %41
  %125 = load i32, i32* @PM_REMOVE, align 4
  %126 = call i64 @PeekMessageA(i32* %8, i32 0, i32 0, i32 0, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call i32 @DispatchMessageA(i32* %8)
  br label %124

130:                                              ; preds = %124
  %131 = load i64, i64* %12, align 8
  store i64 %131, i64* %3, align 8
  br label %132

132:                                              ; preds = %130, %39
  %133 = load i64, i64* %3, align 8
  ret i64 %133
}

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i64 @GetMenuItemRect(i32*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @pSendInput(i32, i32*, i32) #1

declare dso_local i64 @PeekMessageA(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @DispatchMessageA(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
