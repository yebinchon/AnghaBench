; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CreateFontIndirect.c_Test_FontSelection.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CreateFontIndirect.c_Test_FontSelection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@g_Entries = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"charset not available: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_FontSelection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_FontSelection() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @CreateCompatibleDC(i32* null)
  store i32 %3, i32* %2, align 4
  store i64 0, i64* %1, align 8
  br label %4

4:                                                ; preds = %33, %0
  %5 = load i64, i64* %1, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_Entries, align 8
  %7 = call i64 @_countof(%struct.TYPE_4__* %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %4
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_Entries, align 8
  %12 = load i64, i64* %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @is_charset_font_installed(i32 %10, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %9
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_Entries, align 8
  %20 = load i64, i64* %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %32

25:                                               ; preds = %9
  %26 = load i32, i32* %2, align 4
  %27 = load i64, i64* %1, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_Entries, align 8
  %29 = load i64, i64* %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = call i32 @Test_FontSelectionEntry(i32 %26, i64 %27, %struct.TYPE_4__* %30)
  br label %32

32:                                               ; preds = %25, %18
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %1, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %1, align 8
  br label %4

36:                                               ; preds = %4
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @DeleteDC(i32 %37)
  ret void
}

declare dso_local i32 @CreateCompatibleDC(i32*) #1

declare dso_local i64 @_countof(%struct.TYPE_4__*) #1

declare dso_local i32 @is_charset_font_installed(i32, i32) #1

declare dso_local i32 @skip(i8*, i32) #1

declare dso_local i32 @Test_FontSelectionEntry(i32, i64, %struct.TYPE_4__*) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
