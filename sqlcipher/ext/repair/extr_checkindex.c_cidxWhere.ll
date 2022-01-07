; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkindex.c_cidxWhere.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkindex.c_cidxWhere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%z%s(%s) IS %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" AND \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%z%s(%s) IS NULL\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%z%s(%s) %s %s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"%z%s(%s) IS NOT NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_3__*, i8**, i32, i32)* @cidxWhere to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cidxWhere(i32* %0, %struct.TYPE_3__* %1, i8** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %44, %5
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8**, i8*** %8, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %18
  %35 = load i8**, i8*** %8, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  br label %41

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %40, %34
  %42 = phi i8* [ %39, %34 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %40 ]
  %43 = call i8* (i32*, i8*, i8*, i8*, i32, ...) @cidxMprintf(i32* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %20, i8* %21, i32 %27, i8* %42)
  store i8* %43, i8** %11, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %14

47:                                               ; preds = %14
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i32*, i32** %6, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i8* (i32*, i8*, i8*, i8*, i32, ...) @cidxMprintf(i32* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %52, i8* %53, i32 %59)
  store i8* %60, i8** %11, align 8
  br label %105

61:                                               ; preds = %47
  %62 = load i8**, i8*** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %93

68:                                               ; preds = %61
  %69 = load i32*, i32** %6, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %87 = load i8**, i8*** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* (i32*, i8*, i8*, i8*, i32, ...) @cidxMprintf(i32* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %70, i8* %71, i32 %77, i8* %86, i8* %91)
  store i8* %92, i8** %11, align 8
  br label %104

93:                                               ; preds = %61
  %94 = load i32*, i32** %6, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i8* (i32*, i8*, i8*, i8*, i32, ...) @cidxMprintf(i32* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %95, i8* %96, i32 %102)
  store i8* %103, i8** %11, align 8
  br label %104

104:                                              ; preds = %93, %68
  br label %105

105:                                              ; preds = %104, %50
  %106 = load i8*, i8** %11, align 8
  ret i8* %106
}

declare dso_local i8* @cidxMprintf(i32*, i8*, i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
