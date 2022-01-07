; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_comcat.c_CLSIDEnumGUID_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_comcat.c_CLSIDEnumGUID_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class_categories = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32, %struct.class_categories* }

@CLSIDEnumGUID_Construct.keyname = internal constant [6 x i8] c"CLSID\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@CLSIDEnumGUIDVtbl = common dso_local global i32 0, align 4
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.class_categories*, %struct.TYPE_5__**)* @CLSIDEnumGUID_Construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CLSIDEnumGUID_Construct(%struct.class_categories* %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.class_categories*, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.class_categories* %0, %struct.class_categories** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  %7 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  %8 = call i32 (...) @GetProcessHeap()
  %9 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %10 = call %struct.TYPE_6__* @HeapAlloc(i32 %8, i32 %9, i32 32)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %14, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32* @CLSIDEnumGUIDVtbl, i32** %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.class_categories*, %struct.class_categories** %4, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  store %struct.class_categories* %21, %struct.class_categories** %23, align 8
  %24 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %25 = load i32, i32* @KEY_READ, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = call i32 @open_classes_key(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @CLSIDEnumGUID_Construct.keyname, i64 0, i64 0), i32 %25, i32* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %31, align 8
  %32 = load i32, i32* @S_OK, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %15, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_6__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @open_classes_key(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
