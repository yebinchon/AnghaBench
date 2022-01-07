; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_findSqlFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_findSqlFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_5__*, i8*)* @findSqlFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @findSqlFunc(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strlen30(i8* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 40, %12
  %14 = add i64 %13, 1
  %15 = trunc i64 %14 to i32
  %16 = call i64 @Tcl_Alloc(i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 1
  %20 = bitcast %struct.TYPE_6__* %19 to i8*
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i32 @memcpy(i8* %25, i8* %26, i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %6, align 8
  br label %33

33:                                               ; preds = %51, %2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @sqlite3_stricmp(i8* %39, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = bitcast %struct.TYPE_6__* %46 to i8*
  %48 = call i32 @Tcl_Free(i8* %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %3, align 8
  br label %75

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %6, align 8
  br label %33

55:                                               ; preds = %33
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %70, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %3, align 8
  br label %75

75:                                               ; preds = %55, %45
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %76
}

declare dso_local i32 @strlen30(i8*) #1

declare dso_local i64 @Tcl_Alloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @Tcl_Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
