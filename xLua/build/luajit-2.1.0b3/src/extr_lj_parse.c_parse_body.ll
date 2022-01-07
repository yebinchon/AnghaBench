; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_body.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64, i64, i64, i64, i32 }

@BC_FUNCF = common dso_local global i32 0, align 4
@TK_end = common dso_local global i64 0, align 8
@TK_function = common dso_local global i32 0, align 4
@VRELOCABLE = common dso_local global i32 0, align 4
@BC_FNEW = common dso_local global i32 0, align 4
@LJ_TPROTO = common dso_local global i32 0, align 4
@PROTO_CHILD = common dso_local global i32 0, align 4
@PROTO_HAS_RETURN = common dso_local global i32 0, align 4
@PROTO_FIXUP_RETURN = common dso_local global i32 0, align 4
@PROTO_FFI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*, i32, i32)* @parse_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_body(%struct.TYPE_14__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %10, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  store i64 %23, i64* %13, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = call i32 @fs_init(%struct.TYPE_14__* %24, %struct.TYPE_15__* %9)
  %26 = call i32 @fscope_begin(%struct.TYPE_15__* %9, i32* %11, i32 0)
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 5
  store i32 %27, i32* %28, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @parse_params(%struct.TYPE_14__* %29, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 4
  store i64 %31, i64* %32, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  store i64 %39, i64* %40, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* @BC_FUNCF, align 4
  %50 = call i32 @bcemit_AD(%struct.TYPE_15__* %9, i32 %49, i32 0, i32 0)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = call i32 @parse_chunk(%struct.TYPE_14__* %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TK_end, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = load i64, i64* @TK_end, align 8
  %61 = load i32, i32* @TK_function, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @lex_match(%struct.TYPE_14__* %59, i64 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = call i32* @fs_finish(%struct.TYPE_14__* %65, i32 %68)
  store i32* %71, i32** %12, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %13, align 8
  %76 = add nsw i64 %74, %75
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %13, align 8
  %83 = sub nsw i64 %81, %82
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* @VRELOCABLE, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %89 = load i32, i32* @BC_FNEW, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @obj2gco(i32* %91)
  %93 = load i32, i32* @LJ_TPROTO, align 4
  %94 = call i32 @const_gc(%struct.TYPE_15__* %90, i32 %92, i32 %93)
  %95 = call i32 @bcemit_AD(%struct.TYPE_15__* %88, i32 %89, i32 0, i32 %94)
  %96 = call i32 @expr_init(i32* %86, i32 %87, i32 %95)
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @PROTO_CHILD, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %122, label %103

103:                                              ; preds = %64
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @PROTO_HAS_RETURN, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i32, i32* @PROTO_FIXUP_RETURN, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %110, %103
  %117 = load i32, i32* @PROTO_CHILD, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %116, %64
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %124 = call i32 @lj_lex_next(%struct.TYPE_14__* %123)
  ret void
}

declare dso_local i32 @fs_init(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @fscope_begin(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i64 @parse_params(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @bcemit_AD(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @parse_chunk(%struct.TYPE_14__*) #1

declare dso_local i32 @lex_match(%struct.TYPE_14__*, i64, i32, i32) #1

declare dso_local i32* @fs_finish(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @expr_init(i32*, i32, i32) #1

declare dso_local i32 @const_gc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @obj2gco(i32*) #1

declare dso_local i32 @lj_lex_next(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
