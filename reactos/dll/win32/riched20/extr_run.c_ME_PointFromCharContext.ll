; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_PointFromCharContext.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_PointFromCharContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, %struct.TYPE_24__, i32, i32, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32* }

@MERF_GRAPHICS = common dso_local global i32 0, align 4
@MERF_ENDPARA = common dso_local global i32 0, align 4
@MEPF_COMPLEX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ME_PointFromCharContext(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_20__, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %11, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MERF_GRAPHICS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %26 = call i32 @ME_GetOLEObjectSize(%struct.TYPE_23__* %24, %struct.TYPE_22__* %25, %struct.TYPE_20__* %10)
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %5, align 4
  br label %122

31:                                               ; preds = %4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MERF_ENDPARA, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %31
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 9
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MEPF_COMPLEX, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %87

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @FALSE, align 4
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 4
  %69 = call i32 @ScriptCPtoX(i32 %50, i32 %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66, %struct.TYPE_24__* %68, i32* %13)
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %49
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %13, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %78, %72, %49
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %5, align 4
  br label %122

87:                                               ; preds = %40
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %87
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.TYPE_21__* @ME_MakeStringR(i64 %99, i32 %102)
  store %struct.TYPE_21__* %103, %struct.TYPE_21__** %11, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %12, align 8
  br label %110

107:                                              ; preds = %87
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %109 = call i32* @get_text(%struct.TYPE_22__* %108, i32 0)
  store i32* %109, i32** %12, align 8
  br label %110

110:                                              ; preds = %107, %94
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ME_GetTextExtent(%struct.TYPE_23__* %111, i32* %112, i32 %113, i32 %116, %struct.TYPE_20__* %10)
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %119 = call i32 @ME_DestroyString(%struct.TYPE_21__* %118)
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %110, %85, %27
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @ME_GetOLEObjectSize(%struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ScriptCPtoX(i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_24__*, i32*) #1

declare dso_local %struct.TYPE_21__* @ME_MakeStringR(i64, i32) #1

declare dso_local i32* @get_text(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ME_GetTextExtent(%struct.TYPE_23__*, i32*, i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @ME_DestroyString(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
