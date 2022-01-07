; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfopen.c_dwarfclose.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfopen.c_dwarfclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { %struct.TYPE_20__* }
%struct.TYPE_13__ = type { %struct.TYPE_20__* }
%struct.TYPE_12__ = type { %struct.TYPE_20__* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.TYPE_16__ = type { %struct.TYPE_20__* }
%struct.TYPE_15__ = type { %struct.TYPE_20__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwarfclose(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %3 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 8
  %5 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %7 = call i32 @free(%struct.TYPE_20__* %6)
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 7
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %12 = call i32 @free(%struct.TYPE_20__* %11)
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %17 = call i32 @free(%struct.TYPE_20__* %16)
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %22 = call i32 @free(%struct.TYPE_20__* %21)
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %27 = call i32 @free(%struct.TYPE_20__* %26)
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %32 = call i32 @free(%struct.TYPE_20__* %31)
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = call i32 @free(%struct.TYPE_20__* %36)
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = call i32 @free(%struct.TYPE_20__* %41)
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pefree(i32 %45)
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %48 = call i32 @free(%struct.TYPE_20__* %47)
  ret void
}

declare dso_local i32 @free(%struct.TYPE_20__*) #1

declare dso_local i32 @pefree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
