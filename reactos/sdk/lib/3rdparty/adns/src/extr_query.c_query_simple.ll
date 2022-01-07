; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_query.c_query_simple.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_query.c_query_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.timeval = type { i32 }

@adns_s_querydomaintoolong = common dso_local global i64 0, align 8
@adns_qf_search = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*, i8*, i32, i32*, i32, i32)* @query_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_simple(i32 %0, %struct.TYPE_6__* %1, i8* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 %6, i32* %18, align 4
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i8*, i8** %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* %14, align 4
  %26 = call i64 @adns__mkquery(i32 %19, i32* %21, i32* %16, i8* %22, i32 %23, i32* %24, i32 %25)
  store i64 %26, i64* %17, align 8
  %27 = load i64, i64* %17, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %7
  %30 = load i64, i64* %17, align 8
  %31 = load i64, i64* @adns_s_querydomaintoolong, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @adns_qf_search, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @adns__search_next(i32 %39, %struct.TYPE_6__* %40, i32 %42)
  br label %63

44:                                               ; preds = %33, %29
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = load i64, i64* %17, align 8
  %47 = call i32 @adns__query_fail(%struct.TYPE_6__* %45, i64 %46)
  br label %63

48:                                               ; preds = %7
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %15, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @adns__vbuf_init(i32* %53)
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %14, align 4
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @query_submit(i32 %55, %struct.TYPE_6__* %56, i32* %57, i32* %15, i32 %58, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %48, %44, %38
  ret void
}

declare dso_local i64 @adns__mkquery(i32, i32*, i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @adns__search_next(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @adns__query_fail(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @adns__vbuf_init(i32*) #1

declare dso_local i32 @query_submit(i32, %struct.TYPE_6__*, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
