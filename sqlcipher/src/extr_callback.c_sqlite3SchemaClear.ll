; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_callback.c_sqlite3SchemaClear.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_callback.c_sqlite3SchemaClear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32, i32 }

@DB_SchemaLoaded = common dso_local global i32 0, align 4
@DB_ResetWanted = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3SchemaClear(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %6, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  %18 = call i32 @sqlite3HashInit(i32* %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  %21 = call i32 @sqlite3HashClear(i32* %20)
  %22 = call i32* @sqliteHashFirst(i32* %4)
  store i32* %22, i32** %5, align 8
  br label %23

23:                                               ; preds = %30, %1
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* @sqliteHashData(i32* %27)
  %29 = call i32 @sqlite3DeleteTrigger(i32 0, i32* %28)
  br label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @sqliteHashNext(i32* %31)
  store i32* %32, i32** %5, align 8
  br label %23

33:                                               ; preds = %23
  %34 = call i32 @sqlite3HashClear(i32* %4)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = call i32 @sqlite3HashInit(i32* %36)
  %38 = call i32* @sqliteHashFirst(i32* %3)
  store i32* %38, i32** %5, align 8
  br label %39

39:                                               ; preds = %47, %33
  %40 = load i32*, i32** %5, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32*, i32** %5, align 8
  %44 = call i32* @sqliteHashData(i32* %43)
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @sqlite3DeleteTable(i32 0, i32* %45)
  br label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = call i32* @sqliteHashNext(i32* %48)
  store i32* %49, i32** %5, align 8
  br label %39

50:                                               ; preds = %39
  %51 = call i32 @sqlite3HashClear(i32* %3)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = call i32 @sqlite3HashClear(i32* %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DB_SchemaLoaded, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %50
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %63, %50
  %69 = load i32, i32* @DB_SchemaLoaded, align 4
  %70 = load i32, i32* @DB_ResetWanted, align 4
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  ret void
}

declare dso_local i32 @sqlite3HashInit(i32*) #1

declare dso_local i32 @sqlite3HashClear(i32*) #1

declare dso_local i32* @sqliteHashFirst(i32*) #1

declare dso_local i32 @sqlite3DeleteTrigger(i32, i32*) #1

declare dso_local i32* @sqliteHashData(i32*) #1

declare dso_local i32* @sqliteHashNext(i32*) #1

declare dso_local i32 @sqlite3DeleteTable(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
