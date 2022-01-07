; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jscompile.c_newfun.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jscompile.c_newfun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i8*, i32, %struct.TYPE_19__*, i64 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_18__*, i32, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32, i32)* @newfun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @newfun(%struct.TYPE_18__* %0, i32 %1, %struct.TYPE_20__* %2, %struct.TYPE_20__* %3, %struct.TYPE_20__* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %11, align 8
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %17 = call %struct.TYPE_19__* @js_malloc(%struct.TYPE_18__* %16, i32 48)
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %15, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %19 = call i32 @memset(%struct.TYPE_19__* %18, i32 0, i32 48)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 5
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %26, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 2
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %29, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @js_intern(%struct.TYPE_18__* %34, i32 %37)
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %51 = icmp ne %struct.TYPE_20__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %7
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  br label %57

56:                                               ; preds = %7
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i8* [ %55, %52 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %56 ]
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %66 = call i32 @cfunbody(%struct.TYPE_18__* %61, %struct.TYPE_19__* %62, %struct.TYPE_20__* %63, %struct.TYPE_20__* %64, %struct.TYPE_20__* %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  ret %struct.TYPE_19__* %67
}

declare dso_local %struct.TYPE_19__* @js_malloc(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @js_intern(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @cfunbody(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
