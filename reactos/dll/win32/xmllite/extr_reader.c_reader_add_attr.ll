; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_add_attr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_add_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.reader_position = type { i32 }
%struct.attribute = type { i32, i32, %struct.reader_position, i8*, i8*, i32, i32 }

@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8**, i8**, i8**, i8**, %struct.reader_position*, i32)* @reader_add_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reader_add_attr(%struct.TYPE_7__* %0, i8** %1, i8** %2, i8** %3, i8** %4, %struct.reader_position* %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.reader_position*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.attribute*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i8** %4, i8*** %13, align 8
  store %struct.reader_position* %5, %struct.reader_position** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = call %struct.attribute* @reader_alloc(%struct.TYPE_7__* %18, i32 40)
  store %struct.attribute* %19, %struct.attribute** %16, align 8
  %20 = load %struct.attribute*, %struct.attribute** %16, align 8
  %21 = icmp ne %struct.attribute* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %7
  %23 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %23, i64* %8, align 8
  br label %100

24:                                               ; preds = %7
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = load i8**, i8*** %11, align 8
  %27 = load %struct.attribute*, %struct.attribute** %16, align 8
  %28 = getelementptr inbounds %struct.attribute, %struct.attribute* %27, i32 0, i32 6
  %29 = call i64 @reader_strvaldup(%struct.TYPE_7__* %25, i8** %26, i32* %28)
  store i64 %29, i64* %17, align 8
  %30 = load i64, i64* %17, align 8
  %31 = load i64, i64* @S_OK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %24
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = load i8**, i8*** %13, align 8
  %36 = load %struct.attribute*, %struct.attribute** %16, align 8
  %37 = getelementptr inbounds %struct.attribute, %struct.attribute* %36, i32 0, i32 5
  %38 = call i64 @reader_strvaldup(%struct.TYPE_7__* %34, i8** %35, i32* %37)
  store i64 %38, i64* %17, align 8
  %39 = load i64, i64* %17, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = load %struct.attribute*, %struct.attribute** %16, align 8
  %45 = getelementptr inbounds %struct.attribute, %struct.attribute* %44, i32 0, i32 5
  %46 = call i32 @reader_free_strvalued(%struct.TYPE_7__* %43, i32* %45)
  br label %47

47:                                               ; preds = %42, %33
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = load %struct.attribute*, %struct.attribute** %16, align 8
  %55 = call i32 @reader_free(%struct.TYPE_7__* %53, %struct.attribute* %54)
  %56 = load i64, i64* %17, align 8
  store i64 %56, i64* %8, align 8
  br label %100

57:                                               ; preds = %48
  %58 = load i8**, i8*** %10, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i8**, i8*** %10, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.attribute*, %struct.attribute** %16, align 8
  %64 = getelementptr inbounds %struct.attribute, %struct.attribute* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  br label %69

65:                                               ; preds = %57
  %66 = load %struct.attribute*, %struct.attribute** %16, align 8
  %67 = getelementptr inbounds %struct.attribute, %struct.attribute* %66, i32 0, i32 4
  %68 = call i32 @memset(i8** %67, i32 0, i32 8)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i8**, i8*** %12, align 8
  %71 = icmp ne i8** %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8**, i8*** %12, align 8
  %74 = load i8*, i8** %73, align 8
  br label %78

75:                                               ; preds = %69
  %76 = load i8**, i8*** %11, align 8
  %77 = load i8*, i8** %76, align 8
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i8* [ %74, %72 ], [ %77, %75 ]
  %80 = load %struct.attribute*, %struct.attribute** %16, align 8
  %81 = getelementptr inbounds %struct.attribute, %struct.attribute* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load %struct.attribute*, %struct.attribute** %16, align 8
  %83 = getelementptr inbounds %struct.attribute, %struct.attribute* %82, i32 0, i32 2
  %84 = load %struct.reader_position*, %struct.reader_position** %14, align 8
  %85 = bitcast %struct.reader_position* %83 to i8*
  %86 = bitcast %struct.reader_position* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 4 %86, i64 4, i1 false)
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.attribute*, %struct.attribute** %16, align 8
  %89 = getelementptr inbounds %struct.attribute, %struct.attribute* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load %struct.attribute*, %struct.attribute** %16, align 8
  %93 = getelementptr inbounds %struct.attribute, %struct.attribute* %92, i32 0, i32 1
  %94 = call i32 @list_add_tail(i32* %91, i32* %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load i64, i64* @S_OK, align 8
  store i64 %99, i64* %8, align 8
  br label %100

100:                                              ; preds = %78, %52, %22
  %101 = load i64, i64* %8, align 8
  ret i64 %101
}

declare dso_local %struct.attribute* @reader_alloc(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @reader_strvaldup(%struct.TYPE_7__*, i8**, i32*) #1

declare dso_local i32 @reader_free_strvalued(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @reader_free(%struct.TYPE_7__*, %struct.attribute*) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
