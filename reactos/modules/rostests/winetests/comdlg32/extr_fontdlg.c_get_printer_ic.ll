; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comdlg32/extr_fontdlg.c_get_printer_ic.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comdlg32/extr_fontdlg.c_get_printer_ic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@PRINTER_ENUM_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @get_printer_ic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_printer_ic() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i64 0, i64* %4, align 8
  store i32* null, i32** %6, align 8
  %7 = load i32, i32* @PRINTER_ENUM_LOCAL, align 4
  %8 = call i64 @EnumPrintersA(i32 %7, i32* null, i32 2, i32* null, i64 0, i64* %3, i64* %4)
  %9 = load i64, i64* %3, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32* null, i32** %1, align 8
  br label %36

12:                                               ; preds = %0
  %13 = call i32 (...) @GetProcessHeap()
  %14 = load i64, i64* %3, align 8
  %15 = call %struct.TYPE_4__* @HeapAlloc(i32 %13, i32 0, i64 %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %2, align 8
  %16 = load i32, i32* @PRINTER_ENUM_LOCAL, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = bitcast %struct.TYPE_4__* %17 to i32*
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @EnumPrintersA(i32 %16, i32* null, i32 2, i32* %18, i64 %19, i64* %3, i64* %4)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %12
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @CreateICA(i32 %26, i32 %29, i32* null, i32* null)
  store i32* %30, i32** %6, align 8
  br label %31

31:                                               ; preds = %23, %12
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = call i32 @HeapFree(i32 %32, i32 0, %struct.TYPE_4__* %33)
  %35 = load i32*, i32** %6, align 8
  store i32* %35, i32** %1, align 8
  br label %36

36:                                               ; preds = %31, %11
  %37 = load i32*, i32** %1, align 8
  ret i32* %37
}

declare dso_local i64 @EnumPrintersA(i32, i32*, i32, i32*, i64, i64*, i64*) #1

declare dso_local %struct.TYPE_4__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32* @CreateICA(i32, i32, i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
