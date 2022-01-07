; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_propagatemark.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_propagatemark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_37__*, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_35__ = type { i32, %struct.TYPE_37__* }
%struct.TYPE_38__ = type { %struct.TYPE_32__, %struct.TYPE_31__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_37__* }
%struct.TYPE_33__ = type { i32, i32, %struct.TYPE_37__* }
%struct.TYPE_36__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_37__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_34__*)* @propagatemark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @propagatemark(%struct.TYPE_34__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_34__*, align 8
  %4 = alloca %struct.TYPE_37__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %3, align 8
  %9 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  store %struct.TYPE_37__* %11, %struct.TYPE_37__** %4, align 8
  %12 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %13 = call i32 @gray2black(%struct.TYPE_37__* %12)
  %14 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %159 [
    i32 5, label %18
    i32 6, label %46
    i32 8, label %77
    i32 9, label %111
  ]

18:                                               ; preds = %1
  %19 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %20 = call %struct.TYPE_35__* @gco2h(%struct.TYPE_37__* %19)
  store %struct.TYPE_35__* %20, %struct.TYPE_35__** %5, align 8
  %21 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_37__*, %struct.TYPE_37__** %22, align 8
  %24 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %24, i32 0, i32 0
  store %struct.TYPE_37__* %23, %struct.TYPE_37__** %25, align 8
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %27 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %28 = call i32 @traversetable(%struct.TYPE_34__* %26, %struct.TYPE_35__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %32 = call i32 @black2gray(%struct.TYPE_37__* %31)
  br label %33

33:                                               ; preds = %30, %18
  %34 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = add i64 16, %38
  %40 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %41 = call i32 @sizenode(%struct.TYPE_35__* %40)
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = add i64 %39, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %2, align 4
  br label %160

46:                                               ; preds = %1
  %47 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %48 = call %struct.TYPE_38__* @gco2cl(%struct.TYPE_37__* %47)
  store %struct.TYPE_38__* %48, %struct.TYPE_38__** %6, align 8
  %49 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_37__*, %struct.TYPE_37__** %51, align 8
  %53 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %53, i32 0, i32 0
  store %struct.TYPE_37__* %52, %struct.TYPE_37__** %54, align 8
  %55 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %56 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %57 = call i32 @traverseclosure(%struct.TYPE_34__* %55, %struct.TYPE_38__* %56)
  %58 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %46
  %64 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @sizeCclosure(i32 %67)
  br label %75

69:                                               ; preds = %46
  %70 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @sizeLclosure(i32 %73)
  br label %75

75:                                               ; preds = %69, %63
  %76 = phi i32 [ %68, %63 ], [ %74, %69 ]
  store i32 %76, i32* %2, align 4
  br label %160

77:                                               ; preds = %1
  %78 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %79 = call %struct.TYPE_33__* @gco2th(%struct.TYPE_37__* %78)
  store %struct.TYPE_33__* %79, %struct.TYPE_33__** %7, align 8
  %80 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_37__*, %struct.TYPE_37__** %81, align 8
  %83 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %83, i32 0, i32 0
  store %struct.TYPE_37__* %82, %struct.TYPE_37__** %84, align 8
  %85 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_37__*, %struct.TYPE_37__** %86, align 8
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %88, i32 0, i32 2
  store %struct.TYPE_37__* %87, %struct.TYPE_37__** %89, align 8
  %90 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i32 0, i32 1
  store %struct.TYPE_37__* %90, %struct.TYPE_37__** %92, align 8
  %93 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %94 = call i32 @black2gray(%struct.TYPE_37__* %93)
  %95 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %97 = call i32 @traversestack(%struct.TYPE_34__* %95, %struct.TYPE_33__* %96)
  %98 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = mul i64 4, %101
  %103 = add i64 16, %102
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 4, %107
  %109 = add i64 %103, %108
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %2, align 4
  br label %160

111:                                              ; preds = %1
  %112 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %113 = call %struct.TYPE_36__* @gco2p(%struct.TYPE_37__* %112)
  store %struct.TYPE_36__* %113, %struct.TYPE_36__** %8, align 8
  %114 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %114, i32 0, i32 6
  %116 = load %struct.TYPE_37__*, %struct.TYPE_37__** %115, align 8
  %117 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %117, i32 0, i32 0
  store %struct.TYPE_37__* %116, %struct.TYPE_37__** %118, align 8
  %119 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %120 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %121 = call i32 @traverseproto(%struct.TYPE_34__* %119, %struct.TYPE_36__* %120)
  %122 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = mul i64 4, %125
  %127 = add i64 32, %126
  %128 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 8, %131
  %133 = add i64 %127, %132
  %134 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = mul i64 4, %137
  %139 = add i64 %133, %138
  %140 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 4, %143
  %145 = add i64 %139, %144
  %146 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = mul i64 4, %149
  %151 = add i64 %145, %150
  %152 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 8, %155
  %157 = add i64 %151, %156
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %2, align 4
  br label %160

159:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %111, %77, %75, %33
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @gray2black(%struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_35__* @gco2h(%struct.TYPE_37__*) #1

declare dso_local i32 @traversetable(%struct.TYPE_34__*, %struct.TYPE_35__*) #1

declare dso_local i32 @black2gray(%struct.TYPE_37__*) #1

declare dso_local i32 @sizenode(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_38__* @gco2cl(%struct.TYPE_37__*) #1

declare dso_local i32 @traverseclosure(%struct.TYPE_34__*, %struct.TYPE_38__*) #1

declare dso_local i32 @sizeCclosure(i32) #1

declare dso_local i32 @sizeLclosure(i32) #1

declare dso_local %struct.TYPE_33__* @gco2th(%struct.TYPE_37__*) #1

declare dso_local i32 @traversestack(%struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_36__* @gco2p(%struct.TYPE_37__*) #1

declare dso_local i32 @traverseproto(%struct.TYPE_34__*, %struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
