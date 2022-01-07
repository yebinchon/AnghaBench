; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_alloc.c_prepend_alloc.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_alloc.c_prepend_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_20__*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }

@PINUSE_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_19__*, i8*, i8*, i64)* @prepend_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @prepend_alloc(%struct.TYPE_19__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call %struct.TYPE_20__* @align_as_chunk(i8* %17)
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call %struct.TYPE_20__* @align_as_chunk(i8* %19)
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %10, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %22 = bitcast %struct.TYPE_20__* %21 to i8*
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %24 = bitcast %struct.TYPE_20__* %23 to i8*
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  store i64 %27, i64* %11, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call %struct.TYPE_20__* @chunk_plus_offset(%struct.TYPE_20__* %28, i64 %29)
  store %struct.TYPE_20__* %30, %struct.TYPE_20__** %12, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %8, align 8
  %33 = sub i64 %31, %32
  store i64 %33, i64* %13, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @set_size_and_pinuse_of_inuse_chunk(%struct.TYPE_19__* %34, %struct.TYPE_20__* %35, i64 %36)
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = icmp eq %struct.TYPE_20__* %38, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %4
  %44 = load i64, i64* %13, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, %44
  store i64 %48, i64* %46, align 8
  store i64 %48, i64* %14, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 3
  store %struct.TYPE_20__* %49, %struct.TYPE_20__** %51, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* @PINUSE_BIT, align 8
  %54 = or i64 %52, %53
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %102

57:                                               ; preds = %4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %60, align 8
  %62 = icmp eq %struct.TYPE_20__* %58, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load i64, i64* %13, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, %64
  store i64 %68, i64* %66, align 8
  store i64 %68, i64* %15, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 2
  store %struct.TYPE_20__* %69, %struct.TYPE_20__** %71, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %73 = load i64, i64* %15, align 8
  %74 = call i32 @set_size_and_pinuse_of_free_chunk(%struct.TYPE_20__* %72, i64 %73)
  br label %101

75:                                               ; preds = %57
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %77 = call i32 @cinuse(%struct.TYPE_20__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %75
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %81 = call i64 @chunksize(%struct.TYPE_20__* %80)
  store i64 %81, i64* %16, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %84 = load i64, i64* %16, align 8
  %85 = call i32 @unlink_chunk(%struct.TYPE_19__* %82, %struct.TYPE_20__* %83, i64 %84)
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %87 = load i64, i64* %16, align 8
  %88 = call %struct.TYPE_20__* @chunk_plus_offset(%struct.TYPE_20__* %86, i64 %87)
  store %struct.TYPE_20__* %88, %struct.TYPE_20__** %10, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %13, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %13, align 8
  br label %92

92:                                               ; preds = %79, %75
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %96 = call i32 @set_free_with_pinuse(%struct.TYPE_20__* %93, i64 %94, %struct.TYPE_20__* %95)
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @insert_chunk(%struct.TYPE_19__* %97, %struct.TYPE_20__* %98, i64 %99)
  br label %101

101:                                              ; preds = %92, %63
  br label %102

102:                                              ; preds = %101, %43
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %104 = call i8* @chunk2mem(%struct.TYPE_20__* %103)
  ret i8* %104
}

declare dso_local %struct.TYPE_20__* @align_as_chunk(i8*) #1

declare dso_local %struct.TYPE_20__* @chunk_plus_offset(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @set_size_and_pinuse_of_inuse_chunk(%struct.TYPE_19__*, %struct.TYPE_20__*, i64) #1

declare dso_local i32 @set_size_and_pinuse_of_free_chunk(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @cinuse(%struct.TYPE_20__*) #1

declare dso_local i64 @chunksize(%struct.TYPE_20__*) #1

declare dso_local i32 @unlink_chunk(%struct.TYPE_19__*, %struct.TYPE_20__*, i64) #1

declare dso_local i32 @set_free_with_pinuse(%struct.TYPE_20__*, i64, %struct.TYPE_20__*) #1

declare dso_local i32 @insert_chunk(%struct.TYPE_19__*, %struct.TYPE_20__*, i64) #1

declare dso_local i8* @chunk2mem(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
