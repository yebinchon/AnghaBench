; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_vdbeCompareMemString.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_vdbeCompareMemString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i8*, i32, i32 }
%struct.TYPE_11__ = type { i64, i32 (i32, i32, i8*, i32, i8*)*, i32 }

@MEM_Null = common dso_local global i32 0, align 4
@MEM_Ephem = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*)* @vdbeCompareMemString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbeCompareMemString(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32 (i32, i32, i8*, i32, i8*)*, i32 (i32, i32, i8*, i32, i8*)** %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 %25(i32 %28, i32 %31, i8* %34, i32 %37, i8* %40)
  store i32 %41, i32* %5, align 4
  br label %99

42:                                               ; preds = %4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MEM_Null, align 4
  %47 = call i32 @sqlite3VdbeMemInit(%struct.TYPE_10__* %13, i32 %45, i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MEM_Null, align 4
  %52 = call i32 @sqlite3VdbeMemInit(%struct.TYPE_10__* %14, i32 %50, i32 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = load i32, i32* @MEM_Ephem, align 4
  %55 = call i32 @sqlite3VdbeMemShallowCopy(%struct.TYPE_10__* %13, %struct.TYPE_10__* %53, i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = load i32, i32* @MEM_Ephem, align 4
  %58 = call i32 @sqlite3VdbeMemShallowCopy(%struct.TYPE_10__* %14, %struct.TYPE_10__* %56, i32 %57)
  %59 = bitcast %struct.TYPE_10__* %13 to i32*
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @sqlite3ValueText(i32* %59, i64 %62)
  store i8* %63, i8** %11, align 8
  %64 = bitcast %struct.TYPE_10__* %14 to i32*
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i8* @sqlite3ValueText(i32* %64, i64 %67)
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %42
  %72 = load i8*, i8** %12, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %71, %42
  %75 = load i32*, i32** %9, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %74
  store i32 0, i32* %10, align 4
  br label %95

81:                                               ; preds = %71
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32 (i32, i32, i8*, i32, i8*)*, i32 (i32, i32, i8*, i32, i8*)** %83, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = call i32 %84(i32 %87, i32 %89, i8* %90, i32 %92, i8* %93)
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %81, %80
  %96 = call i32 @sqlite3VdbeMemRelease(%struct.TYPE_10__* %13)
  %97 = call i32 @sqlite3VdbeMemRelease(%struct.TYPE_10__* %14)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %95, %22
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @sqlite3VdbeMemInit(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeMemShallowCopy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i8* @sqlite3ValueText(i32*, i64) #1

declare dso_local i32 @sqlite3VdbeMemRelease(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
