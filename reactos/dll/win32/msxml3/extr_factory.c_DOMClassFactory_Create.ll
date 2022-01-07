; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_factory.c_DOMClassFactory_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_factory.c_DOMClassFactory_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, i32, i32, i64 }
%struct.TYPE_6__ = type { i32* }

@DOMClassFactoryVtbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**, i32)* @DOMClassFactory_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DOMClassFactory_Create(i32* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call %struct.TYPE_5__* @heap_alloc(i32 24)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32* @DOMClassFactoryVtbl, i32** %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @get_msxml_version(i32* %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = load i8**, i8*** %7, align 8
  %28 = call i32 @IClassFactory_QueryInterface(%struct.TYPE_6__* %25, i32 %26, i8** %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = call i32 @heap_free(%struct.TYPE_5__* %33)
  %35 = load i8**, i8*** %7, align 8
  store i8* null, i8** %35, align 8
  br label %36

36:                                               ; preds = %32, %4
  %37 = load i32, i32* %10, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_5__* @heap_alloc(i32) #1

declare dso_local i32 @get_msxml_version(i32*) #1

declare dso_local i32 @IClassFactory_QueryInterface(%struct.TYPE_6__*, i32, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
