; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_dispex.c_get_dynamic_prop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_dispex.c_get_dynamic_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__* }

@fdexNameEnsure = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@fdexNameCaseInsensitive = common dso_local global i32 0, align 4
@DYNPROP_DELETED = common dso_local global i32 0, align 4
@DISP_E_UNKNOWNNAME = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"creating dynamic prop %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, %struct.TYPE_8__**)* @get_dynamic_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dynamic_prop(i32* %0, i32* %1, i32 %2, %struct.TYPE_8__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_8__** %3, %struct.TYPE_8__*** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @fdexNameEnsure, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call %struct.TYPE_9__* @get_dynamic_data(i32* %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %11, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %22, i32* %5, align 4
  br label %175

23:                                               ; preds = %4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %12, align 8
  br label %27

27:                                               ; preds = %81, %23
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %35
  %37 = icmp ult %struct.TYPE_8__* %28, %36
  br i1 %37, label %38, label %84

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @fdexNameCaseInsensitive, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @strcmpiW(i32 %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %80, label %57

50:                                               ; preds = %38
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @strcmpW(i32 %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %80, label %57

57:                                               ; preds = %50, %43
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @DYNPROP_DELETED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @DISP_E_UNKNOWNNAME, align 4
  store i32 %68, i32* %5, align 4
  br label %175

69:                                               ; preds = %64
  %70 = load i32, i32* @DYNPROP_DELETED, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %69, %57
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %78 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %78, align 8
  %79 = load i32, i32* @S_OK, align 4
  store i32 %79, i32* %5, align 4
  br label %175

80:                                               ; preds = %50, %43
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 1
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %12, align 8
  br label %27

84:                                               ; preds = %27
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* @DISP_E_UNKNOWNNAME, align 4
  store i32 %88, i32* %5, align 4
  br label %175

89:                                               ; preds = %84
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @debugstr_w(i32* %90)
  %92 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %110, label %97

97:                                               ; preds = %89
  %98 = call %struct.TYPE_8__* @heap_alloc(i32 48)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  store %struct.TYPE_8__* %98, %struct.TYPE_8__** %100, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = icmp ne %struct.TYPE_8__* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %97
  %106 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %106, i32* %5, align 4
  br label %175

107:                                              ; preds = %97
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  store i32 4, i32* %109, align 4
  br label %143

110:                                              ; preds = %89
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %142

118:                                              ; preds = %110
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = mul i64 12, %126
  %128 = trunc i64 %127 to i32
  %129 = call %struct.TYPE_8__* @heap_realloc(%struct.TYPE_8__* %121, i32 %128)
  store %struct.TYPE_8__* %129, %struct.TYPE_8__** %13, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %131 = icmp ne %struct.TYPE_8__* %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %118
  %133 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %133, i32* %5, align 4
  br label %175

134:                                              ; preds = %118
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  store %struct.TYPE_8__* %135, %struct.TYPE_8__** %137, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %140, 1
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %134, %110
  br label %143

143:                                              ; preds = %142, %107
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i64 %150
  store %struct.TYPE_8__* %151, %struct.TYPE_8__** %12, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = call i32 @heap_strdupW(i32* %152)
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %143
  %161 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %161, i32* %5, align 4
  br label %175

162:                                              ; preds = %143
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = call i32 @VariantInit(i32* %164)
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  store i32 0, i32* %167, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %173 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %172, %struct.TYPE_8__** %173, align 8
  %174 = load i32, i32* @S_OK, align 4
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %162, %160, %132, %105, %87, %76, %67, %21
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local %struct.TYPE_9__* @get_dynamic_data(i32*) #1

declare dso_local i32 @strcmpiW(i32, i32*) #1

declare dso_local i32 @strcmpW(i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local %struct.TYPE_8__* @heap_alloc(i32) #1

declare dso_local %struct.TYPE_8__* @heap_realloc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @heap_strdupW(i32*) #1

declare dso_local i32 @VariantInit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
