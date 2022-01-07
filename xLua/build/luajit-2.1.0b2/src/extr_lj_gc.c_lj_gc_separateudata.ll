; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_lj_gc_separateudata.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_lj_gc_separateudata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@MM_gc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lj_gc_separateudata(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = call %struct.TYPE_22__* @mainthread(%struct.TYPE_19__* %9)
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i32* %11, i32** %6, align 8
  br label %12

12:                                               ; preds = %110, %2
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_20__* @gcref(i32 %14)
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %7, align 8
  %16 = icmp ne %struct.TYPE_20__* %15, null
  br i1 %16, label %17, label %111

17:                                               ; preds = %12
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %19 = call i64 @iswhite(%struct.TYPE_20__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21, %17
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %26 = call %struct.TYPE_21__* @gco2ud(%struct.TYPE_20__* %25)
  %27 = call i64 @isfinalized(%struct.TYPE_21__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24, %21
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  store i32* %32, i32** %6, align 8
  br label %110

33:                                               ; preds = %24
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %36 = call %struct.TYPE_21__* @gco2ud(%struct.TYPE_20__* %35)
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @tabref(i32 %38)
  %40 = load i32, i32* @MM_gc, align 4
  %41 = call i32 @lj_meta_fastg(%struct.TYPE_19__* %34, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %33
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %45 = call i32 @markfinalized(%struct.TYPE_20__* %44)
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  store i32* %48, i32** %6, align 8
  br label %109

49:                                               ; preds = %33
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %51 = call %struct.TYPE_21__* @gco2ud(%struct.TYPE_20__* %50)
  %52 = call i64 @sizeudata(%struct.TYPE_21__* %51)
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %5, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %56 = call i32 @markfinalized(%struct.TYPE_20__* %55)
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_20__* @gcref(i32 %65)
  %67 = icmp ne %struct.TYPE_20__* %66, null
  br i1 %67, label %68, label %95

68:                                               ; preds = %49
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.TYPE_20__* @gcref(i32 %72)
  store %struct.TYPE_20__* %73, %struct.TYPE_20__** %8, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @setgcrefr(i32 %77, i32 %81)
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %88 = call i32 @setgcref(i32 %86, %struct.TYPE_20__* %87)
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %94 = call i32 @setgcref(i32 %92, %struct.TYPE_20__* %93)
  br label %108

95:                                               ; preds = %49
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %101 = call i32 @setgcref(i32 %99, %struct.TYPE_20__* %100)
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %107 = call i32 @setgcref(i32 %105, %struct.TYPE_20__* %106)
  br label %108

108:                                              ; preds = %95, %68
  br label %109

109:                                              ; preds = %108, %43
  br label %110

110:                                              ; preds = %109, %29
  br label %12

111:                                              ; preds = %12
  %112 = load i64, i64* %5, align 8
  ret i64 %112
}

declare dso_local %struct.TYPE_22__* @mainthread(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @gcref(i32) #1

declare dso_local i64 @iswhite(%struct.TYPE_20__*) #1

declare dso_local i64 @isfinalized(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @gco2ud(%struct.TYPE_20__*) #1

declare dso_local i32 @lj_meta_fastg(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @tabref(i32) #1

declare dso_local i32 @markfinalized(%struct.TYPE_20__*) #1

declare dso_local i64 @sizeudata(%struct.TYPE_21__*) #1

declare dso_local i32 @setgcrefr(i32, i32) #1

declare dso_local i32 @setgcref(i32, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
