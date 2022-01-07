; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_packetizer_helper.h_packetizer_Init.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_packetizer_helper.h_packetizer_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i32 }

@STATE_NOSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i8*)* @packetizer_Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packetizer_Init(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i8* %11) #0 {
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32* %4, i32** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i8* %11, i8** %24, align 8
  %25 = load i32, i32* @STATE_NOSYNC, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 13
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 12
  %30 = call i32 @block_BytestreamInit(i32* %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 11
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %18, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 10
  store i32* %36, i32** %38, align 8
  %39 = load i32, i32* %19, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 9
  store i32* %45, i32** %47, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %20, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %21, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %22, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %23, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load i8*, i8** %24, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  ret void
}

declare dso_local i32 @block_BytestreamInit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
