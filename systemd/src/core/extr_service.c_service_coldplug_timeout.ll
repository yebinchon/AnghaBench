; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_coldplug_timeout.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_coldplug_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_12__, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@USEC_INFINITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @service_coldplug_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @service_coldplug_timeout(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %4 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %5 = call i32 @assert(%struct.TYPE_15__* %4)
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %69 [
    i32 140, label %9
    i32 133, label %9
    i32 135, label %9
    i32 134, label %9
    i32 137, label %9
    i32 136, label %19
    i32 132, label %29
    i32 129, label %29
    i32 130, label %29
    i32 131, label %29
    i32 138, label %29
    i32 139, label %29
    i32 128, label %39
    i32 142, label %48
    i32 141, label %58
  ]

9:                                                ; preds = %1, %1, %1, %1, %1
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = call %struct.TYPE_16__* @UNIT(%struct.TYPE_15__* %10)
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usec_add(i32 %14, i32 %17)
  store i32 %18, i32* %2, align 4
  br label %71

19:                                               ; preds = %1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = call %struct.TYPE_16__* @UNIT(%struct.TYPE_15__* %20)
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usec_add(i32 %24, i32 %27)
  store i32 %28, i32* %2, align 4
  br label %71

29:                                               ; preds = %1, %1, %1, %1, %1, %1
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = call %struct.TYPE_16__* @UNIT(%struct.TYPE_15__* %30)
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usec_add(i32 %34, i32 %37)
  store i32 %38, i32* %2, align 4
  br label %71

39:                                               ; preds = %1
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = call %struct.TYPE_16__* @UNIT(%struct.TYPE_15__* %40)
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = call i32 @service_timeout_abort_usec(%struct.TYPE_15__* %45)
  %47 = call i32 @usec_add(i32 %44, i32 %46)
  store i32 %47, i32* %2, align 4
  br label %71

48:                                               ; preds = %1
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = call %struct.TYPE_16__* @UNIT(%struct.TYPE_15__* %49)
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @usec_add(i32 %53, i32 %56)
  store i32 %57, i32* %2, align 4
  br label %71

58:                                               ; preds = %1
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %60 = call %struct.TYPE_16__* @UNIT(%struct.TYPE_15__* %59)
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @usec_add(i32 %63, i32 %67)
  store i32 %68, i32* %2, align 4
  br label %71

69:                                               ; preds = %1
  %70 = load i32, i32* @USEC_INFINITY, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %58, %48, %39, %29, %19, %9
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @assert(%struct.TYPE_15__*) #1

declare dso_local i32 @usec_add(i32, i32) #1

declare dso_local %struct.TYPE_16__* @UNIT(%struct.TYPE_15__*) #1

declare dso_local i32 @service_timeout_abort_usec(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
