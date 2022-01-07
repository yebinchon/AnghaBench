; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_TLB_set_custdata.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_TLB_set_custdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32* }

@DISP_E_BADVARTYPE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list*, i32*, i32*)* @TLB_set_custdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TLB_set_custdata(%struct.list* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.list* %0, %struct.list** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = call i32 @V_VT(i32* %9)
  switch i32 %10, label %12 [
    i32 132, label %11
    i32 130, label %11
    i32 129, label %11
    i32 131, label %11
    i32 128, label %11
    i32 133, label %11
    i32 134, label %11
  ]

11:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  br label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @DISP_E_BADVARTYPE, align 4
  store i32 %13, i32* %4, align 4
  br label %47

14:                                               ; preds = %11
  %15 = load %struct.list*, %struct.list** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @TLB_get_guid_null(i32* %16)
  %18 = call %struct.TYPE_4__* @TLB_get_custdata_by_guid(%struct.list* %15, i32 %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %14
  %22 = call %struct.TYPE_4__* @heap_alloc(i32 16)
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %8, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %26, i32* %4, align 4
  br label %47

27:                                               ; preds = %21
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @VariantInit(i32* %32)
  %34 = load %struct.list*, %struct.list** %5, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = call i32 @list_add_tail(%struct.list* %34, i32* %36)
  br label %42

38:                                               ; preds = %14
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @VariantClear(i32* %40)
  br label %42

42:                                               ; preds = %38, %27
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @VariantCopy(i32* %44, i32* %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %25, %12
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @V_VT(i32*) #1

declare dso_local %struct.TYPE_4__* @TLB_get_custdata_by_guid(%struct.list*, i32) #1

declare dso_local i32 @TLB_get_guid_null(i32*) #1

declare dso_local %struct.TYPE_4__* @heap_alloc(i32) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i32 @list_add_tail(%struct.list*, i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @VariantCopy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
