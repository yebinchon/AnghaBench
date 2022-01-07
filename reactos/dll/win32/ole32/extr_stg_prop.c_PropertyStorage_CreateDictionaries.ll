; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stg_prop.c_PropertyStorage_CreateDictionaries.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stg_prop.c_PropertyStorage_CreateDictionaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8* }

@S_OK = common dso_local global i32 0, align 4
@PropertyStorage_PropNameCompare = common dso_local global i32 0, align 4
@PropertyStorage_PropNameDestroy = common dso_local global i32* null, align 8
@STG_E_INSUFFICIENTMEMORY = common dso_local global i32 0, align 4
@PropertyStorage_PropCompare = common dso_local global i32 0, align 4
@PropertyStorage_PropertyDestroy = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @PropertyStorage_CreateDictionaries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PropertyStorage_CreateDictionaries(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load i32, i32* @S_OK, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @PropertyStorage_PropNameCompare, align 4
  %6 = load i32*, i32** @PropertyStorage_PropNameDestroy, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = call i8* @dictionary_create(i32 %5, i32* %6, %struct.TYPE_5__* %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @STG_E_INSUFFICIENTMEMORY, align 4
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %1
  %18 = load i32, i32* @PropertyStorage_PropCompare, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = call i8* @dictionary_create(i32 %18, i32* null, %struct.TYPE_5__* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @STG_E_INSUFFICIENTMEMORY, align 4
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %17
  %30 = load i32, i32* @PropertyStorage_PropCompare, align 4
  %31 = load i32*, i32** @PropertyStorage_PropertyDestroy, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = call i8* @dictionary_create(i32 %30, i32* %31, %struct.TYPE_5__* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @STG_E_INSUFFICIENTMEMORY, align 4
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %40, %27, %15
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @FAILED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = call i32 @PropertyStorage_DestroyDictionaries(%struct.TYPE_5__* %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i8* @dictionary_create(i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @PropertyStorage_DestroyDictionaries(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
