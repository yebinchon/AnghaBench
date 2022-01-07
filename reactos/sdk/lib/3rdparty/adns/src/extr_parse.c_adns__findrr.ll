; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_parse.c_adns__findrr.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_parse.c_adns__findrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@DNS_HDRSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adns__findrr(%struct.TYPE_4__* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32* %6, i64* %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i64* %7, i64** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %11
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load i32*, i32** %15, align 8
  %30 = load i32, i32* %16, align 4
  %31 = load i32*, i32** %17, align 8
  %32 = load i32*, i32** %18, align 8
  %33 = load i32*, i32** %19, align 8
  %34 = load i64*, i64** %20, align 8
  %35 = load i32*, i32** %21, align 8
  %36 = load i32*, i32** %22, align 8
  %37 = call i32 @adns__findrr_anychk(%struct.TYPE_4__* %27, i32 %28, i32* %29, i32 %30, i32* %31, i32* %32, i32* %33, i64* %34, i32* %35, i32* %36, i32 0, i32 0, i32 0, i32* null)
  store i32 %37, i32* %12, align 4
  br label %85

38:                                               ; preds = %11
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %63, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i32*, i32** %15, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load i32*, i32** %17, align 8
  %49 = load i32*, i32** %18, align 8
  %50 = load i32*, i32** %19, align 8
  %51 = load i64*, i64** %20, align 8
  %52 = load i32*, i32** %21, align 8
  %53 = load i32*, i32** %22, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DNS_HDRSIZE, align 4
  %61 = load i32*, i32** %23, align 8
  %62 = call i32 @adns__findrr_anychk(%struct.TYPE_4__* %44, i32 %45, i32* %46, i32 %47, i32* %48, i32* %49, i32* %50, i64* %51, i32* %52, i32* %53, i32 %56, i32 %59, i32 %60, i32* %61)
  store i32 %62, i32* %12, align 4
  br label %85

63:                                               ; preds = %38
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %16, align 4
  %68 = load i32*, i32** %17, align 8
  %69 = load i32*, i32** %18, align 8
  %70 = load i32*, i32** %19, align 8
  %71 = load i64*, i64** %20, align 8
  %72 = load i32*, i32** %21, align 8
  %73 = load i32*, i32** %22, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %23, align 8
  %84 = call i32 @adns__findrr_anychk(%struct.TYPE_4__* %64, i32 %65, i32* %66, i32 %67, i32* %68, i32* %69, i32* %70, i64* %71, i32* %72, i32* %73, i32 %76, i32 %79, i32 %82, i32* %83)
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %63, %43, %26
  %86 = load i32, i32* %12, align 4
  ret i32 %86
}

declare dso_local i32 @adns__findrr_anychk(%struct.TYPE_4__*, i32, i32*, i32, i32*, i32*, i32*, i64*, i32*, i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
