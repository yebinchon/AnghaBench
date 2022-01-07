; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_setup.c_adns_forallqueries_next.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_setup.c_adns_forallqueries_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__, i32, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_16__ = type { %struct.TYPE_17__*, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_12__ = type { %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_11__ = type { %struct.TYPE_17__* }

@cc_entex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @adns_forallqueries_next(%struct.TYPE_16__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = load i32, i32* @cc_entex, align 4
  %10 = call i32 @adns__consistency(%struct.TYPE_16__* %8, i32 0, i32 %9)
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %7, align 8
  br label %14

14:                                               ; preds = %113, %2
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %6, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = icmp ne %struct.TYPE_17__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %128

19:                                               ; preds = %14
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = icmp ne %struct.TYPE_17__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %7, align 8
  br label %107

28:                                               ; preds = %19
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = icmp eq %struct.TYPE_17__* %29, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %28
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = icmp ne %struct.TYPE_17__* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  br label %64

46:                                               ; preds = %35
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = icmp ne %struct.TYPE_17__* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  br label %62

57:                                               ; preds = %46
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  br label %62

62:                                               ; preds = %57, %52
  %63 = phi %struct.TYPE_17__* [ %56, %52 ], [ %61, %57 ]
  br label %64

64:                                               ; preds = %62, %41
  %65 = phi %struct.TYPE_17__* [ %45, %41 ], [ %63, %62 ]
  store %struct.TYPE_17__* %65, %struct.TYPE_17__** %7, align 8
  br label %106

66:                                               ; preds = %28
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = icmp eq %struct.TYPE_17__* %67, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %66
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = icmp ne %struct.TYPE_17__* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  br label %89

84:                                               ; preds = %73
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  br label %89

89:                                               ; preds = %84, %79
  %90 = phi %struct.TYPE_17__* [ %83, %79 ], [ %88, %84 ]
  store %struct.TYPE_17__* %90, %struct.TYPE_17__** %7, align 8
  br label %105

91:                                               ; preds = %66
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = icmp eq %struct.TYPE_17__* %92, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  store %struct.TYPE_17__* %102, %struct.TYPE_17__** %7, align 8
  br label %104

103:                                              ; preds = %91
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %7, align 8
  br label %104

104:                                              ; preds = %103, %98
  br label %105

105:                                              ; preds = %104, %89
  br label %106

106:                                              ; preds = %105, %64
  br label %107

107:                                              ; preds = %106, %24
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  br label %114

113:                                              ; preds = %107
  br label %14

114:                                              ; preds = %112
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  store %struct.TYPE_17__* %115, %struct.TYPE_17__** %117, align 8
  %118 = load i8**, i8*** %5, align 8
  %119 = icmp ne i8** %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i8**, i8*** %5, align 8
  store i8* %124, i8** %125, align 8
  br label %126

126:                                              ; preds = %120, %114
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %127, %struct.TYPE_17__** %3, align 8
  br label %128

128:                                              ; preds = %126, %18
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %129
}

declare dso_local i32 @adns__consistency(%struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
