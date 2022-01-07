; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/extr_ports.c__LocalmonGetPortLevel2.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/extr_ports.c__LocalmonGetPortLevel2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64 }

@cbLocalMonitor = common dso_local global i64 0, align 8
@cbLocalPort = common dso_local global i64 0, align 8
@PORT_TYPE_WRITE = common dso_local global i32 0, align 4
@PORT_TYPE_READ = common dso_local global i32 0, align 4
@pwszLocalMonitor = common dso_local global i64 0, align 8
@pwszLocalPort = common dso_local global i64 0, align 8
@dwPortInfo2Offsets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__**, i32*, i32*)* @_LocalmonGetPortLevel2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_LocalmonGetPortLevel2(%struct.TYPE_6__* %0, %struct.TYPE_5__** %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x i64], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %12 = icmp ne %struct.TYPE_5__** %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @wcslen(i64 %16)
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 4, %23
  %25 = load i64, i64* @cbLocalMonitor, align 8
  %26 = add i64 %24, %25
  %27 = load i64, i64* @cbLocalPort, align 8
  %28 = add i64 %26, %27
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, %28
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  br label %64

34:                                               ; preds = %4
  %35 = load i32, i32* @PORT_TYPE_WRITE, align 4
  %36 = load i32, i32* @PORT_TYPE_READ, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  store i64 %46, i64* %47, align 16
  %48 = load i64, i64* @pwszLocalMonitor, align 8
  %49 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* @pwszLocalPort, align 8
  %51 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 2
  store i64 %50, i64* %51, align 16
  %52 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %53 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = ptrtoint %struct.TYPE_5__* %54 to i32
  %56 = load i32, i32* @dwPortInfo2Offsets, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @PackStrings(i64* %52, i32 %55, i32 %56, i32 %58)
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 1
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %61, align 8
  br label %64

64:                                               ; preds = %34, %13
  ret void
}

declare dso_local i32 @wcslen(i64) #1

declare dso_local i32 @PackStrings(i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
