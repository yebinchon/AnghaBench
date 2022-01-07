; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyJsonFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyJsonFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"[%!g,%!g],\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"[%!g,%!g]]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @geopolyJsonFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geopolyJsonFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32**, i32*** %6, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = call %struct.TYPE_7__* @geopolyFuncParam(i32* %11, i32* %14, i32 0)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %7, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %56

18:                                               ; preds = %3
  %19 = load i32*, i32** %4, align 8
  %20 = call i32* @sqlite3_context_db_handle(i32* %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32* @sqlite3_str_new(i32* %21)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @sqlite3_str_append(i32* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %40, %18
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load i32*, i32** %9, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @GeoX(%struct.TYPE_7__* %33, i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @GeoY(%struct.TYPE_7__* %36, i32 %37)
  %39 = call i32 @sqlite3_str_appendf(i32* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %25

43:                                               ; preds = %25
  %44 = load i32*, i32** %9, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = call i32 @GeoX(%struct.TYPE_7__* %45, i32 0)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = call i32 @GeoY(%struct.TYPE_7__* %47, i32 0)
  %49 = call i32 @sqlite3_str_appendf(i32* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @sqlite3_str_finish(i32* %51)
  %53 = call i32 @sqlite3_result_text(i32* %50, i32 %52, i32 -1, i32 (%struct.TYPE_7__*)* @sqlite3_free)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = call i32 @sqlite3_free(%struct.TYPE_7__* %54)
  br label %56

56:                                               ; preds = %43, %3
  ret void
}

declare dso_local %struct.TYPE_7__* @geopolyFuncParam(i32*, i32*, i32) #1

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i32* @sqlite3_str_new(i32*) #1

declare dso_local i32 @sqlite3_str_append(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_str_appendf(i32*, i8*, i32, i32) #1

declare dso_local i32 @GeoX(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @GeoY(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sqlite3_result_text(i32*, i32, i32, i32 (%struct.TYPE_7__*)*) #1

declare dso_local i32 @sqlite3_str_finish(i32*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
