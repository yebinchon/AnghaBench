; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_search.c_save_search_patterns.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_search.c_save_search_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@save_level = common dso_local global i32 0, align 4
@saved_spats = common dso_local global %struct.TYPE_3__* null, align 8
@spats = common dso_local global %struct.TYPE_3__* null, align 8
@last_idx = common dso_local global i32 0, align 4
@saved_last_idx = common dso_local global i32 0, align 4
@no_hlsearch = common dso_local global i32 0, align 4
@saved_no_hlsearch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_search_patterns() #0 {
  %1 = load i32, i32* @save_level, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @save_level, align 4
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %50

4:                                                ; preds = %0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @saved_spats, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i64 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spats, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 0
  %9 = bitcast %struct.TYPE_3__* %6 to i8*
  %10 = bitcast %struct.TYPE_3__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 8, i1 false)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spats, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spats, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i8* @vim_strsave(i32* %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @saved_spats, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32* %22, i32** %25, align 8
  br label %26

26:                                               ; preds = %16, %4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @saved_spats, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spats, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 1
  %31 = bitcast %struct.TYPE_3__* %28 to i8*
  %32 = bitcast %struct.TYPE_3__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spats, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %26
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spats, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i8* @vim_strsave(i32* %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @saved_spats, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32* %44, i32** %47, align 8
  br label %48

48:                                               ; preds = %38, %26
  %49 = load i32, i32* @last_idx, align 4
  store i32 %49, i32* @saved_last_idx, align 4
  br label %50

50:                                               ; preds = %48, %0
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @vim_strsave(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
