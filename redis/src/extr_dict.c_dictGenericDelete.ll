; ModuleID = '/home/carl/AnghaBench/redis/src/extr_dict.c_dictGenericDelete.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_dict.c_dictGenericDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_16__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_17__*, i8*, i32)* @dictGenericDelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @dictGenericDelete(%struct.TYPE_17__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %143

29:                                               ; preds = %20, %3
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = call i64 @dictIsRehashing(%struct.TYPE_17__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = call i32 @_dictRehashStep(%struct.TYPE_17__* %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @dictHashKey(%struct.TYPE_17__* %37, i8* %38)
  store i64 %39, i64* %8, align 8
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %139, %36
  %41 = load i32, i32* %12, align 4
  %42 = icmp sle i32 %41, 1
  br i1 %42, label %43, label %142

43:                                               ; preds = %40
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = and i64 %44, %52
  store i64 %53, i64* %9, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %61, i64 %62
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %11, align 8
  br label %65

65:                                               ; preds = %128, %43
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %67 = icmp ne %struct.TYPE_16__* %66, null
  br i1 %67, label %68, label %133

68:                                               ; preds = %65
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = icmp eq i8* %69, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %68
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @dictCompareKeys(%struct.TYPE_17__* %75, i8* %76, i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %128

82:                                               ; preds = %74, %68
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %84 = icmp ne %struct.TYPE_16__* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  store %struct.TYPE_16__* %88, %struct.TYPE_16__** %90, align 8
  br label %105

91:                                               ; preds = %82
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %101, align 8
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %102, i64 %103
  store %struct.TYPE_16__* %94, %struct.TYPE_16__** %104, align 8
  br label %105

105:                                              ; preds = %91, %85
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %105
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %111 = call i32 @dictFreeKey(%struct.TYPE_17__* %109, %struct.TYPE_16__* %110)
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %114 = call i32 @dictFreeVal(%struct.TYPE_17__* %112, %struct.TYPE_16__* %113)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %116 = call i32 @zfree(%struct.TYPE_16__* %115)
  br label %117

117:                                              ; preds = %108, %105
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, -1
  store i64 %126, i64* %124, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %127, %struct.TYPE_16__** %4, align 8
  br label %143

128:                                              ; preds = %74
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %129, %struct.TYPE_16__** %11, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  store %struct.TYPE_16__* %132, %struct.TYPE_16__** %10, align 8
  br label %65

133:                                              ; preds = %65
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %135 = call i64 @dictIsRehashing(%struct.TYPE_17__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  br label %142

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %40

142:                                              ; preds = %137, %40
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %143

143:                                              ; preds = %142, %117, %28
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  ret %struct.TYPE_16__* %144
}

declare dso_local i64 @dictIsRehashing(%struct.TYPE_17__*) #1

declare dso_local i32 @_dictRehashStep(%struct.TYPE_17__*) #1

declare dso_local i64 @dictHashKey(%struct.TYPE_17__*, i8*) #1

declare dso_local i64 @dictCompareKeys(%struct.TYPE_17__*, i8*, i8*) #1

declare dso_local i32 @dictFreeKey(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @dictFreeVal(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @zfree(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
