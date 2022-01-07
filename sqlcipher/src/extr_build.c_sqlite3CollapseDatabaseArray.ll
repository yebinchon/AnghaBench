; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3CollapseDatabaseArray.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3CollapseDatabaseArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.Db*, %struct.Db* }
%struct.Db = type { i64, %struct.Db* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3CollapseDatabaseArray(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.Db*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 2, i32* %4, align 4
  store i32 2, i32* %3, align 4
  br label %6

6:                                                ; preds = %53, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %6
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load %struct.Db*, %struct.Db** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.Db, %struct.Db* %15, i64 %17
  store %struct.Db* %18, %struct.Db** %5, align 8
  %19 = load %struct.Db*, %struct.Db** %5, align 8
  %20 = getelementptr inbounds %struct.Db, %struct.Db* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %12
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = load %struct.Db*, %struct.Db** %5, align 8
  %26 = getelementptr inbounds %struct.Db, %struct.Db* %25, i32 0, i32 1
  %27 = load %struct.Db*, %struct.Db** %26, align 8
  %28 = call i32 @sqlite3DbFree(%struct.TYPE_4__* %24, %struct.Db* %27)
  %29 = load %struct.Db*, %struct.Db** %5, align 8
  %30 = getelementptr inbounds %struct.Db, %struct.Db* %29, i32 0, i32 1
  store %struct.Db* null, %struct.Db** %30, align 8
  br label %53

31:                                               ; preds = %12
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load %struct.Db*, %struct.Db** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.Db, %struct.Db* %38, i64 %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load %struct.Db*, %struct.Db** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.Db, %struct.Db* %44, i64 %46
  %48 = bitcast %struct.Db* %41 to i8*
  %49 = bitcast %struct.Db* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 16, i1 false)
  br label %50

50:                                               ; preds = %35, %31
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %23
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %6

56:                                               ; preds = %6
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sle i32 %62, 2
  br i1 %63, label %64, label %90

64:                                               ; preds = %56
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load %struct.Db*, %struct.Db** %66, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.Db*, %struct.Db** %69, align 8
  %71 = icmp ne %struct.Db* %67, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %64
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.Db*, %struct.Db** %74, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load %struct.Db*, %struct.Db** %77, align 8
  %79 = call i32 @memcpy(%struct.Db* %75, %struct.Db* %78, i32 32)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load %struct.Db*, %struct.Db** %82, align 8
  %84 = call i32 @sqlite3DbFree(%struct.TYPE_4__* %80, %struct.Db* %83)
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load %struct.Db*, %struct.Db** %86, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  store %struct.Db* %87, %struct.Db** %89, align 8
  br label %90

90:                                               ; preds = %72, %64, %56
  ret void
}

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_4__*, %struct.Db*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(%struct.Db*, %struct.Db*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
