; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_vfstrace.c_vfstraceSectorSize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_vfstrace.c_vfstraceSectorSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_9__*)* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s.xSectorSize(%s)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vfstraceSectorSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfstraceSectorSize(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %4, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @vfstrace_printf(%struct.TYPE_7__* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = call i32 %25(%struct.TYPE_9__* %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @vfstrace_printf(%struct.TYPE_7__* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @vfstrace_printf(%struct.TYPE_7__*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
