; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vioapic.c_vioapic_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vioapic.c_vioapic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vioapic = type { %struct.TYPE_2__*, %struct.vm* }
%struct.TYPE_2__ = type { i32 }
%struct.vm = type { i32 }

@REDIR_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vioapic* @vioapic_init(%struct.vm* %0) #0 {
  %2 = alloca %struct.vm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vioapic*, align 8
  store %struct.vm* %0, %struct.vm** %2, align 8
  %5 = call %struct.vioapic* @malloc(i32 16)
  store %struct.vioapic* %5, %struct.vioapic** %4, align 8
  %6 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %7 = call i32 @assert(%struct.vioapic* %6)
  %8 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %9 = call i32 @bzero(%struct.vioapic* %8, i32 16)
  %10 = load %struct.vm*, %struct.vm** %2, align 8
  %11 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %12 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %11, i32 0, i32 1
  store %struct.vm* %10, %struct.vm** %12, align 8
  %13 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %14 = call i32 @VIOAPIC_LOCK_INIT(%struct.vioapic* %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %27, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @REDIR_ENTRIES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %21 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 65536, i32* %26, align 4
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %15

30:                                               ; preds = %15
  %31 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  ret %struct.vioapic* %31
}

declare dso_local %struct.vioapic* @malloc(i32) #1

declare dso_local i32 @assert(%struct.vioapic*) #1

declare dso_local i32 @bzero(%struct.vioapic*, i32) #1

declare dso_local i32 @VIOAPIC_LOCK_INIT(%struct.vioapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
