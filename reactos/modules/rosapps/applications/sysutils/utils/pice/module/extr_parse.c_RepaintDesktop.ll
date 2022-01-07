; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_RepaintDesktop.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_RepaintDesktop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32* }

@OldSelector = common dso_local global i32 0, align 4
@OldOffset = common dso_local global i32 0, align 4
@ulLastDisassEndAddress = common dso_local global i64 0, align 8
@ulLastDisassStartAddress = common dso_local global i64 0, align 8
@wWindow = common dso_local global %struct.TYPE_7__* null, align 8
@OUTPUT_WINDOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RepaintDesktop() #0 {
  %1 = alloca %struct.TYPE_6__, align 8
  %2 = call i32 (...) @ENTER_FUNC()
  %3 = call i32 (...) @PrintTemplate()
  %4 = call i32 (...) @DisplayRegs()
  %5 = load i32, i32* @OldSelector, align 4
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @OldOffset, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %9, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 2, i32* %13, align 8
  %14 = call i32 @DisplayMemory(%struct.TYPE_6__* %1)
  %15 = call i32 @PICE_memset(%struct.TYPE_6__* %1, i32 0, i32 16)
  store i64 0, i64* @ulLastDisassEndAddress, align 8
  store i64 0, i64* @ulLastDisassStartAddress, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = call i32 @Unassemble(%struct.TYPE_6__* %1)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wWindow, align 8
  %19 = load i64, i64* @OUTPUT_WINDOW, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call i32 @PrintRingBuffer(i64 %23)
  %25 = load i64, i64* @OUTPUT_WINDOW, align 8
  %26 = call i32 @Print(i64 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 (...) @ShowStoppedMsg()
  %28 = call i32 (...) @ShowStatusLine()
  %29 = call i32 (...) @LEAVE_FUNC()
  ret void
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @PrintTemplate(...) #1

declare dso_local i32 @DisplayRegs(...) #1

declare dso_local i32 @DisplayMemory(%struct.TYPE_6__*) #1

declare dso_local i32 @PICE_memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @Unassemble(%struct.TYPE_6__*) #1

declare dso_local i32 @PrintRingBuffer(i64) #1

declare dso_local i32 @Print(i64, i8*) #1

declare dso_local i32 @ShowStoppedMsg(...) #1

declare dso_local i32 @ShowStatusLine(...) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
