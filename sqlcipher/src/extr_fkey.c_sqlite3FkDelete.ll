; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_fkey.c_sqlite3FkDelete.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_fkey.c_sqlite3FkDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i8*, i32, %struct.TYPE_18__*, i32*, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, %struct.TYPE_15__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3FkDelete(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = icmp eq %struct.TYPE_16__* %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = call i64 @IsVirtual(%struct.TYPE_17__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %20 = call i64 @sqlite3SchemaMutexHeld(%struct.TYPE_16__* %16, i32 0, %struct.TYPE_19__* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %15, %11, %2
  %23 = phi i1 [ true, %11 ], [ true, %2 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %5, align 8
  br label %29

29:                                               ; preds = %127, %22
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = icmp ne %struct.TYPE_18__* %30, null
  br i1 %31, label %32, label %129

32:                                               ; preds = %29
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = icmp ne %struct.TYPE_16__* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %93

40:                                               ; preds = %35, %32
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = icmp ne %struct.TYPE_15__* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %52, align 8
  br label %79

53:                                               ; preds = %40
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 5
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = bitcast %struct.TYPE_14__* %56 to i8*
  store i8* %57, i8** %7, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  br label %70

66:                                               ; preds = %53
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  br label %70

70:                                               ; preds = %66, %60
  %71 = phi i8* [ %65, %60 ], [ %69, %66 ]
  store i8* %71, i8** %8, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @sqlite3HashInsert(i32* %75, i8* %76, i8* %77)
  br label %79

79:                                               ; preds = %70, %45
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = icmp ne %struct.TYPE_14__* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 5
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  store %struct.TYPE_15__* %87, %struct.TYPE_15__** %91, align 8
  br label %92

92:                                               ; preds = %84, %79
  br label %93

93:                                               ; preds = %92, %35
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 1
  br label %103

103:                                              ; preds = %98, %93
  %104 = phi i1 [ true, %93 ], [ %102, %98 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @fkTriggerDelete(%struct.TYPE_16__* %107, i32 %112)
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @fkTriggerDelete(%struct.TYPE_16__* %114, i32 %119)
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  store %struct.TYPE_18__* %123, %struct.TYPE_18__** %6, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %126 = call i32 @sqlite3DbFree(%struct.TYPE_16__* %124, %struct.TYPE_18__* %125)
  br label %127

127:                                              ; preds = %103
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %128, %struct.TYPE_18__** %5, align 8
  br label %29

129:                                              ; preds = %29
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @IsVirtual(%struct.TYPE_17__*) #1

declare dso_local i64 @sqlite3SchemaMutexHeld(%struct.TYPE_16__*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @sqlite3HashInsert(i32*, i8*, i8*) #1

declare dso_local i32 @fkTriggerDelete(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
