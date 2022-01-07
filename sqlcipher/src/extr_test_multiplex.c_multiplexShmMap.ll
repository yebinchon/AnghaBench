; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_multiplex.c_multiplexShmMap.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_multiplex.c_multiplexShmMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { {}* }
%struct.TYPE_9__ = type { i32 }

@SQLITE_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i32, i8**)* @multiplexShmMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiplexShmMap(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = bitcast %struct.TYPE_8__* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %12, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_8__* @multiplexSubOpen(i32 %19, i32 0, i32* %13, i32* null, i32 0)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %14, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %5
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.TYPE_8__*, i32, i32, i32, i8**)**
  %29 = load i32 (%struct.TYPE_8__*, i32, i32, i32, i8**)*, i32 (%struct.TYPE_8__*, i32, i32, i32, i8**)** %28, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i8**, i8*** %11, align 8
  %35 = call i32 %29(%struct.TYPE_8__* %30, i32 %31, i32 %32, i32 %33, i8** %34)
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %5
  %37 = load i32, i32* @SQLITE_IOERR, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %23
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_8__* @multiplexSubOpen(i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
