; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3ResetOneSchema.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3ResetOneSchema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@DB_ResetWanted = common dso_local global i32 0, align 4
@DBFLAG_SchemaKnownOk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3ResetOneSchema(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @sqlite3SchemaMutexHeld(%struct.TYPE_8__* %16, i32 %17, i32 0)
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @DB_ResetWanted, align 4
  %23 = call i32 @DbSetProperty(%struct.TYPE_8__* %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = load i32, i32* @DB_ResetWanted, align 4
  %26 = call i32 @DbSetProperty(%struct.TYPE_8__* %24, i32 1, i32 %25)
  %27 = load i32, i32* @DBFLAG_SchemaKnownOk, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %15, %2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %62, %38
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @DB_ResetWanted, align 4
  %49 = call i64 @DbHasProperty(%struct.TYPE_8__* %46, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sqlite3SchemaClear(i32 %59)
  br label %61

61:                                               ; preds = %51, %45
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %39

65:                                               ; preds = %39
  br label %66

66:                                               ; preds = %65, %33
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3SchemaMutexHeld(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @DbSetProperty(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @DbHasProperty(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @sqlite3SchemaClear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
