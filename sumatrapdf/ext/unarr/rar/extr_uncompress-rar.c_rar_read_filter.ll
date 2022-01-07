; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_rar_read_filter.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_rar_read_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"OOM during decompression\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32 (%struct.TYPE_14__*, i32*)*, i64*)* @rar_read_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar_read_filter(%struct.TYPE_14__* %0, i32 (%struct.TYPE_14__*, i32*)* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32 (%struct.TYPE_14__*, i32*)*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 (%struct.TYPE_14__*, i32*)* %1, i32 (%struct.TYPE_14__*, i32*)** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i32 (%struct.TYPE_14__*, i32*)*, i32 (%struct.TYPE_14__*, i32*)** %6, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = call i32 %13(%struct.TYPE_14__* %14, i32* %8)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %116

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 7
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, 7
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i32 (%struct.TYPE_14__*, i32*)*, i32 (%struct.TYPE_14__*, i32*)** %6, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = call i32 %25(%struct.TYPE_14__* %26, i32* %9)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %116

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 7
  store i32 %32, i32* %11, align 4
  br label %55

33:                                               ; preds = %18
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load i32 (%struct.TYPE_14__*, i32*)*, i32 (%struct.TYPE_14__*, i32*)** %6, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = call i32 %37(%struct.TYPE_14__* %38, i32* %9)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %116

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 %43, 8
  store i32 %44, i32* %11, align 4
  %45 = load i32 (%struct.TYPE_14__*, i32*)*, i32 (%struct.TYPE_14__*, i32*)** %6, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = call i32 %45(%struct.TYPE_14__* %46, i32* %9)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %116

50:                                               ; preds = %42
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %50, %33
  br label %55

55:                                               ; preds = %54, %30
  %56 = load i32, i32* %11, align 4
  %57 = call i32* @malloc(i32 %56)
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %116

62:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %80, %62
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  %68 = load i32 (%struct.TYPE_14__*, i32*)*, i32 (%struct.TYPE_14__*, i32*)** %6, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = call i32 %68(%struct.TYPE_14__* %69, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @free(i32* %77)
  store i32 0, i32* %4, align 4
  br label %116

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %63

83:                                               ; preds = %63
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @rar_parse_filter(%struct.TYPE_14__* %84, i32* %85, i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %83
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @free(i32* %91)
  store i32 0, i32* %4, align 4
  br label %116

93:                                               ; preds = %83
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @free(i32* %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %7, align 8
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %102, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %93
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %7, align 8
  store i64 %113, i64* %114, align 8
  br label %115

115:                                              ; preds = %106, %93
  store i32 1, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %90, %76, %60, %49, %41, %29, %17
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @rar_parse_filter(%struct.TYPE_14__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
