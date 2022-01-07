; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_ldump.c_DumpFunction.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_ldump.c_DumpFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_15__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*, %struct.TYPE_15__*)* @DumpFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpFunction(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 6
  %9 = load i32*, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %3
  br label %22

18:                                               ; preds = %12
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 6
  %21 = load i32*, i32** %20, align 8
  br label %22

22:                                               ; preds = %18, %17
  %23 = phi i32* [ null, %17 ], [ %21, %18 ]
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = call i32 @DumpString(i32* %23, %struct.TYPE_15__* %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = call i32 @DumpInt(i32 %28, %struct.TYPE_15__* %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = call i32 @DumpInt(i32 %33, %struct.TYPE_15__* %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = call i32 @DumpChar(i32 %38, %struct.TYPE_15__* %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = call i32 @DumpChar(i32 %43, %struct.TYPE_15__* %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = call i32 @DumpChar(i32 %48, %struct.TYPE_15__* %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = call i32 @DumpChar(i32 %53, %struct.TYPE_15__* %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = call i32 @DumpCode(%struct.TYPE_14__* %56, %struct.TYPE_15__* %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = call i32 @DumpConstants(%struct.TYPE_14__* %59, %struct.TYPE_15__* %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = call i32 @DumpDebug(%struct.TYPE_14__* %62, %struct.TYPE_15__* %63)
  ret void
}

declare dso_local i32 @DumpString(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @DumpInt(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @DumpChar(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @DumpCode(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @DumpConstants(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @DumpDebug(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
