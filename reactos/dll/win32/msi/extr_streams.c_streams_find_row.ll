; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_streams.c_streams_find_row.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_streams.c_streams_find_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32*, i64*)* @streams_find_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @streams_find_row(%struct.TYPE_5__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32* @MSI_RecordGetString(i32* %13, i32 1)
  store i32* %14, i32** %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i64 @msi_string2id(i32 %19, i32* %20, i32 -1, i64* %11)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %4, align 8
  br label %58

27:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %53, %27
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %29, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %28
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @STREAMS_fetch_int(i32* %38, i64 %39, i32 1, i64* %12)
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load i64*, i64** %7, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64, i64* %10, align 8
  %49 = load i64*, i64** %7, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %51, i64* %4, align 8
  br label %58

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %10, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %10, align 8
  br label %28

56:                                               ; preds = %28
  %57 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %56, %50, %25
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

declare dso_local i32* @MSI_RecordGetString(i32*, i32) #1

declare dso_local i64 @msi_string2id(i32, i32*, i32, i64*) #1

declare dso_local i32 @STREAMS_fetch_int(i32*, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
