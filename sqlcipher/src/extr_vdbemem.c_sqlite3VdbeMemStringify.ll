; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbemem.c_sqlite3VdbeMemStringify.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbemem.c_sqlite3VdbeMemStringify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@MEM_Zero = common dso_local global i32 0, align 4
@MEM_Str = common dso_local global i32 0, align 4
@MEM_Blob = common dso_local global i32 0, align 4
@MEM_Int = common dso_local global i32 0, align 4
@MEM_Real = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%!.15g\00", align 1
@SQLITE_UTF8 = common dso_local global i64 0, align 8
@MEM_Term = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3VdbeMemStringify(%struct.TYPE_11__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  store i32 32, i32* %9, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = icmp eq %struct.TYPE_9__* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @sqlite3_mutex_held(i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %17, %3
  %26 = phi i1 [ true, %3 ], [ %24, %17 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @MEM_Zero, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @MEM_Str, align 4
  %38 = load i32, i32* @MEM_Blob, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @MEM_Int, align 4
  %47 = load i32, i32* @MEM_Real, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = call i32 @sqlite3VdbeMemIsRowSet(%struct.TYPE_11__* %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = call i32 @EIGHT_BYTE_ALIGNMENT(%struct.TYPE_11__* %57)
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = call i64 @sqlite3VdbeMemClearAndResize(%struct.TYPE_11__* %60, i32 32)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %25
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %66, i32* %4, align 4
  br label %133

67:                                               ; preds = %25
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @MEM_Int, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @sqlite3_snprintf(i32 32, i32 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %94

81:                                               ; preds = %67
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @MEM_Real, align 4
  %84 = and i32 %82, %83
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @sqlite3_snprintf(i32 32, i32 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %81, %72
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @sqlite3Strlen30NN(i32 %103)
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i64, i64* @SQLITE_UTF8, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load i32, i32* @MEM_Str, align 4
  %111 = load i32, i32* @MEM_Term, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load i64, i64* %7, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %94
  %120 = load i32, i32* @MEM_Int, align 4
  %121 = load i32, i32* @MEM_Real, align 4
  %122 = or i32 %120, %121
  %123 = xor i32 %122, -1
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %119, %94
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %130 = load i64, i64* %6, align 8
  %131 = call i32 @sqlite3VdbeChangeEncoding(%struct.TYPE_11__* %129, i64 %130)
  %132 = load i32, i32* @SQLITE_OK, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %128, %63
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3VdbeMemIsRowSet(%struct.TYPE_11__*) #1

declare dso_local i32 @EIGHT_BYTE_ALIGNMENT(%struct.TYPE_11__*) #1

declare dso_local i64 @sqlite3VdbeMemClearAndResize(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sqlite3_snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3Strlen30NN(i32) #1

declare dso_local i32 @sqlite3VdbeChangeEncoding(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
