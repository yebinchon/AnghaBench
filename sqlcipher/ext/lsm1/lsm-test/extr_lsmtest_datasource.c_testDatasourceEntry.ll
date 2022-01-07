; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_datasource.c_testDatasourceEntry.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_datasource.c_testDatasourceEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%012d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testDatasourceEntry(%struct.TYPE_3__* %0, i32 %1, i8** %2, i32* %3, i8** %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i8**, i8*** %9, align 8
  %17 = icmp eq i8** %16, null
  %18 = zext i1 %17 to i32
  %19 = load i32*, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = icmp eq i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i8**, i8*** %11, align 8
  %26 = icmp eq i8** %25, null
  %27 = zext i1 %26 to i32
  %28 = load i32*, i32** %12, align 8
  %29 = icmp eq i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = icmp eq i32 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i8**, i8*** %9, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %36, label %76

36:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %69 [
    i32 129, label %40
    i32 128, label %63
  ]

40:                                               ; preds = %36
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 1, %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @testPrngValue(i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = srem i32 %50, %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @testPrngString(i32 %57, i8* %60, i32 %61)
  br label %69

63:                                               ; preds = %36
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @sprintf(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %67)
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %36, %63, %40
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 5
  %72 = load i8*, i8** %71, align 8
  %73 = load i8**, i8*** %9, align 8
  store i8* %72, i8** %73, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32*, i32** %10, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %69, %6
  %77 = load i8**, i8*** %11, align 8
  %78 = icmp ne i8** %77, null
  br i1 %78, label %79, label %108

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @testPrngValue(i32 %80)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 1, %84
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %85, %88
  %90 = srem i32 %81, %89
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %8, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 4
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @testPrngString(i32 %96, i8* %99, i32 %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 4
  %104 = load i8*, i8** %103, align 8
  %105 = load i8**, i8*** %11, align 8
  store i8* %104, i8** %105, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i32*, i32** %12, align 8
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %79, %76
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @testPrngValue(i32) #1

declare dso_local i32 @testPrngString(i32, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
