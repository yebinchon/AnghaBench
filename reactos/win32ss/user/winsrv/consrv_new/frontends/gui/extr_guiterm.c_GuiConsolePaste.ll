; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv_new/frontends/gui/extr_guiterm.c_GuiConsolePaste.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv_new/frontends/gui/extr_guiterm.c_GuiConsolePaste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TEXTMODE_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @GuiConsolePaste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GuiConsolePaste(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @OpenClipboard(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @ConDrvGetActiveScreenBuffer(i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @GetType(i64 %17)
  %19 = load i64, i64* @TEXTMODE_BUFFER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load i64, i64* %5, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @GuiPasteToTextModeBuffer(i32 %23)
  br label %29

25:                                               ; preds = %11
  %26 = load i64, i64* %5, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @GuiPasteToGraphicsBuffer(i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = call i32 (...) @CloseClipboard()
  br label %31

31:                                               ; preds = %29, %1
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @OpenClipboard(i32) #1

declare dso_local i64 @ConDrvGetActiveScreenBuffer(i32) #1

declare dso_local i64 @GetType(i64) #1

declare dso_local i32 @GuiPasteToTextModeBuffer(i32) #1

declare dso_local i32 @GuiPasteToGraphicsBuffer(i32) #1

declare dso_local i32 @CloseClipboard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
