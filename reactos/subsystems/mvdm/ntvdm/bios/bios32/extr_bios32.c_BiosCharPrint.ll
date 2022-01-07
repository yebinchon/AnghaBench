; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/bios32/extr_bios32.c_BiosCharPrint.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/bios32/extr_bios32.c_BiosCharPrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DEFAULT_ATTRIBUTE = common dso_local global i32 0, align 4
@Bda = common dso_local global %struct.TYPE_2__* null, align 8
@BiosContext = common dso_local global i32 0, align 4
@BIOS_VIDEO_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @BiosCharPrint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BiosCharPrint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 (...) @getAX()
  store i32 %6, i32* %4, align 4
  %7 = call i32 (...) @getBX()
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @setAL(i32 %8)
  %10 = load i32, i32* @DEFAULT_ATTRIBUTE, align 4
  %11 = call i32 @setBL(i32 %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bda, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @setBH(i32 %14)
  %16 = call i32 @setAH(i32 14)
  %17 = load i32, i32* @BIOS_VIDEO_INTERRUPT, align 4
  %18 = call i32 @Int32Call(i32* @BiosContext, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @setBX(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @setAX(i32 %21)
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @getAX(...) #1

declare dso_local i32 @getBX(...) #1

declare dso_local i32 @setAL(i32) #1

declare dso_local i32 @setBL(i32) #1

declare dso_local i32 @setBH(i32) #1

declare dso_local i32 @setAH(i32) #1

declare dso_local i32 @Int32Call(i32*, i32) #1

declare dso_local i32 @setBX(i32) #1

declare dso_local i32 @setAX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
