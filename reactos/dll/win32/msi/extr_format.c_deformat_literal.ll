; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_deformat_literal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_deformat_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { i32, i32 }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@FORMAT_LITERAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.TYPE_18__*, %struct.TYPE_17__*, i8**, i32*, i32*)* @deformat_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @deformat_literal(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i8** %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8, align 1
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %16 = call i8* @get_formstr_data(%struct.TYPE_18__* %14, %struct.TYPE_17__* %15)
  store i8* %16, i8** %11, align 8
  store i64* null, i64** %12, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %13, align 1
  %20 = load i8, i8* %13, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 92
  br i1 %22, label %23, label %43

23:                                               ; preds = %5
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  store i64* null, i64** %12, align 8
  br label %42

35:                                               ; preds = %23
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i64* @dup_formstr(%struct.TYPE_18__* %38, %struct.TYPE_17__* %39, i32* %40)
  store i64* %41, i64** %12, align 8
  br label %42

42:                                               ; preds = %35, %32
  br label %132

43:                                               ; preds = %5
  %44 = load i8, i8* %13, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 126
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i64* null, i64** %12, align 8
  br label %60

53:                                               ; preds = %47
  %54 = call i64* @msi_alloc(i32 8)
  store i64* %54, i64** %12, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64*, i64** %12, align 8
  store i64 0, i64* %57, align 8
  %58 = load i32*, i32** %10, align 8
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %52
  br label %131

61:                                               ; preds = %43
  %62 = load i8, i8* %13, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 37
  br i1 %64, label %77, label %65

65:                                               ; preds = %61
  %66 = load i8, i8* %13, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 35
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i8, i8* %13, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 33
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i8, i8* %13, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 36
  br i1 %76, label %77, label %113

77:                                               ; preds = %73, %69, %65, %61
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 4
  %86 = load i8, i8* %13, align 1
  %87 = sext i8 %86 to i32
  switch i32 %87, label %110 [
    i32 37, label %88
    i32 35, label %93
    i32 33, label %99
    i32 36, label %105
  ]

88:                                               ; preds = %77
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i64* @deformat_environment(%struct.TYPE_18__* %89, %struct.TYPE_17__* %90, i32* %91)
  store i64* %92, i64** %12, align 8
  br label %110

93:                                               ; preds = %77
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %96 = load i8*, i8** @FALSE, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = call i64* @deformat_file(%struct.TYPE_18__* %94, %struct.TYPE_17__* %95, i8* %96, i32* %97)
  store i64* %98, i64** %12, align 8
  br label %110

99:                                               ; preds = %77
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %102 = load i8*, i8** @TRUE, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = call i64* @deformat_file(%struct.TYPE_18__* %100, %struct.TYPE_17__* %101, i8* %102, i32* %103)
  store i64* %104, i64** %12, align 8
  br label %110

105:                                              ; preds = %77
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = call i64* @deformat_component(%struct.TYPE_18__* %106, %struct.TYPE_17__* %107, i32* %108)
  store i64* %109, i64** %12, align 8
  br label %110

110:                                              ; preds = %77, %105, %99, %93, %88
  %111 = load i32, i32* @FORMAT_LITERAL, align 4
  %112 = load i32*, i32** %9, align 8
  store i32 %111, i32* %112, align 4
  br label %130

113:                                              ; preds = %73
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = call i64* @deformat_property(%struct.TYPE_18__* %114, %struct.TYPE_17__* %115, i32* %116)
  store i64* %117, i64** %12, align 8
  %118 = load i32, i32* @FORMAT_LITERAL, align 4
  %119 = load i32*, i32** %9, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i64*, i64** %12, align 8
  %121 = icmp ne i64* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %113
  %123 = load i8*, i8** @TRUE, align 8
  %124 = load i8**, i8*** %8, align 8
  store i8* %123, i8** %124, align 8
  br label %129

125:                                              ; preds = %113
  %126 = load i8*, i8** @TRUE, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  br label %129

129:                                              ; preds = %125, %122
  br label %130

130:                                              ; preds = %129, %110
  br label %131

131:                                              ; preds = %130, %60
  br label %132

132:                                              ; preds = %131, %42
  %133 = load i64*, i64** %12, align 8
  ret i64* %133
}

declare dso_local i8* @get_formstr_data(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i64* @dup_formstr(%struct.TYPE_18__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i64* @msi_alloc(i32) #1

declare dso_local i64* @deformat_environment(%struct.TYPE_18__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i64* @deformat_file(%struct.TYPE_18__*, %struct.TYPE_17__*, i8*, i32*) #1

declare dso_local i64* @deformat_component(%struct.TYPE_18__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i64* @deformat_property(%struct.TYPE_18__*, %struct.TYPE_17__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
