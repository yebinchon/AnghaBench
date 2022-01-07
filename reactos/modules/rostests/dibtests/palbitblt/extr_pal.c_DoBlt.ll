; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/dibtests/palbitblt/extr_pal.c_DoBlt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/dibtests/palbitblt/extr_pal.c_DoBlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SRCCOPY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DoBlt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = call i32* (...) @GetActiveWindow()
  store i32* %8, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %38

11:                                               ; preds = %1
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @GetDC(i32* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @GetClientRect(i32* %14, %struct.TYPE_3__* %6)
  %16 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @SelectObject(i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SRCCOPY, align 4
  %27 = call i32 @BitBlt(i32 %20, i32 0, i32 0, i32 %22, i32 %24, i32 %25, i32 0, i32 0, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @SelectObject(i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @DeleteDC(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @DeleteObject(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @ReleaseDC(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32* @GetActiveWindow(...) #1

declare dso_local i32 @GetDC(i32*) #1

declare dso_local i32 @GetClientRect(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @ReleaseDC(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
