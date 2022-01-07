; ModuleID = '/home/carl/AnghaBench/tig/compat/extr_hashtab.c_htab_create_typed_alloc.c'
source_filename = "/home/carl/AnghaBench/tig/compat/extr_hashtab.c_htab_create_typed_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32, i32 (%struct.TYPE_7__*)*, i64 (i64, i32)*, i32, i32, i32, i32* }

@prime_tab = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @htab_create_typed_alloc(i64 %0, i32 %1, i32 %2, i32 %3, i64 (i64, i32)* %4, i64 (i64, i32)* %5, i32 (%struct.TYPE_7__*)* %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64 (i64, i32)*, align 8
  %14 = alloca i64 (i64, i32)*, align 8
  %15 = alloca i32 (%struct.TYPE_7__*)*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 (i64, i32)* %4, i64 (i64, i32)** %13, align 8
  store i64 (i64, i32)* %5, i64 (i64, i32)** %14, align 8
  store i32 (%struct.TYPE_7__*)* %6, i32 (%struct.TYPE_7__*)** %15, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @higher_prime_index(i64 %18)
  store i32 %19, i32* %17, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prime_tab, align 8
  %21 = load i32, i32* %17, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i64 (i64, i32)*, i64 (i64, i32)** %13, align 8
  %27 = call i64 %26(i64 1, i32 4)
  %28 = inttoptr i64 %27 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %16, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %30 = icmp eq %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %7
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  br label %74

32:                                               ; preds = %7
  %33 = load i64 (i64, i32)*, i64 (i64, i32)** %14, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i64 %33(i64 %34, i32 4)
  %36 = inttoptr i64 %35 to i32*
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 7
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 7
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %32
  %44 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %15, align 8
  %45 = icmp ne i32 (%struct.TYPE_7__*)* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %15, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %49 = call i32 %47(%struct.TYPE_7__* %48)
  br label %50

50:                                               ; preds = %46, %43
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  br label %74

51:                                               ; preds = %32
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* %17, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load i64 (i64, i32)*, i64 (i64, i32)** %14, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  store i64 (i64, i32)* %67, i64 (i64, i32)** %69, align 8
  %70 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %15, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  store i32 (%struct.TYPE_7__*)* %70, i32 (%struct.TYPE_7__*)** %72, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %8, align 8
  br label %74

74:                                               ; preds = %51, %50, %31
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  ret %struct.TYPE_7__* %75
}

declare dso_local i32 @higher_prime_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
