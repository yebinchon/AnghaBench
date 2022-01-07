; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_repeat.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32 }

@FSCOPE_LOOP = common dso_local global i32 0, align 4
@BC_LOOP = common dso_local global i32 0, align 4
@TK_until = common dso_local global i32 0, align 4
@TK_repeat = common dso_local global i32 0, align 4
@FSCOPE_UPVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32)* @parse_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_repeat(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__, align 4
  %9 = alloca %struct.TYPE_20__, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %5, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  store i32 %15, i32* %6, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %19 = load i32, i32* @FSCOPE_LOOP, align 4
  %20 = call i32 @fscope_begin(%struct.TYPE_19__* %18, %struct.TYPE_20__* %8, i32 %19)
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %22 = call i32 @fscope_begin(%struct.TYPE_19__* %21, %struct.TYPE_20__* %9, i32 0)
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = call i32 @lj_lex_next(%struct.TYPE_18__* %23)
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = load i32, i32* @BC_LOOP, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bcemit_AD(%struct.TYPE_19__* %25, i32 %26, i32 %29, i32 0)
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %32 = call i32 @parse_chunk(%struct.TYPE_18__* %31)
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = load i32, i32* @TK_until, align 4
  %35 = load i32, i32* @TK_repeat, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @lex_match(%struct.TYPE_18__* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %39 = call i32 @expr_cond(%struct.TYPE_18__* %38)
  store i32 %39, i32* %7, align 4
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FSCOPE_UPVAL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %2
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = call i32 @fscope_end(%struct.TYPE_19__* %46)
  br label %58

48:                                               ; preds = %2
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = call i32 @parse_break(%struct.TYPE_18__* %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @jmp_tohere(%struct.TYPE_19__* %51, i32 %52)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %55 = call i32 @fscope_end(%struct.TYPE_19__* %54)
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %57 = call i32 @bcemit_jmp(%struct.TYPE_19__* %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %48, %45
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @jmp_patch(%struct.TYPE_19__* %59, i32 %60, i32 %61)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @jmp_patchins(%struct.TYPE_19__* %63, i32 %64, i32 %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = call i32 @fscope_end(%struct.TYPE_19__* %69)
  ret void
}

declare dso_local i32 @fscope_begin(%struct.TYPE_19__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @lj_lex_next(%struct.TYPE_18__*) #1

declare dso_local i32 @bcemit_AD(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @parse_chunk(%struct.TYPE_18__*) #1

declare dso_local i32 @lex_match(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @expr_cond(%struct.TYPE_18__*) #1

declare dso_local i32 @fscope_end(%struct.TYPE_19__*) #1

declare dso_local i32 @parse_break(%struct.TYPE_18__*) #1

declare dso_local i32 @jmp_tohere(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @bcemit_jmp(%struct.TYPE_19__*) #1

declare dso_local i32 @jmp_patch(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @jmp_patchins(%struct.TYPE_19__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
