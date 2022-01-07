; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_index_delete_term.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_index_delete_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @index_delete_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_delete_term(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @term_chunk_select(i32* %14, i8* %15, i32 %16, i32 %17, i32* %10)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @SQLITE_ROW, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %23, i32* %5, align 4
  br label %55

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @term_select(i32* %25, i8* %26, i32 %27, i32 %28, i32* %11, %struct.TYPE_6__* %12)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @SQLITE_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %5, align 4
  br label %55

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @docListUpdate(%struct.TYPE_6__* %12, i32 %36, i32* null)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @term_update(i32* %44, i32 %45, %struct.TYPE_6__* %12)
  store i32 %46, i32* %13, align 4
  br label %51

47:                                               ; preds = %39
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @term_delete(i32* %48, i32 %49)
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %35
  %53 = call i32 @docListDestroy(%struct.TYPE_6__* %12)
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %33, %22
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @term_chunk_select(i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @term_select(i32*, i8*, i32, i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @docListUpdate(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @term_update(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @term_delete(i32*, i32) #1

declare dso_local i32 @docListDestroy(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
