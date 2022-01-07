; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_dictionary.c_add_keyitem_pair.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_dictionary.c_add_keyitem_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.list, i32 }
%struct.list = type { i32 }
%struct.keyitem_pair = type { i32, i32, i32, i32, i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*)* @add_keyitem_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_keyitem_pair(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.keyitem_pair*, align 8
  %9 = alloca %struct.list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @IDictionary_get_HashVal(i32* %13, i32* %14, i32* %10)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %92

21:                                               ; preds = %3
  %22 = call %struct.keyitem_pair* @heap_alloc(i32 20)
  store %struct.keyitem_pair* %22, %struct.keyitem_pair** %8, align 8
  %23 = load %struct.keyitem_pair*, %struct.keyitem_pair** %8, align 8
  %24 = icmp ne %struct.keyitem_pair* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %26, i32* %4, align 4
  br label %92

27:                                               ; preds = %21
  %28 = call i32 @V_I4(i32* %10)
  %29 = load %struct.keyitem_pair*, %struct.keyitem_pair** %8, align 8
  %30 = getelementptr inbounds %struct.keyitem_pair, %struct.keyitem_pair* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.keyitem_pair*, %struct.keyitem_pair** %8, align 8
  %32 = getelementptr inbounds %struct.keyitem_pair, %struct.keyitem_pair* %31, i32 0, i32 1
  %33 = call i32 @VariantInit(i32* %32)
  %34 = load %struct.keyitem_pair*, %struct.keyitem_pair** %8, align 8
  %35 = getelementptr inbounds %struct.keyitem_pair, %struct.keyitem_pair* %34, i32 0, i32 0
  %36 = call i32 @VariantInit(i32* %35)
  %37 = load %struct.keyitem_pair*, %struct.keyitem_pair** %8, align 8
  %38 = getelementptr inbounds %struct.keyitem_pair, %struct.keyitem_pair* %37, i32 0, i32 1
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @VariantCopyInd(i32* %38, i32* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @FAILED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  br label %82

45:                                               ; preds = %27
  %46 = load %struct.keyitem_pair*, %struct.keyitem_pair** %8, align 8
  %47 = getelementptr inbounds %struct.keyitem_pair, %struct.keyitem_pair* %46, i32 0, i32 0
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @VariantCopyInd(i32* %47, i32* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @FAILED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %82

54:                                               ; preds = %45
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = load %struct.keyitem_pair*, %struct.keyitem_pair** %8, align 8
  %57 = getelementptr inbounds %struct.keyitem_pair, %struct.keyitem_pair* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.list* @get_bucket_head(%struct.TYPE_4__* %55, i32 %58)
  store %struct.list* %59, %struct.list** %9, align 8
  %60 = load %struct.list*, %struct.list** %9, align 8
  %61 = getelementptr inbounds %struct.list, %struct.list* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %54
  %65 = load %struct.list*, %struct.list** %9, align 8
  %66 = call i32 @list_init(%struct.list* %65)
  br label %67

67:                                               ; preds = %64, %54
  %68 = load %struct.list*, %struct.list** %9, align 8
  %69 = load %struct.keyitem_pair*, %struct.keyitem_pair** %8, align 8
  %70 = getelementptr inbounds %struct.keyitem_pair, %struct.keyitem_pair* %69, i32 0, i32 3
  %71 = call i32 @list_add_tail(%struct.list* %68, i32* %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load %struct.keyitem_pair*, %struct.keyitem_pair** %8, align 8
  %75 = getelementptr inbounds %struct.keyitem_pair, %struct.keyitem_pair* %74, i32 0, i32 2
  %76 = call i32 @list_add_tail(%struct.list* %73, i32* %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @S_OK, align 4
  store i32 %81, i32* %4, align 4
  br label %92

82:                                               ; preds = %53, %44
  %83 = load %struct.keyitem_pair*, %struct.keyitem_pair** %8, align 8
  %84 = getelementptr inbounds %struct.keyitem_pair, %struct.keyitem_pair* %83, i32 0, i32 1
  %85 = call i32 @VariantClear(i32* %84)
  %86 = load %struct.keyitem_pair*, %struct.keyitem_pair** %8, align 8
  %87 = getelementptr inbounds %struct.keyitem_pair, %struct.keyitem_pair* %86, i32 0, i32 0
  %88 = call i32 @VariantClear(i32* %87)
  %89 = load %struct.keyitem_pair*, %struct.keyitem_pair** %8, align 8
  %90 = call i32 @heap_free(%struct.keyitem_pair* %89)
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %82, %67, %25, %19
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @IDictionary_get_HashVal(i32*, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local %struct.keyitem_pair* @heap_alloc(i32) #1

declare dso_local i32 @V_I4(i32*) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i32 @VariantCopyInd(i32*, i32*) #1

declare dso_local %struct.list* @get_bucket_head(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @list_init(%struct.list*) #1

declare dso_local i32 @list_add_tail(%struct.list*, i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @heap_free(%struct.keyitem_pair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
