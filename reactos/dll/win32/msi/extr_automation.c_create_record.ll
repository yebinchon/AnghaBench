; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_create_record.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_create_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@Record_tid = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32**)* @create_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_record(i32 %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %8 = call %struct.TYPE_5__* @msi_alloc(i32 4)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %12, i64* %3, align 8
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @Record_tid, align 4
  %17 = call i64 @init_automation_object(%struct.TYPE_5__* %14, i32 %15, i32 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = call i32 @msi_free(%struct.TYPE_5__* %22)
  %24 = load i64, i64* %7, align 8
  store i64 %24, i64* %3, align 8
  br label %30

25:                                               ; preds = %13
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32**, i32*** %5, align 8
  store i32* %27, i32** %28, align 8
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %25, %21, %11
  %31 = load i64, i64* %3, align 8
  ret i64 %31
}

declare dso_local %struct.TYPE_5__* @msi_alloc(i32) #1

declare dso_local i64 @init_automation_object(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @msi_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
