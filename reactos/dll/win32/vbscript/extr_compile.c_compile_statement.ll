; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_26__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_25__* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@OP_stop = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unimplemented statement type %d\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_25__*)* @compile_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_statement(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  %9 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %10 = icmp ne %struct.TYPE_26__* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 0
  store %struct.TYPE_26__* %14, %struct.TYPE_26__** %16, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  store %struct.TYPE_26__* %17, %struct.TYPE_26__** %19, align 8
  br label %20

20:                                               ; preds = %11, %3
  br label %21

21:                                               ; preds = %133, %20
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %23 = icmp ne %struct.TYPE_25__* %22, null
  br i1 %23, label %24, label %137

24:                                               ; preds = %21
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %121 [
    i32 149, label %28
    i32 148, label %34
    i32 147, label %39
    i32 146, label %44
    i32 144, label %49
    i32 145, label %49
    i32 143, label %54
    i32 142, label %57
    i32 141, label %60
    i32 140, label %63
    i32 139, label %66
    i32 138, label %69
    i32 137, label %74
    i32 136, label %79
    i32 135, label %84
    i32 134, label %89
    i32 133, label %94
    i32 132, label %99
    i32 131, label %105
    i32 130, label %116
    i32 129, label %116
    i32 128, label %116
  ]

28:                                               ; preds = %24
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %31 = bitcast %struct.TYPE_25__* %30 to i32*
  %32 = load i32, i32* @FALSE, align 4
  %33 = call i32 @compile_assign_statement(%struct.TYPE_27__* %29, i32* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %127

34:                                               ; preds = %24
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %37 = bitcast %struct.TYPE_25__* %36 to i32*
  %38 = call i32 @compile_call_statement(%struct.TYPE_27__* %35, i32* %37)
  store i32 %38, i32* %8, align 4
  br label %127

39:                                               ; preds = %24
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %42 = bitcast %struct.TYPE_25__* %41 to i32*
  %43 = call i32 @compile_const_statement(%struct.TYPE_27__* %40, i32* %42)
  store i32 %43, i32* %8, align 4
  br label %127

44:                                               ; preds = %24
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %47 = bitcast %struct.TYPE_25__* %46 to i32*
  %48 = call i32 @compile_dim_statement(%struct.TYPE_27__* %45, i32* %47)
  store i32 %48, i32* %8, align 4
  br label %127

49:                                               ; preds = %24, %24
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %52 = bitcast %struct.TYPE_25__* %51 to i32*
  %53 = call i32 @compile_dowhile_statement(%struct.TYPE_27__* %50, i32* %52)
  store i32 %53, i32* %8, align 4
  br label %127

54:                                               ; preds = %24
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %56 = call i32 @compile_exitdo_statement(%struct.TYPE_27__* %55)
  store i32 %56, i32* %8, align 4
  br label %127

57:                                               ; preds = %24
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %59 = call i32 @compile_exitfor_statement(%struct.TYPE_27__* %58)
  store i32 %59, i32* %8, align 4
  br label %127

60:                                               ; preds = %24
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %62 = call i32 @compile_exitfunc_statement(%struct.TYPE_27__* %61)
  store i32 %62, i32* %8, align 4
  br label %127

63:                                               ; preds = %24
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %65 = call i32 @compile_exitprop_statement(%struct.TYPE_27__* %64)
  store i32 %65, i32* %8, align 4
  br label %127

66:                                               ; preds = %24
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %68 = call i32 @compile_exitsub_statement(%struct.TYPE_27__* %67)
  store i32 %68, i32* %8, align 4
  br label %127

69:                                               ; preds = %24
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %72 = bitcast %struct.TYPE_25__* %71 to i32*
  %73 = call i32 @compile_foreach_statement(%struct.TYPE_27__* %70, i32* %72)
  store i32 %73, i32* %8, align 4
  br label %127

74:                                               ; preds = %24
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %77 = bitcast %struct.TYPE_25__* %76 to i32*
  %78 = call i32 @compile_forto_statement(%struct.TYPE_27__* %75, i32* %77)
  store i32 %78, i32* %8, align 4
  br label %127

79:                                               ; preds = %24
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %82 = bitcast %struct.TYPE_25__* %81 to i32*
  %83 = call i32 @compile_function_statement(%struct.TYPE_27__* %80, i32* %82)
  store i32 %83, i32* %8, align 4
  br label %127

84:                                               ; preds = %24
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %87 = bitcast %struct.TYPE_25__* %86 to i32*
  %88 = call i32 @compile_if_statement(%struct.TYPE_27__* %85, i32* %87)
  store i32 %88, i32* %8, align 4
  br label %127

89:                                               ; preds = %24
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %92 = bitcast %struct.TYPE_25__* %91 to i32*
  %93 = call i32 @compile_onerror_statement(%struct.TYPE_27__* %90, i32* %92)
  store i32 %93, i32* %8, align 4
  br label %127

94:                                               ; preds = %24
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %97 = bitcast %struct.TYPE_25__* %96 to i32*
  %98 = call i32 @compile_select_statement(%struct.TYPE_27__* %95, i32* %97)
  store i32 %98, i32* %8, align 4
  br label %127

99:                                               ; preds = %24
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %102 = bitcast %struct.TYPE_25__* %101 to i32*
  %103 = load i32, i32* @TRUE, align 4
  %104 = call i32 @compile_assign_statement(%struct.TYPE_27__* %100, i32* %102, i32 %103)
  store i32 %104, i32* %8, align 4
  br label %127

105:                                              ; preds = %24
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %107 = load i32, i32* @OP_stop, align 4
  %108 = call i32 @push_instr(%struct.TYPE_27__* %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* @S_OK, align 4
  br label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @E_OUTOFMEMORY, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  store i32 %115, i32* %8, align 4
  br label %127

116:                                              ; preds = %24, %24, %24
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %119 = bitcast %struct.TYPE_25__* %118 to i32*
  %120 = call i32 @compile_while_statement(%struct.TYPE_27__* %117, i32* %119)
  store i32 %120, i32* %8, align 4
  br label %127

121:                                              ; preds = %24
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %121, %116, %114, %99, %94, %89, %84, %79, %74, %69, %66, %63, %60, %57, %54, %49, %44, %39, %34, %28
  %128 = load i32, i32* %8, align 4
  %129 = call i64 @FAILED(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %4, align 4
  br label %155

133:                                              ; preds = %127
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %135, align 8
  store %struct.TYPE_25__* %136, %struct.TYPE_25__** %7, align 8
  br label %21

137:                                              ; preds = %21
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %139 = icmp ne %struct.TYPE_26__* %138, null
  br i1 %139, label %140, label %153

140:                                              ; preds = %137
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %142, align 8
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %145 = icmp eq %struct.TYPE_26__* %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %149, align 8
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 0
  store %struct.TYPE_26__* %150, %struct.TYPE_26__** %152, align 8
  br label %153

153:                                              ; preds = %140, %137
  %154 = load i32, i32* @S_OK, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %131
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @compile_assign_statement(%struct.TYPE_27__*, i32*, i32) #1

declare dso_local i32 @compile_call_statement(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @compile_const_statement(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @compile_dim_statement(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @compile_dowhile_statement(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @compile_exitdo_statement(%struct.TYPE_27__*) #1

declare dso_local i32 @compile_exitfor_statement(%struct.TYPE_27__*) #1

declare dso_local i32 @compile_exitfunc_statement(%struct.TYPE_27__*) #1

declare dso_local i32 @compile_exitprop_statement(%struct.TYPE_27__*) #1

declare dso_local i32 @compile_exitsub_statement(%struct.TYPE_27__*) #1

declare dso_local i32 @compile_foreach_statement(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @compile_forto_statement(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @compile_function_statement(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @compile_if_statement(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @compile_onerror_statement(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @compile_select_statement(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @push_instr(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @compile_while_statement(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
