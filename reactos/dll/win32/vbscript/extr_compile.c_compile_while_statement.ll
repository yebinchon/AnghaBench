; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_while_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_while_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }

@STAT_UNTIL = common dso_local global i64 0, align 8
@OP_jmp_true = common dso_local global i32 0, align 4
@OP_jmp_false = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@STAT_WHILE = common dso_local global i64 0, align 8
@OP_jmp = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_20__*)* @compile_while_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_while_statement(%struct.TYPE_22__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %11 = bitcast %struct.TYPE_21__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @compile_expression(%struct.TYPE_22__* %15, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @FAILED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %3, align 4
  br label %106

25:                                               ; preds = %2
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @STAT_UNTIL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @OP_jmp_true, align 4
  br label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @OP_jmp_false, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = call i32 @push_instr(%struct.TYPE_22__* %26, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %43, i32* %3, align 4
  br label %106

44:                                               ; preds = %37
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %46 = call i32 @emit_catch(%struct.TYPE_22__* %45, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %49, i32* %3, align 4
  br label %106

50:                                               ; preds = %44
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @STAT_WHILE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %66

58:                                               ; preds = %50
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %60 = call i32 @alloc_label(%struct.TYPE_22__* %59)
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %64, i32* %3, align 4
  br label %106

65:                                               ; preds = %58
  store %struct.TYPE_21__* %6, %struct.TYPE_21__** %7, align 8
  br label %66

66:                                               ; preds = %65, %57
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @compile_statement(%struct.TYPE_22__* %67, %struct.TYPE_21__* %68, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i64 @FAILED(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  br label %106

78:                                               ; preds = %66
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %80 = load i32, i32* @OP_jmp, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @push_instr_addr(%struct.TYPE_22__* %79, i32 %80, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @FAILED(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %3, align 4
  br label %106

88:                                               ; preds = %78
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call %struct.TYPE_23__* @instr_ptr(%struct.TYPE_22__* %92, i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  store i32 %91, i32* %96, align 4
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %98 = icmp ne %struct.TYPE_21__* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %88
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @label_set_addr(%struct.TYPE_22__* %100, i32 %102)
  br label %104

104:                                              ; preds = %99, %88
  %105 = load i32, i32* @S_OK, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %86, %76, %63, %48, %42, %23
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @compile_expression(%struct.TYPE_22__*, i32) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @push_instr(%struct.TYPE_22__*, i32) #2

declare dso_local i32 @emit_catch(%struct.TYPE_22__*, i32) #2

declare dso_local i32 @alloc_label(%struct.TYPE_22__*) #2

declare dso_local i32 @compile_statement(%struct.TYPE_22__*, %struct.TYPE_21__*, i32) #2

declare dso_local i32 @push_instr_addr(%struct.TYPE_22__*, i32, i32) #2

declare dso_local %struct.TYPE_23__* @instr_ptr(%struct.TYPE_22__*, i32) #2

declare dso_local i32 @label_set_addr(%struct.TYPE_22__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
