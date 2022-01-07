; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rax.c_raxCompressNode.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rax.c_raxCompressNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Compress node: %.*s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @raxCompressNode(%struct.TYPE_14__* %0, i8* %1, i64 %2, %struct.TYPE_14__** %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__**, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_14__** %3, %struct.TYPE_14__*** %9, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %18, %4
  %24 = phi i1 [ false, %4 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  store i8* null, i8** %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @debugf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %29)
  %31 = call %struct.TYPE_14__* @raxNewNode(i32 0, i32 0)
  %32 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %32, align 8
  %33 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = icmp eq %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  br label %100

37:                                               ; preds = %23
  %38 = load i64, i64* %8, align 8
  %39 = add i64 32, %38
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @raxPadding(i64 %40)
  %42 = sext i32 %41 to i64
  %43 = add i64 %39, %42
  %44 = add i64 %43, 8
  store i64 %44, i64* %11, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %37
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = call i8* @raxGetData(%struct.TYPE_14__* %50)
  store i8* %51, i8** %10, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, 8
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %56, %49
  br label %60

60:                                               ; preds = %59, %37
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call %struct.TYPE_14__* @rax_realloc(%struct.TYPE_14__* %61, i64 %62)
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %12, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %65 = icmp eq %struct.TYPE_14__* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = call i32 @rax_free(%struct.TYPE_14__* %68)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  br label %100

70:                                               ; preds = %60
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %71, %struct.TYPE_14__** %6, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  store i32 1, i32* %73, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to %struct.TYPE_14__**
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i32 (%struct.TYPE_14__**, ...) @memcpy(%struct.TYPE_14__** %81, i8* %82, i64 %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %70
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @raxSetData(%struct.TYPE_14__* %90, i8* %91)
  br label %93

93:                                               ; preds = %89, %70
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %95 = call %struct.TYPE_14__** @raxNodeLastChildPtr(%struct.TYPE_14__* %94)
  store %struct.TYPE_14__** %95, %struct.TYPE_14__*** %13, align 8
  %96 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %13, align 8
  %97 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %98 = call i32 (%struct.TYPE_14__**, ...) @memcpy(%struct.TYPE_14__** %96, %struct.TYPE_14__** %97, i64 8)
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %5, align 8
  br label %100

100:                                              ; preds = %93, %66, %36
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  ret %struct.TYPE_14__* %101
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @debugf(i8*, i32, i8*) #1

declare dso_local %struct.TYPE_14__* @raxNewNode(i32, i32) #1

declare dso_local i32 @raxPadding(i64) #1

declare dso_local i8* @raxGetData(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @rax_realloc(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @rax_free(%struct.TYPE_14__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__**, ...) #1

declare dso_local i32 @raxSetData(%struct.TYPE_14__*, i8*) #1

declare dso_local %struct.TYPE_14__** @raxNodeLastChildPtr(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
