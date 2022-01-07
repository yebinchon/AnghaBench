; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_lj_parse.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_lj_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64, i32*, i32, i64, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i32*, i32, i64, i32*, i64, i64 }

@PROTO_VARARG = common dso_local global i32 0, align 4
@BC_FUNCV = common dso_local global i32 0, align 4
@TK_eof = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @lj_parse(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_23__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 6
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %6, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @lj_str_newz(%struct.TYPE_20__* %10, i32 %13)
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @setstrV(%struct.TYPE_20__* %17, i32 %20, i32 %23)
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = call i32 @incr_top(%struct.TYPE_20__* %25)
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %30 = call i32 @fs_init(%struct.TYPE_21__* %29, %struct.TYPE_23__* %3)
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @PROTO_VARARG, align 4
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 8
  %39 = call i32 @fscope_begin(%struct.TYPE_23__* %3, i32* %4, i32 0)
  %40 = load i32, i32* @BC_FUNCV, align 4
  %41 = call i32 @bcemit_AD(%struct.TYPE_23__* %3, i32 %40, i32 0, i32 0)
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %43 = call i32 @lj_lex_next(%struct.TYPE_21__* %42)
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %45 = call i32 @parse_chunk(%struct.TYPE_21__* %44)
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TK_eof, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %1
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %53 = load i64, i64* @TK_eof, align 8
  %54 = call i32 @err_token(%struct.TYPE_21__* %52, i64 %53)
  br label %55

55:                                               ; preds = %51, %1
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.TYPE_22__* @fs_finish(%struct.TYPE_21__* %56, i32 %59)
  store %struct.TYPE_22__* %60, %struct.TYPE_22__** %5, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 4
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 @lua_assert(i32 %68)
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @lua_assert(i32 %74)
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @lua_assert(i32 %80)
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  ret %struct.TYPE_22__* %82
}

declare dso_local i32 @lj_str_newz(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @setstrV(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @incr_top(%struct.TYPE_20__*) #1

declare dso_local i32 @fs_init(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @fscope_begin(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @bcemit_AD(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @lj_lex_next(%struct.TYPE_21__*) #1

declare dso_local i32 @parse_chunk(%struct.TYPE_21__*) #1

declare dso_local i32 @err_token(%struct.TYPE_21__*, i64) #1

declare dso_local %struct.TYPE_22__* @fs_finish(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
