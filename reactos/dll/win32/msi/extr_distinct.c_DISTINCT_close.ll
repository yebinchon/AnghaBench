; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_distinct.c_DISTINCT_close.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_distinct.c_DISTINCT_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i64, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*)* }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tagMSIVIEW*)* @DISTINCT_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DISTINCT_close(%struct.tagMSIVIEW* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tagMSIVIEW*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %3, align 8
  %5 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %3, align 8
  %6 = bitcast %struct.tagMSIVIEW* %5 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @msi_free(i32* %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call i32 %30(%struct.TYPE_7__* %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %15, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @msi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
