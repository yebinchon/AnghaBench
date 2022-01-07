; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_expose_marshalled_dataobject.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_expose_marshalled_dataobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GMEM_DDESHARE = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@wine_marshal_clipboard_format = common dso_local global i32 0, align 4
@CLIPBRD_E_CANT_SET = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @expose_marshalled_dataobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expose_marshalled_dataobject(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @GetHGlobalFromStream(i32 %13, i32* %7)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @GMEM_DDESHARE, align 4
  %17 = load i32, i32* @GMEM_MOVEABLE, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @dup_global_mem(i32 %15, i32 %18, i32* %6)
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @GMEM_DDESHARE, align 4
  %22 = load i32, i32* @GMEM_MOVEABLE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @GlobalAlloc(i32 %23, i32 1)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %20, %10
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %29, i32* %3, align 4
  br label %41

30:                                               ; preds = %25
  %31 = load i32, i32* @wine_marshal_clipboard_format, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @SetClipboardData(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @GlobalFree(i32 %36)
  %38 = load i32, i32* @CLIPBRD_E_CANT_SET, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @S_OK, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %35, %28
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @GetHGlobalFromStream(i32, i32*) #1

declare dso_local i32 @dup_global_mem(i32, i32, i32*) #1

declare dso_local i32 @GlobalAlloc(i32, i32) #1

declare dso_local i32 @SetClipboardData(i32, i32) #1

declare dso_local i32 @GlobalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
