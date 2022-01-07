; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lgc.c_reallymarkobject.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lgc.c_reallymarkobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_25__*)* @reallymarkobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reallymarkobject(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  br label %6

6:                                                ; preds = %66, %2
  %7 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %8 = call i64 @isshared(%struct.TYPE_25__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %106

11:                                               ; preds = %6
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %13 = call i32 @white2gray(%struct.TYPE_25__* %12)
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %104 [
    i32 131, label %17
    i32 133, label %29
    i32 128, label %42
    i32 134, label %69
    i32 135, label %76
    i32 130, label %83
    i32 129, label %90
    i32 132, label %97
  ]

17:                                               ; preds = %11
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %19 = call i32 @gray2black(%struct.TYPE_25__* %18)
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %21 = call %struct.TYPE_22__* @gco2ts(%struct.TYPE_25__* %20)
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sizelstring(i32 %23)
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %106

29:                                               ; preds = %11
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %31 = call i32 @gray2black(%struct.TYPE_25__* %30)
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %33 = call %struct.TYPE_22__* @gco2ts(%struct.TYPE_25__* %32)
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sizelstring(i32 %36)
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %106

42:                                               ; preds = %11
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %45 = call %struct.TYPE_26__* @gco2u(%struct.TYPE_25__* %44)
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @markobjectN(%struct.TYPE_24__* %43, i32 %47)
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %50 = call i32 @gray2black(%struct.TYPE_25__* %49)
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %52 = call %struct.TYPE_26__* @gco2u(%struct.TYPE_25__* %51)
  %53 = call i32 @sizeudata(%struct.TYPE_26__* %52)
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %62 = call %struct.TYPE_26__* @gco2u(%struct.TYPE_25__* %61)
  %63 = call i32 @getuservalue(i32 %60, %struct.TYPE_26__* %62, i32* %5)
  %64 = call i32 @valiswhite(i32* %5)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %42
  %67 = call %struct.TYPE_25__* @gcvalue(i32* %5)
  store %struct.TYPE_25__* %67, %struct.TYPE_25__** %4, align 8
  br label %6

68:                                               ; preds = %42
  br label %106

69:                                               ; preds = %11
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %71 = call i32 @gco2lcl(%struct.TYPE_25__* %70)
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @linkgclist(i32 %71, i32 %74)
  br label %106

76:                                               ; preds = %11
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %78 = call i32 @gco2ccl(%struct.TYPE_25__* %77)
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @linkgclist(i32 %78, i32 %81)
  br label %106

83:                                               ; preds = %11
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %85 = call i32 @gco2t(%struct.TYPE_25__* %84)
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @linkgclist(i32 %85, i32 %88)
  br label %106

90:                                               ; preds = %11
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %92 = call i32 @gco2th(%struct.TYPE_25__* %91)
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @linkgclist(i32 %92, i32 %95)
  br label %106

97:                                               ; preds = %11
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %99 = call i32 @gco2p(%struct.TYPE_25__* %98)
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @linkgclist(i32 %99, i32 %102)
  br label %106

104:                                              ; preds = %11
  %105 = call i32 @lua_assert(i32 0)
  br label %106

106:                                              ; preds = %10, %104, %97, %90, %83, %76, %69, %68, %29, %17
  ret void
}

declare dso_local i64 @isshared(%struct.TYPE_25__*) #1

declare dso_local i32 @white2gray(%struct.TYPE_25__*) #1

declare dso_local i32 @gray2black(%struct.TYPE_25__*) #1

declare dso_local i32 @sizelstring(i32) #1

declare dso_local %struct.TYPE_22__* @gco2ts(%struct.TYPE_25__*) #1

declare dso_local i32 @markobjectN(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_26__* @gco2u(%struct.TYPE_25__*) #1

declare dso_local i32 @sizeudata(%struct.TYPE_26__*) #1

declare dso_local i32 @getuservalue(i32, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @valiswhite(i32*) #1

declare dso_local %struct.TYPE_25__* @gcvalue(i32*) #1

declare dso_local i32 @linkgclist(i32, i32) #1

declare dso_local i32 @gco2lcl(%struct.TYPE_25__*) #1

declare dso_local i32 @gco2ccl(%struct.TYPE_25__*) #1

declare dso_local i32 @gco2t(%struct.TYPE_25__*) #1

declare dso_local i32 @gco2th(%struct.TYPE_25__*) #1

declare dso_local i32 @gco2p(%struct.TYPE_25__*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
