; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_delete.c_DELETE_get_dimensions.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_delete.c_DELETE_get_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_7__*, i32*, i64*)* }

@.str = private unnamed_addr constant [10 x i8] c"%p %p %p\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, i64*, i64*)* @DELETE_get_dimensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DELETE_get_dimensions(%struct.tagMSIVIEW* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tagMSIVIEW*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %10 = bitcast %struct.tagMSIVIEW* %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %11, i64* %12, i64* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %20, i64* %4, align 8
  br label %35

21:                                               ; preds = %3
  %22 = load i64*, i64** %6, align 8
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64 (%struct.TYPE_7__*, i32*, i64*)*, i64 (%struct.TYPE_7__*, i32*, i64*)** %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = call i64 %29(%struct.TYPE_7__* %32, i32* null, i64* %33)
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %21, %19
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_6__*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
