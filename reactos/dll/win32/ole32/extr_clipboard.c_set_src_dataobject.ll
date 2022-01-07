; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_set_src_dataobject.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_set_src_dataobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32* }

@IID_IUnknown = common dso_local global i32 0, align 4
@IID_IDataObject = common dso_local global i32 0, align 4
@MSHCTX_LOCAL = common dso_local global i32 0, align 4
@MSHLFLAGS_TABLESTRONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @set_src_dataobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_src_dataobject(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = call i32 @get_clipbrd_window(%struct.TYPE_5__* %9, i32* %7)
  store i32 %10, i32* %6, align 4
  %11 = call i64 @FAILED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %70

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @release_marshal_data(i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @IDataObject_Release(i32* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = call i32 (...) @GetProcessHeap()
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @HeapFree(i32 %31, i32 0, i32* %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %20, %15
  %39 = load i32*, i32** %5, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %38
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @IDataObject_AddRef(i32* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = bitcast i32** %8 to i8**
  %49 = call i32 @IDataObject_QueryInterface(i32* %47, i32* @IID_IUnknown, i8** %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @MSHCTX_LOCAL, align 4
  %55 = load i32, i32* @MSHLFLAGS_TABLESTRONG, align 4
  %56 = call i32 @CoMarshalInterface(i32 %52, i32* @IID_IDataObject, i32* %53, i32 %54, i32* null, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @IUnknown_Release(i32* %57)
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @FAILED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %41
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %70

64:                                               ; preds = %41
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @set_clipboard_formats(%struct.TYPE_5__* %65, i32* %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %38
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %62, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @get_clipbrd_window(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @release_marshal_data(i32) #1

declare dso_local i32 @IDataObject_Release(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IDataObject_AddRef(i32*) #1

declare dso_local i32 @IDataObject_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @CoMarshalInterface(i32, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @set_clipboard_formats(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
