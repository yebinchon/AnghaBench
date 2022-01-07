; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/pshinter/extr_pshalgo.c_psh_hint_table_init.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/pshinter/extr_pshalgo.c_psh_hint_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_18__*, i32*, i64, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"psh_hint_table_init: missing/incorrect hint masks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32)* @psh_hint_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psh_hint_table_init(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2, %struct.TYPE_14__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %18 = call i32 @FT_UNUSED(%struct.TYPE_14__* %17)
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = mul nsw i32 2, %25
  %27 = call i64 @FT_NEW_ARRAY(%struct.TYPE_18__* %24, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %5
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @FT_NEW_ARRAY(%struct.TYPE_18__* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = mul nsw i32 2, %40
  %42 = add nsw i32 %41, 1
  %43 = call i64 @FT_NEW_ARRAY(%struct.TYPE_18__* %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36, %29, %5
  br label %148

46:                                               ; preds = %36
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 6
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i64 %54
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 7
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %57, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 5
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 4
  store i32* null, i32** %63, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  store %struct.TYPE_18__* %66, %struct.TYPE_18__** %13, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %14, align 8
  br label %70

70:                                               ; preds = %89, %46
  %71 = load i32, i32* %11, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %70
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %73
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %11, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 1
  store %struct.TYPE_18__* %93, %struct.TYPE_18__** %13, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 1
  store %struct.TYPE_16__* %95, %struct.TYPE_16__** %14, align 8
  br label %70

96:                                               ; preds = %70
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %98 = icmp ne %struct.TYPE_14__* %97, null
  br i1 %98, label %99, label %122

99:                                               ; preds = %96
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %15, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %11, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 2
  store %struct.TYPE_14__* %106, %struct.TYPE_14__** %108, align 8
  br label %109

109:                                              ; preds = %116, %99
  %110 = load i32, i32* %11, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @psh_hint_table_record_mask(%struct.TYPE_17__* %113, i32 %114)
  br label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %109

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121, %96
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %122
  %131 = call i32 @FT_TRACE0(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %11, align 4
  store i32 0, i32* %16, align 4
  br label %135

135:                                              ; preds = %143, %130
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %141 = load i32, i32* %16, align 4
  %142 = call i32 @psh_hint_table_record(%struct.TYPE_17__* %140, i32 %141)
  br label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  br label %135

146:                                              ; preds = %135
  br label %147

147:                                              ; preds = %146, %122
  br label %148

148:                                              ; preds = %147, %45
  %149 = load i32, i32* %12, align 4
  ret i32 %149
}

declare dso_local i32 @FT_UNUSED(%struct.TYPE_14__*) #1

declare dso_local i64 @FT_NEW_ARRAY(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @psh_hint_table_record_mask(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @FT_TRACE0(i8*) #1

declare dso_local i32 @psh_hint_table_record(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
