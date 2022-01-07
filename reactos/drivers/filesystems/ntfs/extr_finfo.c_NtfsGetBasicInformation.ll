; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_finfo.c_NtfsGetBasicInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_finfo.c_NtfsGetBasicInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"NtfsGetBasicInformation(%p, %p, %p, %p, %p)\0A\00", align 1
@STATUS_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_16__*, i32, %struct.TYPE_17__*, i32*)* @NtfsGetBasicInformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NtfsGetBasicInformation(i32 %0, %struct.TYPE_16__* %1, i32 %2, %struct.TYPE_17__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %12, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @DPRINT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %15, %struct.TYPE_16__* %16, i32 %17, %struct.TYPE_17__* %18, i32* %19)
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  store i32 %26, i32* %6, align 4
  br label %64

27:                                               ; preds = %5
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = call i32 @NtfsFileFlagsToAttributes(i32 %54, i32* %56)
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %27, %25
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @DPRINT(i8*, i32, %struct.TYPE_16__*, i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @NtfsFileFlagsToAttributes(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
