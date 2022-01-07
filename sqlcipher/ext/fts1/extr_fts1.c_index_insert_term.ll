; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_index_insert_term.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_index_insert_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }

@SQLITE_DONE = common dso_local global i32 0, align 4
@DL_DEFAULT = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@CHUNK_MAX = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, %struct.TYPE_12__*)* @index_insert_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_insert_term(i32* %0, i8* %1, i32 %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_12__, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @term_select(i32* %17, i8* %18, i32 %19, i32 %20, i64* %10, %struct.TYPE_12__* %11)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @SQLITE_DONE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %4
  %26 = load i32, i32* @DL_DEFAULT, align 4
  %27 = call i32 @docListInit(%struct.TYPE_12__* %11, i32 %26, i32 0, i32 0)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %29 = call i32 @docListUpdate(%struct.TYPE_12__* %11, %struct.TYPE_12__* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @term_insert(i32* %30, i64* null, i8* %31, i32 %32, i32 %33, %struct.TYPE_12__* %11)
  store i32 %34, i32* %13, align 4
  br label %103

35:                                               ; preds = %4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @SQLITE_ROW, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %40, i32* %5, align 4
  br label %106

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = call i32 @docListUpdate(%struct.TYPE_12__* %11, %struct.TYPE_12__* %42)
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CHUNK_MAX, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32*, i32** %6, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @term_update(i32* %49, i64 %50, %struct.TYPE_12__* %11)
  store i32 %51, i32* %13, align 4
  br label %103

52:                                               ; preds = %41
  %53 = load i32*, i32** %6, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @term_delete(i32* %53, i64 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @SQLITE_OK, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %103

60:                                               ; preds = %52
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %95, %60
  %64 = load i32*, i32** %6, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @term_insert(i32* %64, i64* %10, i8* %65, i32 %66, i32 %67, %struct.TYPE_12__* %11)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* @SQLITE_OK, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %102

71:                                               ; preds = %63
  %72 = load i32*, i32** %6, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @term_select(i32* %72, i8* %73, i32 %74, i32 %75, i64* %14, %struct.TYPE_12__* %15)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @SQLITE_ROW, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %103

81:                                               ; preds = %71
  %82 = load i32*, i32** %6, align 8
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @term_delete(i32* %82, i64 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @SQLITE_OK, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %103

89:                                               ; preds = %81
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %10, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i64, i64* %14, align 8
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %93, %89
  %96 = call i32 @docListAccumulate(%struct.TYPE_12__* %15, %struct.TYPE_12__* %11)
  %97 = call i32 @docListDestroy(%struct.TYPE_12__* %11)
  %98 = bitcast %struct.TYPE_12__* %11 to i8*
  %99 = bitcast %struct.TYPE_12__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 8, i1 false)
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %63

102:                                              ; preds = %63
  br label %103

103:                                              ; preds = %102, %88, %80, %59, %48, %25
  %104 = call i32 @docListDestroy(%struct.TYPE_12__* %11)
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %103, %39
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @term_select(i32*, i8*, i32, i32, i64*, %struct.TYPE_12__*) #1

declare dso_local i32 @docListInit(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @docListUpdate(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @term_insert(i32*, i64*, i8*, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @term_update(i32*, i64, %struct.TYPE_12__*) #1

declare dso_local i32 @term_delete(i32*, i64) #1

declare dso_local i32 @docListAccumulate(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @docListDestroy(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
