; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_const_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_const_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s redefined\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@FUNC_GLOBAL = common dso_local global i64 0, align 8
@OP_const = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_14__*)* @compile_const_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_const_statement(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %7, align 8
  br label %12

12:                                               ; preds = %92, %2
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %6, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i64 @lookup_const_decls(%struct.TYPE_16__* %14, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %12
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @lookup_args_name(%struct.TYPE_16__* %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @lookup_dim_decls(%struct.TYPE_16__* %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28, %21, %12
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @debugstr_w(i32 %38)
  %40 = call i32 @FIXME(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @E_FAIL, align 4
  store i32 %41, i32* %3, align 4
  br label %97

42:                                               ; preds = %28
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FUNC_GLOBAL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %42
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @compile_expression(%struct.TYPE_16__* %51, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @FAILED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %97

61:                                               ; preds = %50
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = load i32, i32* @OP_const, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @push_instr_bstr(%struct.TYPE_16__* %62, i32 %63, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @FAILED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %97

73:                                               ; preds = %61
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %75 = call i32 @emit_catch(%struct.TYPE_16__* %74, i32 0)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %78, i32* %3, align 4
  br label %97

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %42
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  store %struct.TYPE_15__* %83, %struct.TYPE_15__** %7, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  store %struct.TYPE_15__* %86, %struct.TYPE_15__** %88, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  store %struct.TYPE_15__* %89, %struct.TYPE_15__** %91, align 8
  br label %92

92:                                               ; preds = %80
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %94 = icmp ne %struct.TYPE_15__* %93, null
  br i1 %94, label %12, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @S_OK, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %77, %71, %59, %35
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @lookup_const_decls(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @lookup_args_name(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @lookup_dim_decls(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @compile_expression(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @push_instr_bstr(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @emit_catch(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
