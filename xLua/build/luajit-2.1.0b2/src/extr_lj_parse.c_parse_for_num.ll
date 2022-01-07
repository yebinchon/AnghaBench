; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_parse_for_num.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_parse_for_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32 }

@FORL_IDX = common dso_local global i32 0, align 4
@VARNAME_FOR_IDX = common dso_local global i32 0, align 4
@FORL_STOP = common dso_local global i32 0, align 4
@VARNAME_FOR_STOP = common dso_local global i32 0, align 4
@FORL_STEP = common dso_local global i32 0, align 4
@VARNAME_FOR_STEP = common dso_local global i32 0, align 4
@FORL_EXT = common dso_local global i32 0, align 4
@BC_KSHORT = common dso_local global i32 0, align 4
@TK_do = common dso_local global i8 0, align 1
@BC_FORI = common dso_local global i32 0, align 4
@NO_JMP = common dso_local global i32 0, align 4
@BC_FORL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i32*, i32)* @parse_for_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_for_num(%struct.TYPE_19__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %7, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = load i32, i32* @FORL_IDX, align 4
  %20 = load i32, i32* @VARNAME_FOR_IDX, align 4
  %21 = call i32 @var_new_fixed(%struct.TYPE_19__* %18, i32 %19, i32 %20)
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = load i32, i32* @FORL_STOP, align 4
  %24 = load i32, i32* @VARNAME_FOR_STOP, align 4
  %25 = call i32 @var_new_fixed(%struct.TYPE_19__* %22, i32 %23, i32 %24)
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = load i32, i32* @FORL_STEP, align 4
  %28 = load i32, i32* @VARNAME_FOR_STEP, align 4
  %29 = call i32 @var_new_fixed(%struct.TYPE_19__* %26, i32 %27, i32 %28)
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %31 = load i32, i32* @FORL_EXT, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @var_new(%struct.TYPE_19__* %30, i32 %31, i32* %32)
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = call i32 @lex_check(%struct.TYPE_19__* %34, i8 signext 61)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %37 = call i32 @expr_next(%struct.TYPE_19__* %36)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %39 = call i32 @lex_check(%struct.TYPE_19__* %38, i8 signext 44)
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = call i32 @expr_next(%struct.TYPE_19__* %40)
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %43 = call i64 @lex_opt(%struct.TYPE_19__* %42, i8 signext 44)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %3
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %47 = call i32 @expr_next(%struct.TYPE_19__* %46)
  br label %57

48:                                               ; preds = %3
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %50 = load i32, i32* @BC_KSHORT, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @bcemit_AD(%struct.TYPE_20__* %49, i32 %50, i32 %53, i32 1)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %56 = call i32 @bcreg_reserve(%struct.TYPE_20__* %55, i32 1)
  br label %57

57:                                               ; preds = %48, %45
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %59 = call i32 @var_add(%struct.TYPE_19__* %58, i32 3)
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %61 = load i8, i8* @TK_do, align 1
  %62 = call i32 @lex_check(%struct.TYPE_19__* %60, i8 signext %61)
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %64 = load i32, i32* @BC_FORI, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @NO_JMP, align 4
  %67 = call i64 @bcemit_AJ(%struct.TYPE_20__* %63, i32 %64, i32 %65, i32 %66)
  store i64 %67, i64* %10, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %69 = call i32 @fscope_begin(%struct.TYPE_20__* %68, i32* %9, i32 0)
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %71 = call i32 @var_add(%struct.TYPE_19__* %70, i32 1)
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %73 = call i32 @bcreg_reserve(%struct.TYPE_20__* %72, i32 1)
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %75 = call i32 @parse_block(%struct.TYPE_19__* %74)
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %77 = call i32 @fscope_end(%struct.TYPE_20__* %76)
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %79 = load i32, i32* @BC_FORL, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @NO_JMP, align 4
  %82 = call i64 @bcemit_AJ(%struct.TYPE_20__* %78, i32 %79, i32 %80, i32 %81)
  store i64 %82, i64* %11, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = load i64, i64* %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  store i32 %83, i32* %89, align 4
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %10, align 8
  %93 = add i64 %92, 1
  %94 = call i32 @jmp_patchins(%struct.TYPE_20__* %90, i64 %91, i64 %93)
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @jmp_patchins(%struct.TYPE_20__* %95, i64 %96, i64 %99)
  ret void
}

declare dso_local i32 @var_new_fixed(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @var_new(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @lex_check(%struct.TYPE_19__*, i8 signext) #1

declare dso_local i32 @expr_next(%struct.TYPE_19__*) #1

declare dso_local i64 @lex_opt(%struct.TYPE_19__*, i8 signext) #1

declare dso_local i32 @bcemit_AD(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @bcreg_reserve(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @var_add(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @bcemit_AJ(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @fscope_begin(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @parse_block(%struct.TYPE_19__*) #1

declare dso_local i32 @fscope_end(%struct.TYPE_20__*) #1

declare dso_local i32 @jmp_patchins(%struct.TYPE_20__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
