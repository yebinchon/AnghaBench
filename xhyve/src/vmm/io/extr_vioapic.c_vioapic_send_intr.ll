; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vioapic.c_vioapic_send_intr.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vioapic.c_vioapic_send_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vioapic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REDIR_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"vioapic_set_pinstate: invalid pin number %d\00", align 1
@IOART_INTMASK = common dso_local global i32 0, align 4
@IOART_INTMSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ioapic pin%d: masked\00", align 1
@IOART_DESTMOD = common dso_local global i32 0, align 4
@IOART_DESTPHY = common dso_local global i32 0, align 4
@IOART_DELMOD = common dso_local global i32 0, align 4
@IOART_TRGRLVL = common dso_local global i32 0, align 4
@IOART_REM_IRR = common dso_local global i32 0, align 4
@IOART_INTVEC = common dso_local global i32 0, align 4
@APIC_ID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vioapic*, i32)* @vioapic_send_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vioapic_send_intr(%struct.vioapic* %0, i32 %1) #0 {
  %3 = alloca %struct.vioapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vioapic* %0, %struct.vioapic** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @REDIR_ENTRIES, align 4
  %17 = icmp slt i32 %15, %16
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i1 [ false, %2 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %20, i8* %23)
  %25 = load %struct.vioapic*, %struct.vioapic** %3, align 8
  %26 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.vioapic*, %struct.vioapic** %3, align 8
  %34 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 32
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @IOART_INTMASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @IOART_INTMSET, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %18
  %48 = load %struct.vioapic*, %struct.vioapic** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @VIOAPIC_CTR1(%struct.vioapic* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %96

51:                                               ; preds = %18
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @IOART_DESTMOD, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @IOART_DESTPHY, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @IOART_DELMOD, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @IOART_TRGRLVL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %51
  %70 = load i32, i32* @IOART_REM_IRR, align 4
  %71 = load %struct.vioapic*, %struct.vioapic** %3, align 8
  %72 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %70
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %69, %51
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @IOART_INTVEC, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @APIC_ID_SHIFT, align 4
  %86 = ashr i32 %84, %85
  store i32 %86, i32* %9, align 4
  %87 = load %struct.vioapic*, %struct.vioapic** %3, align 8
  %88 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @vlapic_deliver_intr(i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %80, %47
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VIOAPIC_CTR1(%struct.vioapic*, i8*, i32) #1

declare dso_local i32 @vlapic_deliver_intr(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
