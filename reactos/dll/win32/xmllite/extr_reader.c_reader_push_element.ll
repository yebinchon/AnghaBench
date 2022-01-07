; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_push_element.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_push_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.reader_position = type { i32 }
%struct.element = type { %struct.reader_position, i32, i32, i32, i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*, i32*, %struct.reader_position*)* @reader_push_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_push_element(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3, %struct.reader_position* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.reader_position*, align 8
  %12 = alloca %struct.element*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.reader_position* %4, %struct.reader_position** %11, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = call %struct.element* @reader_alloc_zero(%struct.TYPE_7__* %14, i32 20)
  store %struct.element* %15, %struct.element** %12, align 8
  %16 = load %struct.element*, %struct.element** %12, align 8
  %17 = icmp ne %struct.element* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %19, i32* %6, align 4
  br label %67

20:                                               ; preds = %5
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.element*, %struct.element** %12, align 8
  %24 = getelementptr inbounds %struct.element, %struct.element* %23, i32 0, i32 4
  %25 = call i32 @reader_strvaldup(%struct.TYPE_7__* %21, i32* %22, i32* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* @S_OK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %20
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.element*, %struct.element** %12, align 8
  %32 = getelementptr inbounds %struct.element, %struct.element* %31, i32 0, i32 3
  %33 = call i32 @reader_strvaldup(%struct.TYPE_7__* %29, i32* %30, i32* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* @S_OK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %28
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load %struct.element*, %struct.element** %12, align 8
  %40 = getelementptr inbounds %struct.element, %struct.element* %39, i32 0, i32 2
  %41 = call i32 @reader_strvaldup(%struct.TYPE_7__* %37, i32* %38, i32* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* @S_OK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %36
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load %struct.element*, %struct.element** %12, align 8
  %48 = getelementptr inbounds %struct.element, %struct.element* %47, i32 0, i32 1
  %49 = call i32 @list_add_head(i32* %46, i32* %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = load %struct.element*, %struct.element** %12, align 8
  %52 = call i32 @reader_mark_ns_nodes(%struct.TYPE_7__* %50, %struct.element* %51)
  %53 = load i32, i32* @FALSE, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.element*, %struct.element** %12, align 8
  %57 = getelementptr inbounds %struct.element, %struct.element* %56, i32 0, i32 0
  %58 = load %struct.reader_position*, %struct.reader_position** %11, align 8
  %59 = bitcast %struct.reader_position* %57 to i8*
  %60 = bitcast %struct.reader_position* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 4, i1 false)
  br label %65

61:                                               ; preds = %36, %28, %20
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = load %struct.element*, %struct.element** %12, align 8
  %64 = call i32 @reader_free_element(%struct.TYPE_7__* %62, %struct.element* %63)
  br label %65

65:                                               ; preds = %61, %44
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %18
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.element* @reader_alloc_zero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @reader_strvaldup(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

declare dso_local i32 @reader_mark_ns_nodes(%struct.TYPE_7__*, %struct.element*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @reader_free_element(%struct.TYPE_7__*, %struct.element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
