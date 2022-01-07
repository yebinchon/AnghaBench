; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vtab.c_sqlite3VtabCreateModule.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vtab.c_sqlite3VtabCreateModule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, void (i8*)*, i64, i8*, i32* }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @sqlite3VtabCreateModule(%struct.TYPE_8__* %0, i8* %1, i32* %2, i8* %3, void (i8*)* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca void (i8*)*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store void (i8*)* %4, void (i8*)** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @sqlite3Strlen30(i8* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 40, %18
  %20 = add i64 %19, 1
  %21 = trunc i64 %20 to i32
  %22 = call i64 @sqlite3Malloc(i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %11, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %25 = icmp eq %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = call i32 @sqlite3OomFault(%struct.TYPE_8__* %27)
  br label %78

29:                                               ; preds = %5
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 1
  %32 = bitcast %struct.TYPE_9__* %31 to i8*
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32 @memcpy(i8* %33, i8* %34, i32 %36)
  %38 = load i8*, i8** %14, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  store i32* %41, i32** %43, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load void (i8*)*, void (i8*)** %10, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store void (i8*)* %47, void (i8*)** %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i8*, i8** %14, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %56 = bitcast %struct.TYPE_9__* %55 to i8*
  %57 = call i64 @sqlite3HashInsert(i32* %53, i8* %54, i8* %56)
  %58 = inttoptr i64 %57 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %13, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %60 = icmp eq %struct.TYPE_9__* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %29
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %64 = icmp eq %struct.TYPE_9__* %62, %63
  br label %65

65:                                               ; preds = %61, %29
  %66 = phi i1 [ true, %29 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %70 = icmp ne %struct.TYPE_9__* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = call i32 @sqlite3OomFault(%struct.TYPE_8__* %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %76 = call i32 @sqlite3DbFree(%struct.TYPE_8__* %74, %struct.TYPE_9__* %75)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  br label %77

77:                                               ; preds = %71, %65
  br label %78

78:                                               ; preds = %77, %26
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  ret %struct.TYPE_9__* %79
}

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i64 @sqlite3Malloc(i32) #1

declare dso_local i32 @sqlite3OomFault(%struct.TYPE_8__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @sqlite3HashInsert(i32*, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
