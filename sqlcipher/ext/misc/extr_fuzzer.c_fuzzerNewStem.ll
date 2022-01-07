; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fuzzer.c_fuzzerNewStem.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fuzzer.c_fuzzerNewStem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32, %struct.TYPE_12__*, i32, i32, %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__**, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_14__*, i8*, i32)* @fuzzerNewStem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @fuzzerNewStem(%struct.TYPE_14__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = add i64 48, %12
  %14 = add i64 %13, 1
  %15 = call %struct.TYPE_12__* @sqlite3_malloc64(i64 %14)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %8, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %17 = icmp eq %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %93

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %21 = call i32 @memset(%struct.TYPE_12__* %20, i32 0, i32 48)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 1
  %24 = bitcast %struct.TYPE_12__* %23 to i8*
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 6
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = call i32 @memcpy(i8* %33, i8* %34, i64 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %9, align 8
  br label %45

45:                                               ; preds = %53, %19
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @fuzzerSkipRule(%struct.TYPE_13__* %46, %struct.TYPE_12__* %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %9, align 8
  br label %45

57:                                               ; preds = %45
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 5
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  store i32 -1, i32* %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 4
  store i32 %63, i32* %67, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @fuzzerHash(i8* %70)
  store i32 %71, i32* %10, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %74, i64 %76
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %80, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %84, i64 %86
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %4, align 8
  br label %93

93:                                               ; preds = %57, %18
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %94
}

declare dso_local %struct.TYPE_12__* @sqlite3_malloc64(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @fuzzerSkipRule(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @fuzzerHash(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
