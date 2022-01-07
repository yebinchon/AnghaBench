; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbemem.c_sqlite3VdbeMemNumerify.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbemem.c_sqlite3VdbeMemNumerify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MEM_Int = common dso_local global i32 0, align 4
@MEM_Real = common dso_local global i32 0, align 4
@MEM_Null = common dso_local global i32 0, align 4
@MEM_Blob = common dso_local global i32 0, align 4
@MEM_Str = common dso_local global i32 0, align 4
@MEM_Zero = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3VdbeMemNumerify(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MEM_Int, align 4
  %9 = load i32, i32* @MEM_Real, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MEM_Null, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %7, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %103

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MEM_Blob, align 4
  %20 = load i32, i32* @MEM_Str, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp eq %struct.TYPE_6__* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %15
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @sqlite3_mutex_held(i32 %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %30, %15
  %39 = phi i1 [ true, %15 ], [ %37, %30 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sqlite3Atoi64(i32 %44, i32* %47, i32 %50, i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %38
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = load i32, i32* @MEM_Int, align 4
  %60 = call i32 @MemSetTypeFlag(%struct.TYPE_8__* %58, i32 %59)
  br label %102

61:                                               ; preds = %38
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %4, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sqlite3AtoF(i32 %68, i32* %71, i32 %74, i32 %77)
  %79 = load i32, i32* %3, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %97

81:                                               ; preds = %61
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i64 @sqlite3RealSameAsInt(i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %81
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %95 = load i32, i32* @MEM_Int, align 4
  %96 = call i32 @MemSetTypeFlag(%struct.TYPE_8__* %94, i32 %95)
  br label %101

97:                                               ; preds = %81, %61
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %99 = load i32, i32* @MEM_Real, align 4
  %100 = call i32 @MemSetTypeFlag(%struct.TYPE_8__* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %89
  br label %102

102:                                              ; preds = %101, %57
  br label %103

103:                                              ; preds = %102, %1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MEM_Int, align 4
  %108 = load i32, i32* @MEM_Real, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @MEM_Null, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %106, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load i32, i32* @MEM_Str, align 4
  %117 = load i32, i32* @MEM_Blob, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @MEM_Zero, align 4
  %120 = or i32 %118, %119
  %121 = xor i32 %120, -1
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %126
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3Atoi64(i32, i32*, i32, i32) #1

declare dso_local i32 @MemSetTypeFlag(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sqlite3AtoF(i32, i32*, i32, i32) #1

declare dso_local i64 @sqlite3RealSameAsInt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
