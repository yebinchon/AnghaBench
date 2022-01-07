; ModuleID = '/home/carl/AnghaBench/vlc/test/modules/packetizer/extr_packetizer.h_create_packetizer.c'
source_filename = "/home/carl/AnghaBench/vlc/test/modules/packetizer/extr_packetizer.h_create_packetizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__, %struct.TYPE_13__, i32*, i32* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@VIDEO_ES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"packetizer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_11__*, i32, i32, i32)* @create_packetizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @create_packetizer(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_12__* @vlc_object_create(i32 %13, i32 48)
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %10, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %58

18:                                               ; preds = %4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* @VIDEO_ES, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @es_format_Init(%struct.TYPE_13__* %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = load i32, i32* @VIDEO_ES, align 4
  %31 = call i32 @es_format_Init(%struct.TYPE_13__* %29, i32 %30, i32 0)
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = call i32 @module_need(%struct.TYPE_12__* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %18
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %55 = call i32 @delete_packetizer(%struct.TYPE_12__* %54)
  br label %56

56:                                               ; preds = %53, %18
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %5, align 8
  br label %58

58:                                               ; preds = %56, %17
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %59
}

declare dso_local %struct.TYPE_12__* @vlc_object_create(i32, i32) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @module_need(%struct.TYPE_12__*, i8*, i32*, i32) #1

declare dso_local i32 @delete_packetizer(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
