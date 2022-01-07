; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_range_to_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_range_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64*, i64 }
%struct.TYPE_18__ = type { i64, i32, i32 }

@TEXT_NODE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"End of document?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_17__*)* @range_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range_to_string(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @nsIDOMRange_GetCollapsed(i32 %14, i64* %7)
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = call i32 @wstrbuf_finish(%struct.TYPE_17__* %19)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  store i64* null, i64** %22, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  br label %141

25:                                               ; preds = %2
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %27 = call i32 @get_end_point(%struct.TYPE_19__* %26, %struct.TYPE_18__* %5)
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = call i32 @get_start_point(%struct.TYPE_19__* %28, %struct.TYPE_18__* %6)
  br label %30

30:                                               ; preds = %95, %25
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TEXT_NODE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @get_text_node_data(i32 %37, i32* %9, i32** %8)
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %35
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %52, %54
  %56 = call i32 @wstrbuf_append_nodetxt(%struct.TYPE_17__* %45, i32* %50, i32 %55)
  %57 = call i32 @nsAString_Finish(i32* %9)
  br label %99

58:                                               ; preds = %35
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = call i32 @strlenW(i32* %69)
  %71 = call i32 @wstrbuf_append_nodetxt(%struct.TYPE_17__* %59, i32* %64, i32 %70)
  %72 = call i32 @nsAString_Finish(i32* %9)
  br label %89

73:                                               ; preds = %30
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32* @get_child_node(i32 %75, i32 %77)
  store i32* %78, i32** %10, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* @TRUE, align 4
  %85 = call i32 @wstrbuf_append_node(%struct.TYPE_17__* %82, i32* %83, i32 %84)
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @nsIDOMNode_Release(i32* %86)
  br label %88

88:                                               ; preds = %81, %73
  br label %89

89:                                               ; preds = %88, %58
  %90 = call i32 @rangepoint_next_node(%struct.TYPE_18__* %6)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = call i32 @ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %99

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94
  %96 = call i32 @rangepoint_cmp(%struct.TYPE_18__* %6, %struct.TYPE_18__* %5)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br i1 %98, label %30, label %99

99:                                               ; preds = %95, %92, %44
  %100 = call i32 @free_rangepoint(%struct.TYPE_18__* %6)
  %101 = call i32 @free_rangepoint(%struct.TYPE_18__* %5)
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %141

106:                                              ; preds = %99
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %109, i64 %113
  %115 = getelementptr inbounds i64, i64* %114, i64 -1
  store i64* %115, i64** %11, align 8
  br label %116

116:                                              ; preds = %130, %106
  %117 = load i64*, i64** %11, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = icmp uge i64* %117, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load i64*, i64** %11, align 8
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @isspaceW(i64 %124)
  %126 = icmp ne i64 %125, 0
  br label %127

127:                                              ; preds = %122, %116
  %128 = phi i1 [ false, %116 ], [ %126, %122 ]
  br i1 %128, label %129, label %133

129:                                              ; preds = %127
  br label %130

130:                                              ; preds = %129
  %131 = load i64*, i64** %11, align 8
  %132 = getelementptr inbounds i64, i64* %131, i32 -1
  store i64* %132, i64** %11, align 8
  br label %116

133:                                              ; preds = %127
  %134 = load i64*, i64** %11, align 8
  %135 = call i64* @strchrW(i64* %134, i8 signext 13)
  store i64* %135, i64** %11, align 8
  %136 = load i64*, i64** %11, align 8
  %137 = icmp ne i64* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i64*, i64** %11, align 8
  store i64 0, i64* %139, align 8
  br label %140

140:                                              ; preds = %138, %133
  br label %141

141:                                              ; preds = %18, %140, %99
  ret void
}

declare dso_local i32 @nsIDOMRange_GetCollapsed(i32, i64*) #1

declare dso_local i32 @wstrbuf_finish(%struct.TYPE_17__*) #1

declare dso_local i32 @get_end_point(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @get_start_point(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @get_text_node_data(i32, i32*, i32**) #1

declare dso_local i32 @wstrbuf_append_nodetxt(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32* @get_child_node(i32, i32) #1

declare dso_local i32 @wstrbuf_append_node(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

declare dso_local i32 @rangepoint_next_node(%struct.TYPE_18__*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @rangepoint_cmp(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @free_rangepoint(%struct.TYPE_18__*) #1

declare dso_local i64 @isspaceW(i64) #1

declare dso_local i64* @strchrW(i64*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
