; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_if_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_if_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_18__*, i64, i32 }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@OP_jmp_false = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@OP_jmp = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_17__*)* @compile_if_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_if_statement(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @compile_expression(%struct.TYPE_19__* %10, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @FAILED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %173

20:                                               ; preds = %2
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = load i32, i32* @OP_jmp_false, align 4
  %23 = call i32 @push_instr(%struct.TYPE_19__* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %27, i32* %3, align 4
  br label %173

28:                                               ; preds = %20
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = call i32 @emit_catch(%struct.TYPE_19__* %29, i32 0)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %33, i32* %3, align 4
  br label %173

34:                                               ; preds = %28
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @compile_statement(%struct.TYPE_19__* %35, i32* null, i64 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @FAILED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %173

45:                                               ; preds = %34
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %54 = icmp ne %struct.TYPE_18__* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %50, %45
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = call i32 @alloc_label(%struct.TYPE_19__* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %61, i32* %3, align 4
  br label %173

62:                                               ; preds = %55
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %64 = load i32, i32* @OP_jmp, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @push_instr_addr(%struct.TYPE_19__* %63, i32 %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @FAILED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %173

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %50
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  store %struct.TYPE_18__* %76, %struct.TYPE_18__** %8, align 8
  br label %77

77:                                               ; preds = %135, %73
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %79 = icmp ne %struct.TYPE_18__* %78, null
  br i1 %79, label %80, label %139

80:                                               ; preds = %77
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call %struct.TYPE_20__* @instr_ptr(%struct.TYPE_19__* %84, i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  store i32 %83, i32* %88, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @compile_expression(%struct.TYPE_19__* %89, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @FAILED(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %80
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  br label %173

99:                                               ; preds = %80
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %101 = load i32, i32* @OP_jmp_false, align 4
  %102 = call i32 @push_instr(%struct.TYPE_19__* %100, i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %106, i32* %3, align 4
  br label %173

107:                                              ; preds = %99
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %109 = call i32 @emit_catch(%struct.TYPE_19__* %108, i32 0)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %112, i32* %3, align 4
  br label %173

113:                                              ; preds = %107
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @compile_statement(%struct.TYPE_19__* %114, i32* null, i64 %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i64 @FAILED(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %3, align 4
  br label %173

124:                                              ; preds = %113
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %126 = load i32, i32* @OP_jmp, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @push_instr_addr(%struct.TYPE_19__* %125, i32 %126, i32 %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i64 @FAILED(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %3, align 4
  br label %173

134:                                              ; preds = %124
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %137, align 8
  store %struct.TYPE_18__* %138, %struct.TYPE_18__** %8, align 8
  br label %77

139:                                              ; preds = %77
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call %struct.TYPE_20__* @instr_ptr(%struct.TYPE_19__* %143, i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  store i32 %142, i32* %147, align 4
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %139
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @compile_statement(%struct.TYPE_19__* %153, i32* null, i64 %156)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i64 @FAILED(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %152
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %3, align 4
  br label %173

163:                                              ; preds = %152
  br label %164

164:                                              ; preds = %163, %139
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @label_set_addr(%struct.TYPE_19__* %168, i32 %169)
  br label %171

171:                                              ; preds = %167, %164
  %172 = load i32, i32* @S_OK, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %161, %132, %122, %111, %105, %97, %70, %60, %43, %32, %26, %18
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @compile_expression(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @push_instr(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @emit_catch(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @compile_statement(%struct.TYPE_19__*, i32*, i64) #1

declare dso_local i32 @alloc_label(%struct.TYPE_19__*) #1

declare dso_local i32 @push_instr_addr(%struct.TYPE_19__*, i32, i32) #1

declare dso_local %struct.TYPE_20__* @instr_ptr(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @label_set_addr(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
