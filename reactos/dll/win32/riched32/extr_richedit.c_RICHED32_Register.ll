; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched32/extr_richedit.c_RICHED32_Register.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched32/extr_richedit.c_RICHED32_Register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i64, i32 }

@CS_DBLCLKS = common dso_local global i32 0, align 4
@CS_HREDRAW = common dso_local global i32 0, align 4
@CS_VREDRAW = common dso_local global i32 0, align 4
@CS_GLOBALCLASS = common dso_local global i32 0, align 4
@RichEdit10ANSIWndProc = common dso_local global i32 0, align 4
@IDC_ARROW = common dso_local global i64 0, align 8
@COLOR_WINDOW = common dso_local global i64 0, align 8
@RICHEDIT_CLASS10A = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @RICHED32_Register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RICHED32_Register() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = call i32 @ZeroMemory(%struct.TYPE_4__* %1, i32 48)
  %3 = load i32, i32* @CS_DBLCLKS, align 4
  %4 = load i32, i32* @CS_HREDRAW, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @CS_VREDRAW, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @CS_GLOBALCLASS, align 4
  %9 = or i32 %7, %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @RichEdit10ANSIWndProc, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 6
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 8, i32* %14, align 4
  %15 = load i64, i64* @IDC_ARROW, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @LoadCursorA(i32 0, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  store i32 %17, i32* %18, align 8
  %19 = load i64, i64* @COLOR_WINDOW, align 8
  %20 = add nsw i64 %19, 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i64 %20, i64* %21, align 8
  %22 = load i32, i32* @RICHEDIT_CLASS10A, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = call i32 @RegisterClassA(%struct.TYPE_4__* %1)
  %25 = load i32, i32* @TRUE, align 4
  ret i32 %25
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @LoadCursorA(i32, i32) #1

declare dso_local i32 @RegisterClassA(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
