; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_dowhile_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_dowhile_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i64, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@STAT_DOUNTIL = common dso_local global i64 0, align 8
@OP_jmp_false = common dso_local global i32 0, align 4
@OP_jmp_true = common dso_local global i32 0, align 4
@OP_jmp = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_15__*)* @compile_dowhile_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_dowhile_statement(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %10 = bitcast %struct.TYPE_16__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = call i32 @alloc_label(%struct.TYPE_17__* %14)
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %19, i32* %3, align 4
  br label %84

20:                                               ; preds = %2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @compile_statement(%struct.TYPE_17__* %21, %struct.TYPE_16__* %6, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %84

31:                                               ; preds = %20
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %31
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @compile_expression(%struct.TYPE_17__* %37, i64 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @FAILED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %84

47:                                               ; preds = %36
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @STAT_DOUNTIL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @OP_jmp_false, align 4
  br label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @OP_jmp_true, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %8, align 4
  br label %62

60:                                               ; preds = %31
  %61 = load i32, i32* @OP_jmp, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @push_instr_addr(%struct.TYPE_17__* %63, i32 %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @FAILED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %84

72:                                               ; preds = %62
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @label_set_addr(%struct.TYPE_17__* %73, i32 %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = call i32 @emit_catch(%struct.TYPE_17__* %77, i32 0)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %81, i32* %3, align 4
  br label %84

82:                                               ; preds = %72
  %83 = load i32, i32* @S_OK, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %80, %70, %45, %29, %18
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @alloc_label(%struct.TYPE_17__*) #2

declare dso_local i32 @compile_statement(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @compile_expression(%struct.TYPE_17__*, i64) #2

declare dso_local i32 @push_instr_addr(%struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @label_set_addr(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @emit_catch(%struct.TYPE_17__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
