; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wshom.ocx/extr_wshom_main.c_init_classinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wshom.ocx/extr_wshom_main.c_init_classinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.provideclassinfo = type { i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@provideclassinfovtbl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_classinfo(i32* %0, i32* %1, %struct.provideclassinfo* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.provideclassinfo*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.provideclassinfo* %2, %struct.provideclassinfo** %6, align 8
  %7 = load %struct.provideclassinfo*, %struct.provideclassinfo** %6, align 8
  %8 = getelementptr inbounds %struct.provideclassinfo, %struct.provideclassinfo* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32* @provideclassinfovtbl, i32** %9, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.provideclassinfo*, %struct.provideclassinfo** %6, align 8
  %12 = getelementptr inbounds %struct.provideclassinfo, %struct.provideclassinfo* %11, i32 0, i32 1
  store i32* %10, i32** %12, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.provideclassinfo*, %struct.provideclassinfo** %6, align 8
  %15 = getelementptr inbounds %struct.provideclassinfo, %struct.provideclassinfo* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
