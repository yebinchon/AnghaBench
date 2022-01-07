; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchAvlRemove.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchAvlRemove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__**, %struct.TYPE_11__*)* @amatchAvlRemove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amatchAvlRemove(%struct.TYPE_11__** %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_11__**, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %11 = call %struct.TYPE_11__** @amatchAvlFromPtr(%struct.TYPE_11__* %9, %struct.TYPE_11__** %10)
  store %struct.TYPE_11__** %11, %struct.TYPE_11__*** %5, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = icmp eq %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = icmp eq %struct.TYPE_11__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %22, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %6, align 8
  br label %137

26:                                               ; preds = %16, %2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %104

31:                                               ; preds = %26
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = icmp ne %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %104

36:                                               ; preds = %31
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = call %struct.TYPE_11__* @amatchAvlFirst(%struct.TYPE_11__* %39)
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %7, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = call %struct.TYPE_11__** @amatchAvlFromPtr(%struct.TYPE_11__* %44, %struct.TYPE_11__** null)
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %36
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %57, align 8
  br label %58

58:                                               ; preds = %50, %36
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %6, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = icmp ne %struct.TYPE_11__* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %58
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %76, align 8
  br label %84

77:                                               ; preds = %58
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = icmp eq %struct.TYPE_11__* %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %6, align 8
  br label %84

84:                                               ; preds = %77, %71
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  store %struct.TYPE_11__* %87, %struct.TYPE_11__** %8, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  store %struct.TYPE_11__* %87, %struct.TYPE_11__** %89, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %91 = icmp ne %struct.TYPE_11__* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  store %struct.TYPE_11__* %93, %struct.TYPE_11__** %95, align 8
  br label %96

96:                                               ; preds = %92, %84
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %101, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %103 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__* %102, %struct.TYPE_11__** %103, align 8
  br label %136

104:                                              ; preds = %31, %26
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = icmp eq %struct.TYPE_11__* %107, null
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  store %struct.TYPE_11__* %112, %struct.TYPE_11__** %6, align 8
  %113 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__* %112, %struct.TYPE_11__** %113, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  store %struct.TYPE_11__* %116, %struct.TYPE_11__** %118, align 8
  br label %135

119:                                              ; preds = %104
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = icmp eq %struct.TYPE_11__* %122, null
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  store %struct.TYPE_11__* %127, %struct.TYPE_11__** %6, align 8
  %128 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__* %127, %struct.TYPE_11__** %128, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  store %struct.TYPE_11__* %131, %struct.TYPE_11__** %133, align 8
  br label %134

134:                                              ; preds = %124, %119
  br label %135

135:                                              ; preds = %134, %109
  br label %136

136:                                              ; preds = %135, %96
  br label %137

137:                                              ; preds = %136, %21
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %139 = call %struct.TYPE_11__* @amatchAvlBalance(%struct.TYPE_11__* %138)
  %140 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  store %struct.TYPE_11__* %139, %struct.TYPE_11__** %140, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %142, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %144, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %146, align 8
  ret void
}

declare dso_local %struct.TYPE_11__** @amatchAvlFromPtr(%struct.TYPE_11__*, %struct.TYPE_11__**) #1

declare dso_local %struct.TYPE_11__* @amatchAvlFirst(%struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_11__* @amatchAvlBalance(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
