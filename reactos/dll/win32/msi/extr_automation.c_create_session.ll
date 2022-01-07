; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_create_session.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_create_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32 }

@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@Session_tid = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @create_session(i32 %0, i32* %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = call %struct.TYPE_5__* @msi_alloc(i32 16)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %14, i64* %4, align 8
  br label %37

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @Session_tid, align 4
  %20 = call i64 @init_automation_object(%struct.TYPE_6__* %17, i32 %18, i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = call i32 @msi_free(%struct.TYPE_5__* %25)
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %4, align 8
  br label %37

28:                                               ; preds = %15
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32**, i32*** %7, align 8
  store i32* %34, i32** %35, align 8
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %28, %24, %13
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local %struct.TYPE_5__* @msi_alloc(i32) #1

declare dso_local i64 @init_automation_object(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @msi_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
