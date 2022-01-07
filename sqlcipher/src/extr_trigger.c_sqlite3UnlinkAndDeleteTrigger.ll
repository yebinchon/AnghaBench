; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3UnlinkAndDeleteTrigger.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3UnlinkAndDeleteTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }

@DBFLAG_SchemaChange = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3UnlinkAndDeleteTrigger(%struct.TYPE_16__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_17__**, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @sqlite3SchemaMutexHeld(%struct.TYPE_16__* %11, i32 %12, i32 0)
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call %struct.TYPE_17__* @sqlite3HashInsert(i32* %24, i8* %25, i32 0)
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %7, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %28 = call i64 @ALWAYS(%struct.TYPE_17__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %3
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %30
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = call %struct.TYPE_18__* @tableOfTrigger(%struct.TYPE_17__* %39)
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %9, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  store %struct.TYPE_17__** %42, %struct.TYPE_17__*** %10, align 8
  br label %43

43:                                               ; preds = %49, %38
  %44 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %47 = icmp ne %struct.TYPE_17__* %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  store %struct.TYPE_17__** %52, %struct.TYPE_17__*** %10, align 8
  br label %43

53:                                               ; preds = %43
  %54 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %58, align 8
  br label %59

59:                                               ; preds = %53, %30
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %62 = call i32 @sqlite3DeleteTrigger(%struct.TYPE_16__* %60, %struct.TYPE_17__* %61)
  %63 = load i32, i32* @DBFLAG_SchemaChange, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %59, %3
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3SchemaMutexHeld(%struct.TYPE_16__*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @sqlite3HashInsert(i32*, i8*, i32) #1

declare dso_local i64 @ALWAYS(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @tableOfTrigger(%struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3DeleteTrigger(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
