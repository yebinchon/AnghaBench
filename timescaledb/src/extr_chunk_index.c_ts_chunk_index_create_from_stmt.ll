; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_ts_chunk_index_create_from_stmt.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_ts_chunk_index_create_from_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_chunk_index_create_from_stmt(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_6__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = call i8* @get_rel_name(i32 %15)
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @InvalidOid, align 4
  store i32 %20, i32* %6, align 4
  br label %52

21:                                               ; preds = %5
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* null, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = call i8* @get_rel_name(i32 %27)
  %29 = load i8*, i8** %13, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @get_rel_namespace(i32 %30)
  %32 = call i32* @chunk_index_choose_name(i8* %28, i8* %29, i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  br label %35

35:                                               ; preds = %26, %21
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = load i32, i32* @InvalidOid, align 4
  %39 = call i32 @DefineIndexCompat(i32 %36, %struct.TYPE_7__* %37, i32 %38, i32 0, i32 1, i32 0, i32 1)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = bitcast %struct.TYPE_6__* %12 to i8*
  %42 = bitcast %struct.TYPE_6__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = load i32, i32* %8, align 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @get_rel_name(i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @chunk_index_insert(i32 %43, i8* %46, i32 %47, i8* %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %35, %19
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i32* @chunk_index_choose_name(i8*, i8*, i32) #1

declare dso_local i32 @get_rel_namespace(i32) #1

declare dso_local i32 @DefineIndexCompat(i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @chunk_index_insert(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
