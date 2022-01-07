; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_synthesize_bitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_synthesize_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@E_FAIL = common dso_local global i32 0, align 4
@CBM_INIT = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@TYMED_GDI = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*)* @synthesize_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synthesize_bitmap(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %8 = load i32, i32* @E_FAIL, align 4
  store i32 %8, i32* %5, align 4
  %9 = call i32 @GetDC(i32 0)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.TYPE_10__* @GlobalLock(i32 %10)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %6, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* @CBM_INIT, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = bitcast %struct.TYPE_10__* %18 to i8*
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = load i32, i32* @DIB_RGB_COLORS, align 4
  %22 = call i32 @bitmap_info_size(%struct.TYPE_10__* %20, i32 %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = load i32, i32* @DIB_RGB_COLORS, align 4
  %27 = call i32 @CreateDIBitmap(i32 %14, i32* %16, i32 %17, i8* %24, %struct.TYPE_10__* %25, i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @GlobalUnlock(i32 %31)
  %33 = load i32, i32* @TYMED_GDI, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  %38 = load i32, i32* @S_OK, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %13, %2
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ReleaseDC(i32 0, i32 %40)
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local %struct.TYPE_10__* @GlobalLock(i32) #1

declare dso_local i32 @CreateDIBitmap(i32, i32*, i32, i8*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @bitmap_info_size(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
