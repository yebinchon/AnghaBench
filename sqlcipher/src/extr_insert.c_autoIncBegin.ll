; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_insert.c_autoIncBegin.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_insert.c_autoIncBegin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }

@TF_Autoincrement = common dso_local global i32 0, align 4
@DBFLAG_Vacuum = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_SEQUENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, %struct.TYPE_16__*)* @autoIncBegin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autoIncBegin(%struct.TYPE_17__* %0, i32 %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = icmp ne %struct.TYPE_14__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TF_Autoincrement, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %141

31:                                               ; preds = %3
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DBFLAG_Vacuum, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %141

40:                                               ; preds = %31
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = call %struct.TYPE_17__* @sqlite3ParseToplevel(%struct.TYPE_17__* %41)
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %9, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %11, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %56 = icmp eq %struct.TYPE_16__* %55, null
  br i1 %56, label %70, label %57

57:                                               ; preds = %40
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %59 = call i32 @HasRowid(%struct.TYPE_16__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %63 = call i64 @IsVirtual(%struct.TYPE_16__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 2
  br i1 %69, label %70, label %78

70:                                               ; preds = %65, %61, %57, %40
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @SQLITE_CORRUPT_SEQUENCE, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %4, align 4
  br label %143

78:                                               ; preds = %65
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  store %struct.TYPE_18__* %81, %struct.TYPE_18__** %10, align 8
  br label %82

82:                                               ; preds = %93, %78
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %84 = icmp ne %struct.TYPE_18__* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = icmp ne %struct.TYPE_16__* %88, %89
  br label %91

91:                                               ; preds = %85, %82
  %92 = phi i1 [ false, %82 ], [ %90, %85 ]
  br i1 %92, label %93, label %97

93:                                               ; preds = %91
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  store %struct.TYPE_18__* %96, %struct.TYPE_18__** %10, align 8
  br label %82

97:                                               ; preds = %91
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %99 = icmp eq %struct.TYPE_18__* %98, null
  br i1 %99, label %100, label %137

100:                                              ; preds = %97
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = call %struct.TYPE_18__* @sqlite3DbMallocRawNN(%struct.TYPE_19__* %103, i32 24)
  store %struct.TYPE_18__* %104, %struct.TYPE_18__** %10, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %106 = icmp eq %struct.TYPE_18__* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %143

108:                                              ; preds = %100
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 3
  store %struct.TYPE_18__* %111, %struct.TYPE_18__** %113, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  store %struct.TYPE_18__* %114, %struct.TYPE_18__** %116, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  store %struct.TYPE_16__* %117, %struct.TYPE_16__** %119, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 2
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %108, %97
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %137, %31, %3
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %141, %107, %70
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_17__* @sqlite3ParseToplevel(%struct.TYPE_17__*) #1

declare dso_local i32 @HasRowid(%struct.TYPE_16__*) #1

declare dso_local i64 @IsVirtual(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_18__* @sqlite3DbMallocRawNN(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
