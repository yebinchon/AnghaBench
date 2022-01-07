; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatGetPositionInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatGetPositionInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"VfatGetPositionInformation()\0A\00", align 1
@STATUS_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Getting position %I64x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*)* @VfatGetPositionInformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VfatGetPositionInformation(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, %struct.TYPE_15__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %13 = call i32 @UNREFERENCED_PARAMETER(%struct.TYPE_14__* %12)
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %15 = call i32 @UNREFERENCED_PARAMETER(%struct.TYPE_14__* %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %17 = call i32 @UNREFERENCED_PARAMETER(%struct.TYPE_14__* %16)
  %18 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @STATUS_BUFFER_OVERFLOW, align 4
  store i32 %24, i32* %6, align 4
  br label %44

25:                                               ; preds = %5
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  %43 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %25, %23
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @UNREFERENCED_PARAMETER(%struct.TYPE_14__*) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
