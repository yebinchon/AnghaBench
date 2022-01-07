; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_foreach_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_foreach_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }

@__const.compile_foreach_statement.loop_ctx = private unnamed_addr constant %struct.TYPE_15__ { i32 1, i32 0 }, align 4
@OP_empty = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@OP_newenum = common dso_local global i32 0, align 4
@OP_enumnext = common dso_local global i32 0, align 4
@OP_jmp = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @compile_foreach_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_foreach_statement(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = bitcast %struct.TYPE_15__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_15__* @__const.compile_foreach_statement.loop_ctx to i8*), i64 8, i1 false)
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = load i32, i32* @OP_empty, align 4
  %12 = call i32 @push_instr(%struct.TYPE_17__* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %15, i32* %3, align 4
  br label %105

16:                                               ; preds = %2
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @compile_expression(%struct.TYPE_17__* %17, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %105

27:                                               ; preds = %16
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = load i32, i32* @OP_newenum, align 4
  %30 = call i32 @push_instr(%struct.TYPE_17__* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %33, i32* %3, align 4
  br label %105

34:                                               ; preds = %27
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = call i32 @alloc_label(%struct.TYPE_17__* %35)
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %40, i32* %3, align 4
  br label %105

41:                                               ; preds = %34
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = load i32, i32* @OP_enumnext, align 4
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @push_instr_uint_bstr(%struct.TYPE_17__* %42, i32 %43, i32 %45, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @FAILED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %105

55:                                               ; preds = %41
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = call i32 @emit_catch(%struct.TYPE_17__* %56, i32 1)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %60, i32* %3, align 4
  br label %105

61:                                               ; preds = %55
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @compile_statement(%struct.TYPE_17__* %65, %struct.TYPE_15__* %6, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @FAILED(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %105

75:                                               ; preds = %61
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = load i32, i32* @OP_enumnext, align 4
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @push_instr_uint_bstr(%struct.TYPE_17__* %76, i32 %77, i32 %79, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i64 @FAILED(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %75
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %105

89:                                               ; preds = %75
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = load i32, i32* @OP_jmp, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @push_instr_addr(%struct.TYPE_17__* %90, i32 %91, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i64 @FAILED(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %105

99:                                               ; preds = %89
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @label_set_addr(%struct.TYPE_17__* %100, i32 %102)
  %104 = load i32, i32* @S_OK, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %99, %97, %87, %73, %59, %53, %39, %32, %25, %14
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @push_instr(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @compile_expression(%struct.TYPE_17__*, i32) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @alloc_label(%struct.TYPE_17__*) #2

declare dso_local i32 @push_instr_uint_bstr(%struct.TYPE_17__*, i32, i32, i32) #2

declare dso_local i32 @emit_catch(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @compile_statement(%struct.TYPE_17__*, %struct.TYPE_15__*, i32) #2

declare dso_local i32 @push_instr_addr(%struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @label_set_addr(%struct.TYPE_17__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
