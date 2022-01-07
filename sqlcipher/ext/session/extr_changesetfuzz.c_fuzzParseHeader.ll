; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_fuzzParseHeader.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_fuzzParseHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64*, i8*, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64**, i64*, %struct.TYPE_6__**)* @fuzzParseHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuzzParseHeader(%struct.TYPE_7__* %0, i64** %1, i64* %2, %struct.TYPE_6__** %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64** %1, i64*** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.TYPE_6__** %3, %struct.TYPE_6__*** %8, align 8
  %13 = load i32, i32* @SQLITE_OK, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 80, i32 84
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %11, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = load i64**, i64*** %6, align 8
  %23 = load i64*, i64** %22, align 8
  %24 = icmp ugt i64* %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = call i64 @fuzzMalloc(i32 24)
  %28 = inttoptr i64 %27 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %10, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %32, i32* %9, align 4
  br label %82

33:                                               ; preds = %4
  %34 = load i64**, i64*** %6, align 8
  %35 = load i64*, i64** %34, align 8
  store i64* %35, i64** %12, align 8
  %36 = load i64*, i64** %12, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = call i32 (...) @fuzzCorrupt()
  store i32 %42, i32* %9, align 4
  br label %79

43:                                               ; preds = %33
  %44 = load i64*, i64** %12, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %12, align 8
  %46 = load i64*, i64** %12, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = call i32 @fuzzGetVarint(i64* %46, i32* %48)
  %50 = load i64*, i64** %12, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64* %52, i64** %12, align 8
  %53 = load i64*, i64** %12, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i64* %53, i64** %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i64*, i64** %12, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64* %61, i64** %12, align 8
  %62 = load i64*, i64** %12, align 8
  %63 = bitcast i64* %62 to i8*
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i64*, i64** %12, align 8
  %67 = load i64*, i64** %12, align 8
  %68 = bitcast i64* %67 to i8*
  %69 = call i32 @strlen(i8* %68)
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %66, i64 %71
  store i64* %72, i64** %12, align 8
  %73 = load i64*, i64** %12, align 8
  %74 = load i64*, i64** %7, align 8
  %75 = icmp uge i64* %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %43
  %77 = call i32 (...) @fuzzCorrupt()
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %76, %43
  br label %79

79:                                               ; preds = %78, %41
  %80 = load i64*, i64** %12, align 8
  %81 = load i64**, i64*** %6, align 8
  store i64* %80, i64** %81, align 8
  br label %82

82:                                               ; preds = %79, %31
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @SQLITE_OK, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %88 = call i32 @fuzzFree(%struct.TYPE_6__* %87)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  br label %89

89:                                               ; preds = %86, %82
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** %91, align 8
  %92 = load i32, i32* %9, align 4
  ret i32 %92
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fuzzMalloc(i32) #1

declare dso_local i32 @fuzzCorrupt(...) #1

declare dso_local i32 @fuzzGetVarint(i64*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fuzzFree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
