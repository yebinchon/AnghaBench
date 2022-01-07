; ModuleID = '/home/carl/AnghaBench/redis/src/extr_dict.c_dictGetRandomKey.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_dict.c_dictGetRandomKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @dictGetRandomKey(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = call i64 @dictSize(%struct.TYPE_11__* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %143

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = call i64 @dictIsRehashing(%struct.TYPE_11__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = call i32 @_dictRehashStep(%struct.TYPE_11__* %18)
  br label %20

20:                                               ; preds = %17, %13
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = call i64 @dictIsRehashing(%struct.TYPE_11__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %93

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %89, %24
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (...) @random()
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %35, %41
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %42, %45
  %47 = srem i32 %29, %46
  %48 = add nsw i32 %28, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = icmp uge i64 %50, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %25
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = sub i64 %66, %73
  %75 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %65, i64 %74
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  br label %87

77:                                               ; preds = %25
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %83, i64 %84
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  br label %87

87:                                               ; preds = %77, %59
  %88 = phi %struct.TYPE_10__* [ %76, %59 ], [ %86, %77 ]
  store %struct.TYPE_10__* %88, %struct.TYPE_10__** %4, align 8
  br label %89

89:                                               ; preds = %87
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = icmp eq %struct.TYPE_10__* %90, null
  br i1 %91, label %25, label %92

92:                                               ; preds = %89
  br label %117

93:                                               ; preds = %20
  br label %94

94:                                               ; preds = %113, %93
  %95 = call i32 (...) @random()
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %95, %101
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %6, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %108, align 8
  %110 = load i64, i64* %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %109, i64 %110
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  store %struct.TYPE_10__* %112, %struct.TYPE_10__** %4, align 8
  br label %113

113:                                              ; preds = %94
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = icmp eq %struct.TYPE_10__* %114, null
  br i1 %115, label %94, label %116

116:                                              ; preds = %113
  br label %117

117:                                              ; preds = %116, %92
  store i32 0, i32* %7, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %118, %struct.TYPE_10__** %5, align 8
  br label %119

119:                                              ; preds = %122, %117
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = icmp ne %struct.TYPE_10__* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  store %struct.TYPE_10__* %125, %struct.TYPE_10__** %4, align 8
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %119

128:                                              ; preds = %119
  %129 = call i32 (...) @random()
  %130 = load i32, i32* %7, align 4
  %131 = srem i32 %129, %130
  store i32 %131, i32* %8, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %132, %struct.TYPE_10__** %4, align 8
  br label %133

133:                                              ; preds = %137, %128
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %8, align 4
  %136 = icmp ne i32 %134, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  store %struct.TYPE_10__* %140, %struct.TYPE_10__** %4, align 8
  br label %133

141:                                              ; preds = %133
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %142, %struct.TYPE_10__** %2, align 8
  br label %143

143:                                              ; preds = %141, %12
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %144
}

declare dso_local i64 @dictSize(%struct.TYPE_11__*) #1

declare dso_local i64 @dictIsRehashing(%struct.TYPE_11__*) #1

declare dso_local i32 @_dictRehashStep(%struct.TYPE_11__*) #1

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
