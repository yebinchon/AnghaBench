; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mlang/extr_mlang.c_EnumCodePage_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mlang/extr_mlang.c_EnumCodePage_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__, i32*, i64 }

@.str = private unnamed_addr constant [20 x i8] c"%p, %08x, %04x, %p\0A\00", align 1
@MIMECONTF_MIME_LATEST = common dso_local global i32 0, align 4
@IEnumCodePage_vtbl = common dso_local global i32 0, align 4
@mlang_data = common dso_local global %struct.TYPE_11__* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"enumerated %d codepages with flags %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, %struct.TYPE_9__**)* @EnumCodePage_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EnumCodePage_create(i32* %0, i32 %1, i32 %2, %struct.TYPE_9__** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_9__** %3, %struct.TYPE_9__*** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = ptrtoint i32* %13 to i32
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %18 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16, %struct.TYPE_9__** %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @MIMECONTF_MIME_LATEST, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %21, %4
  %24 = call i32 (...) @GetProcessHeap()
  %25 = call i8* @HeapAlloc(i32 %24, i32 0, i32 32)
  %26 = bitcast i8* %25 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %9, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32* @IEnumCodePage_vtbl, i32** %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  store i64 0, i64* %11, align 8
  br label %36

36:                                               ; preds = %73, %23
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mlang_data, align 8
  %39 = call i64 @ARRAY_SIZE(%struct.TYPE_11__* %38)
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %36
  store i64 0, i64* %12, align 8
  br label %42

42:                                               ; preds = %69, %41
  %43 = load i64, i64* %12, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mlang_data, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %43, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %42
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mlang_data, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %50
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %63, %50
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %12, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %12, align 8
  br label %42

72:                                               ; preds = %42
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %11, align 8
  br label %36

76:                                               ; preds = %36
  %77 = call i32 (...) @GetProcessHeap()
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 4, %81
  %83 = trunc i64 %82 to i32
  %84 = call i8* @HeapAlloc(i32 %77, i32 0, i32 %83)
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  store i32* %85, i32** %87, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %10, align 8
  store i64 0, i64* %11, align 8
  br label %91

91:                                               ; preds = %132, %76
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mlang_data, align 8
  %94 = call i64 @ARRAY_SIZE(%struct.TYPE_11__* %93)
  %95 = icmp ult i64 %92, %94
  br i1 %95, label %96, label %135

96:                                               ; preds = %91
  store i64 0, i64* %12, align 8
  br label %97

97:                                               ; preds = %128, %96
  %98 = load i64, i64* %12, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mlang_data, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ult i64 %98, %103
  br i1 %104, label %105, label %131

105:                                              ; preds = %97
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mlang_data, align 8
  %107 = load i64, i64* %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %105
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mlang_data, align 8
  %120 = load i64, i64* %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i64 %120
  %122 = load i64, i64* %12, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %10, align 8
  %125 = ptrtoint i32* %123 to i32
  %126 = call i32 @fill_cp_info(%struct.TYPE_11__* %121, i64 %122, i32 %125)
  br label %127

127:                                              ; preds = %118, %105
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %12, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %12, align 8
  br label %97

131:                                              ; preds = %97
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %11, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %11, align 8
  br label %91

135:                                              ; preds = %91
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* %142, %struct.TYPE_9__** %143, align 8
  %144 = load i32, i32* @S_OK, align 4
  ret i32 %144
}

declare dso_local i32 @TRACE(i8*, i32, i32, ...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @fill_cp_info(%struct.TYPE_11__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
