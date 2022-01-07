; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_sqlite3VdbeChangeP4.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_sqlite3VdbeChangeP4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i64 }

@VDBE_MAGIC_INIT = common dso_local global i64 0, align 8
@P4_VTAB = common dso_local global i32 0, align 4
@P4_INT32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3VdbeChangeP4(%struct.TYPE_11__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %10, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VDBE_MAGIC_INIT, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %4
  %35 = phi i1 [ true, %4 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @P4_VTAB, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @freeP4(%struct.TYPE_10__* %47, i32 %48, i8* %49)
  br label %51

51:                                               ; preds = %46, %42
  br label %132

52:                                               ; preds = %34
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %52
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %68, %52
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i64 %78
  store %struct.TYPE_12__* %79, %struct.TYPE_12__** %9, align 8
  %80 = load i32, i32* %8, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %73
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82, %73
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @vdbeChangeP4Full(%struct.TYPE_11__* %88, %struct.TYPE_12__* %89, i8* %90, i32 %91)
  br label %132

93:                                               ; preds = %82
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @P4_INT32, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @SQLITE_PTR_TO_INT(i8* %98)
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* @P4_INT32, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %132

106:                                              ; preds = %93
  %107 = load i8*, i8** %7, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %131

109:                                              ; preds = %106
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i8*, i8** %7, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i8* %114, i8** %117, align 8
  %118 = load i32, i32* %8, align 4
  %119 = trunc i32 %118 to i8
  %120 = sext i8 %119 to i32
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @P4_VTAB, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %109
  %127 = load i8*, i8** %7, align 8
  %128 = bitcast i8* %127 to i32*
  %129 = call i32 @sqlite3VtabLock(i32* %128)
  br label %130

130:                                              ; preds = %126, %109
  br label %131

131:                                              ; preds = %130, %106
  br label %132

132:                                              ; preds = %51, %87, %131, %97
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @freeP4(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @vdbeChangeP4Full(%struct.TYPE_11__*, %struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @SQLITE_PTR_TO_INT(i8*) #1

declare dso_local i32 @sqlite3VtabLock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
