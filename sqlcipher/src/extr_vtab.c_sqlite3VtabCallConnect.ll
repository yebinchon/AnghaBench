; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vtab.c_sqlite3VtabCallConnect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vtab.c_sqlite3VtabCallConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i8** }
%struct.TYPE_21__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no such module: %s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3VtabCallConnect(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %6, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = call i32 @assert(%struct.TYPE_19__* %15)
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = call i32 @IsVirtual(%struct.TYPE_19__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = call i64 @sqlite3GetVTable(%struct.TYPE_18__* %21, %struct.TYPE_19__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %2
  %26 = load i32, i32* @SQLITE_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %76

27:                                               ; preds = %20
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %7, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @sqlite3HashFind(i32* %34, i8* %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %37, %struct.TYPE_21__** %8, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %39 = icmp ne %struct.TYPE_21__* %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %27
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %10, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @sqlite3ErrorMsg(%struct.TYPE_20__* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %49, i32* %9, align 4
  br label %74

50:                                               ; preds = %27
  store i8* null, i8** %11, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @vtabCallConstructor(%struct.TYPE_18__* %51, %struct.TYPE_19__* %52, %struct.TYPE_21__* %53, i32 %58, i8** %11)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @SQLITE_OK, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %50
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @sqlite3ErrorMsg(%struct.TYPE_20__* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %63, %50
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @sqlite3DbFree(%struct.TYPE_18__* %71, i8* %72)
  br label %74

74:                                               ; preds = %70, %40
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %25
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @assert(%struct.TYPE_19__*) #1

declare dso_local i32 @IsVirtual(%struct.TYPE_19__*) #1

declare dso_local i64 @sqlite3GetVTable(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i64 @sqlite3HashFind(i32*, i8*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_20__*, i8*, i8*) #1

declare dso_local i32 @vtabCallConstructor(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_21__*, i32, i8**) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_18__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
