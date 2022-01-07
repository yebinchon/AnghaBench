; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_collect_file_ids.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_collect_file_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32** }

@EMPTY_SHA1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.TYPE_4__**, i8*)* @collect_file_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_file_ids(i32 %0, i8* %1, %struct.TYPE_4__** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_4__** %2, %struct.TYPE_4__*** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %15, i64 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %10, align 8
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %11, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %12, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  store i32** %25, i32*** %13, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @EMPTY_SHA1, align 4
  %33 = call i64 @strcmp(i32 %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %4
  store i32 0, i32* %5, align 4
  br label %76

36:                                               ; preds = %28
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @g_hash_table_lookup(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %76

46:                                               ; preds = %36
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @strcmp(i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %49, %46
  %59 = load i32**, i32*** %13, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @g_strdup(i32 %63)
  %65 = call i32* @g_list_prepend(i32* %60, i32 %64)
  %66 = load i32**, i32*** %13, align 8
  store i32* %65, i32** %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @g_strdup(i32 %72)
  %74 = call i32 @g_hash_table_insert(i32 %69, i32 %73, i32* %14)
  br label %75

75:                                               ; preds = %58, %49
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %45, %35
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @g_hash_table_lookup(i32, i32) #1

declare dso_local i32* @g_list_prepend(i32*, i32) #1

declare dso_local i32 @g_strdup(i32) #1

declare dso_local i32 @g_hash_table_insert(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
