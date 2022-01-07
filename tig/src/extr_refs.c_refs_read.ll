; ModuleID = '/home/carl/AnghaBench/tig/src/extr_refs.c_refs_read.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_refs.c_refs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.reference* }
%struct.reference = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.buffer = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.buffer*, i32)* @refs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refs_read(%struct.view* %0, %struct.buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.reference, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.reference*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = bitcast %struct.reference* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = load %struct.buffer*, %struct.buffer** %6, align 8
  %15 = icmp ne %struct.buffer* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %103

17:                                               ; preds = %3
  %18 = load %struct.buffer*, %struct.buffer** %6, align 8
  %19 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %103

24:                                               ; preds = %17
  %25 = load %struct.buffer*, %struct.buffer** %6, align 8
  %26 = load %struct.buffer*, %struct.buffer** %6, align 8
  %27 = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @io_memchr(%struct.buffer* %25, i8* %28, i32 0)
  store i8* %29, i8** %9, align 8
  %30 = load %struct.buffer*, %struct.buffer** %6, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i8* @io_memchr(%struct.buffer* %30, i8* %31, i32 0)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds %struct.reference, %struct.reference* %8, i32 0, i32 2
  %38 = getelementptr inbounds %struct.reference, %struct.reference* %8, i32 0, i32 1
  %39 = call i32 @parse_author_line(i8* %36, i32* %37, i32* %38)
  br label %40

40:                                               ; preds = %35, %24
  store i64 0, i64* %11, align 8
  br label %41

41:                                               ; preds = %99, %40
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.view*, %struct.view** %5, align 8
  %44 = getelementptr inbounds %struct.view, %struct.view* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %102

47:                                               ; preds = %41
  %48 = load %struct.view*, %struct.view** %5, align 8
  %49 = getelementptr inbounds %struct.view, %struct.view* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load %struct.reference*, %struct.reference** %53, align 8
  store %struct.reference* %54, %struct.reference** %12, align 8
  %55 = load %struct.reference*, %struct.reference** %12, align 8
  %56 = getelementptr inbounds %struct.reference, %struct.reference* %55, i32 0, i32 3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.buffer*, %struct.buffer** %6, align 8
  %61 = getelementptr inbounds %struct.buffer, %struct.buffer* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strcmp(i32 %59, i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %47
  br label %99

66:                                               ; preds = %47
  %67 = getelementptr inbounds %struct.reference, %struct.reference* %8, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.reference*, %struct.reference** %12, align 8
  %70 = getelementptr inbounds %struct.reference, %struct.reference* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds %struct.reference, %struct.reference* %8, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.reference*, %struct.reference** %12, align 8
  %74 = getelementptr inbounds %struct.reference, %struct.reference* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %66
  %78 = load %struct.reference*, %struct.reference** %12, align 8
  %79 = getelementptr inbounds %struct.reference, %struct.reference* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = call i32 @string_expand(i32 %80, i32 4, i8* %81, i32 %83, i32 1)
  br label %85

85:                                               ; preds = %77, %66
  %86 = load %struct.view*, %struct.view** %5, align 8
  %87 = getelementptr inbounds %struct.view, %struct.view* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.view*, %struct.view** %5, align 8
  %93 = load %struct.view*, %struct.view** %5, align 8
  %94 = getelementptr inbounds %struct.view, %struct.view* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %96
  %98 = call i32 @view_column_info_update(%struct.view* %92, %struct.TYPE_4__* %97)
  br label %99

99:                                               ; preds = %85, %65
  %100 = load i64, i64* %11, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %11, align 8
  br label %41

102:                                              ; preds = %41
  store i32 1, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %23, %16
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @io_memchr(%struct.buffer*, i8*, i32) #2

declare dso_local i32 @parse_author_line(i8*, i32*, i32*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @string_expand(i32, i32, i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @view_column_info_update(%struct.view*, %struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
