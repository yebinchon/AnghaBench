; ModuleID = '/home/carl/AnghaBench/streem/src/extr_exec.c_blk_exec.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_exec.c_blk_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__*, %struct.strm_lambda* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.strm_lambda = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32, i32 }

@NODE_ERROR_RETURN = common dso_local global i64 0, align 8
@strm_option_verbose = common dso_local global i64 0, align 8
@STRM_NG = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32)* @blk_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_exec(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.strm_lambda*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load %struct.strm_lambda*, %struct.strm_lambda** %13, align 8
  store %struct.strm_lambda* %14, %struct.strm_lambda** %6, align 8
  %15 = call i32 (...) @strm_nil_value()
  store i32 %15, i32* %7, align 4
  %16 = load %struct.strm_lambda*, %struct.strm_lambda** %6, align 8
  %17 = getelementptr inbounds %struct.strm_lambda, %struct.strm_lambda* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %8, align 8
  %22 = bitcast %struct.TYPE_15__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 8, i1 false)
  %23 = load %struct.strm_lambda*, %struct.strm_lambda** %6, align 8
  %24 = getelementptr inbounds %struct.strm_lambda, %struct.strm_lambda* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %28 = icmp ne %struct.TYPE_17__* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %2
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @node_to_sym(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @strm_var_set(%struct.TYPE_15__* %11, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %29, %2
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = load %struct.strm_lambda*, %struct.strm_lambda** %6, align 8
  %47 = getelementptr inbounds %struct.strm_lambda, %struct.strm_lambda* %46, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @exec_expr(%struct.TYPE_14__* %45, %struct.TYPE_15__* %11, i32 %50, i32* %7)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %9, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %56 = icmp ne %struct.TYPE_16__* %55, null
  br i1 %56, label %57, label %78

57:                                               ; preds = %44
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NODE_ERROR_RETURN, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %7, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = call i32 @strm_clear_exc(%struct.TYPE_14__* %67)
  br label %77

69:                                               ; preds = %57
  %70 = load i64, i64* @strm_option_verbose, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = call i32 @strm_eprint(%struct.TYPE_14__* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* @STRM_NG, align 4
  store i32 %76, i32* %3, align 4
  br label %88

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77, %44
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @STRM_NG, align 4
  store i32 %82, i32* %3, align 4
  br label %88

83:                                               ; preds = %78
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @strm_emit(%struct.TYPE_14__* %84, i32 %85, i32* null)
  %87 = load i32, i32* @STRM_OK, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %81, %75
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @strm_nil_value(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strm_var_set(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @node_to_sym(i32) #1

declare dso_local i32 @exec_expr(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @strm_clear_exc(%struct.TYPE_14__*) #1

declare dso_local i32 @strm_eprint(%struct.TYPE_14__*) #1

declare dso_local i32 @strm_emit(%struct.TYPE_14__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
