; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_dispex.c_get_builtin_id.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_dispex.c_get_builtin_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { {}* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, i32 }

@E_FAIL = common dso_local global i64 0, align 8
@fdexNameCaseSensitive = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i32, i32, i32*)* @get_builtin_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_builtin_id(%struct.TYPE_14__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = call %struct.TYPE_13__* @get_dispex_data(%struct.TYPE_14__* %16)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %10, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %19 = icmp ne %struct.TYPE_13__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* @E_FAIL, align 8
  store i64 %21, i64* %5, align 8
  br label %129

22:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %89, %22
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %32, %33
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %13, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %38, i64 %40
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @strcmpiW(i32 %44, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %80, label %49

49:                                               ; preds = %31
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @fdexNameCaseSensitive, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %57, i64 %59
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @strcmpW(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %90

68:                                               ; preds = %54, %49
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %71, i64 %73
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i64, i64* @S_OK, align 8
  store i64 %79, i64* %5, align 8
  br label %129

80:                                               ; preds = %31
  %81 = load i32, i32* %14, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %13, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %89

86:                                               ; preds = %80
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %86, %83
  br label %27

90:                                               ; preds = %67, %27
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = icmp ne %struct.TYPE_11__* %95, null
  br i1 %96, label %97, label %127

97:                                               ; preds = %90
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = bitcast {}** %103 to i64 (%struct.TYPE_14__*, i32, i32, i32*)**
  %105 = load i64 (%struct.TYPE_14__*, i32, i32, i32*)*, i64 (%struct.TYPE_14__*, i32, i32, i32*)** %104, align 8
  %106 = icmp ne i64 (%struct.TYPE_14__*, i32, i32, i32*)* %105, null
  br i1 %106, label %107, label %127

107:                                              ; preds = %97
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = bitcast {}** %113 to i64 (%struct.TYPE_14__*, i32, i32, i32*)**
  %115 = load i64 (%struct.TYPE_14__*, i32, i32, i32*)*, i64 (%struct.TYPE_14__*, i32, i32, i32*)** %114, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = call i64 %115(%struct.TYPE_14__* %116, i32 %117, i32 %118, i32* %119)
  store i64 %120, i64* %15, align 8
  %121 = load i64, i64* %15, align 8
  %122 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %107
  %125 = load i64, i64* %15, align 8
  store i64 %125, i64* %5, align 8
  br label %129

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %126, %97, %90
  %128 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  store i64 %128, i64* %5, align 8
  br label %129

129:                                              ; preds = %127, %124, %68, %20
  %130 = load i64, i64* %5, align 8
  ret i64 %130
}

declare dso_local %struct.TYPE_13__* @get_dispex_data(%struct.TYPE_14__*) #1

declare dso_local i32 @strcmpiW(i32, i32) #1

declare dso_local i64 @strcmpW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
