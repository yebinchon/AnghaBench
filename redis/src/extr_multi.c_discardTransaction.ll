; ModuleID = '/home/carl/AnghaBench/redis/src/extr_multi.c_discardTransaction.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_multi.c_discardTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@CLIENT_MULTI = common dso_local global i32 0, align 4
@CLIENT_DIRTY_CAS = common dso_local global i32 0, align 4
@CLIENT_DIRTY_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @discardTransaction(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = call i32 @freeClientMultiState(%struct.TYPE_6__* %3)
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = call i32 @initClientMultiState(%struct.TYPE_6__* %5)
  %7 = load i32, i32* @CLIENT_MULTI, align 4
  %8 = load i32, i32* @CLIENT_DIRTY_CAS, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @CLIENT_DIRTY_EXEC, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = call i32 @unwatchAllKeys(%struct.TYPE_6__* %17)
  ret void
}

declare dso_local i32 @freeClientMultiState(%struct.TYPE_6__*) #1

declare dso_local i32 @initClientMultiState(%struct.TYPE_6__*) #1

declare dso_local i32 @unwatchAllKeys(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
