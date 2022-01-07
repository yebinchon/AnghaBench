; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_dictionary.c_create_dict_enum.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_dictionary.c_create_dict_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.dictionary_enum = type { i32, %struct.TYPE_4__, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@dictenumvtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32**)* @create_dict_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_dict_enum(%struct.TYPE_5__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.dictionary_enum*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %7 = load i32**, i32*** %5, align 8
  store i32* null, i32** %7, align 8
  %8 = call %struct.dictionary_enum* @heap_alloc(i32 32)
  store %struct.dictionary_enum* %8, %struct.dictionary_enum** %6, align 8
  %9 = load %struct.dictionary_enum*, %struct.dictionary_enum** %6, align 8
  %10 = icmp ne %struct.dictionary_enum* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %12, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.dictionary_enum*, %struct.dictionary_enum** %6, align 8
  %15 = getelementptr inbounds %struct.dictionary_enum, %struct.dictionary_enum* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32* @dictenumvtbl, i32** %16, align 8
  %17 = load %struct.dictionary_enum*, %struct.dictionary_enum** %6, align 8
  %18 = getelementptr inbounds %struct.dictionary_enum, %struct.dictionary_enum* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = call i32 @list_head(i32* %20)
  %22 = load %struct.dictionary_enum*, %struct.dictionary_enum** %6, align 8
  %23 = getelementptr inbounds %struct.dictionary_enum, %struct.dictionary_enum* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.dictionary_enum*, %struct.dictionary_enum** %6, align 8
  %27 = getelementptr inbounds %struct.dictionary_enum, %struct.dictionary_enum* %26, i32 0, i32 3
  %28 = call i32 @list_add_tail(i32* %25, i32* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = load %struct.dictionary_enum*, %struct.dictionary_enum** %6, align 8
  %31 = getelementptr inbounds %struct.dictionary_enum, %struct.dictionary_enum* %30, i32 0, i32 2
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @IDictionary_AddRef(i32* %33)
  %35 = load %struct.dictionary_enum*, %struct.dictionary_enum** %6, align 8
  %36 = getelementptr inbounds %struct.dictionary_enum, %struct.dictionary_enum* %35, i32 0, i32 1
  %37 = bitcast %struct.TYPE_4__* %36 to i32*
  %38 = load i32**, i32*** %5, align 8
  store i32* %37, i32** %38, align 8
  %39 = load i32, i32* @S_OK, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %13, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.dictionary_enum* @heap_alloc(i32) #1

declare dso_local i32 @list_head(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @IDictionary_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
