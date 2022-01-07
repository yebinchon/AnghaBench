; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/shlwapi/extr_PathFindOnPath.c_Test_PathFindOnPathW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/shlwapi/extr_PathFindOnPath.c_Test_PathFindOnPathW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@s_Entries = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_PathFindOnPathW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_PathFindOnPathW() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %17, %0
  %3 = load i64, i64* %1, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_Entries, align 8
  %5 = call i64 @_countof(%struct.TYPE_4__* %4)
  %6 = icmp ult i64 %3, %5
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_Entries, align 8
  %9 = load i64, i64* %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_Entries, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %14
  %16 = call i32 @DoEntry(i32 %12, %struct.TYPE_4__* %15, i32* null)
  br label %17

17:                                               ; preds = %7
  %18 = load i64, i64* %1, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %1, align 8
  br label %2

20:                                               ; preds = %2
  ret void
}

declare dso_local i64 @_countof(%struct.TYPE_4__*) #1

declare dso_local i32 @DoEntry(i32, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
