; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_multiplex.c_multiplexShmLock.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_multiplex.c_multiplexShmLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { {}* }
%struct.TYPE_9__ = type { i32 }

@SQLITE_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i32)* @multiplexShmLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiplexShmLock(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = bitcast %struct.TYPE_8__* %13 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %10, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_8__* @multiplexSubOpen(i32 %17, i32 0, i32* %11, i32* null, i32 0)
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %12, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.TYPE_8__*, i32, i32, i32)**
  %27 = load i32 (%struct.TYPE_8__*, i32, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32, i32)** %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 %27(%struct.TYPE_8__* %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %35

33:                                               ; preds = %4
  %34 = load i32, i32* @SQLITE_BUSY, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %21
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.TYPE_8__* @multiplexSubOpen(i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
