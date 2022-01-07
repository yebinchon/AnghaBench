; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_serial.c_ShowCursorSerial.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_serial.c_ShowCursorSerial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i32 }

@TRUE = common dso_local global i64 0, align 8
@bCursorEnabled = common dso_local global i64 0, align 8
@packet = common dso_local global i64 0, align 8
@PACKET_TYPE_CURSOR = common dso_local global i32 0, align 4
@wWindow = common dso_local global %struct.TYPE_4__* null, align 8
@OUTPUT_WINDOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ShowCursorSerial() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @ENTER_FUNC()
  %4 = load i64, i64* @TRUE, align 8
  store i64 %4, i64* @bCursorEnabled, align 8
  %5 = load i64, i64* @packet, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %1, align 8
  %7 = load i32, i32* @PACKET_TYPE_CURSOR, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 8
  %10 = load i64, i64* @TRUE, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wWindow, align 8
  %15 = load i64, i64* @OUTPUT_WINDOW, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wWindow, align 8
  %23 = load i64, i64* @OUTPUT_WINDOW, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %31 = ptrtoint %struct.TYPE_3__* %30 to i32
  %32 = call i32 @AssemblePacket(i32 %31, i32 4)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @SendPacket(i32 %33)
  %35 = call i32 (...) @LEAVE_FUNC()
  ret void
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @AssemblePacket(i32, i32) #1

declare dso_local i32 @SendPacket(i32) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
