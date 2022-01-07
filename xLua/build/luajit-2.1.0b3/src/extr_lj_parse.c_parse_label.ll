; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_label.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8, %struct.TYPE_16__*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@FSCOPE_GOLA = common dso_local global i32 0, align 4
@LJ_ERR_XLDUP = common dso_local global i32 0, align 4
@VSTACK_LABEL = common dso_local global i32 0, align 4
@TK_label = common dso_local global i8 0, align 1
@LJ_52 = common dso_local global i64 0, align 8
@TK_until = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @parse_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_label(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %8, %struct.TYPE_18__** %3, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @FSCOPE_GOLA, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %14
  store i32 %20, i32* %18, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %22 = call i32 @lj_lex_next(%struct.TYPE_17__* %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %24 = call i32* @lex_str(%struct.TYPE_17__* %23)
  store i32* %24, i32** %4, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @gola_findlabel(%struct.TYPE_17__* %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %31 = load i32, i32* @LJ_ERR_XLDUP, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @strdata(i32* %32)
  %34 = call i32 @lj_lex_error(%struct.TYPE_17__* %30, i32 0, i32 %31, i32 %33)
  br label %35

35:                                               ; preds = %29, %1
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @VSTACK_LABEL, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @gola_new(%struct.TYPE_17__* %36, i32* %37, i32 %38, i32 %41)
  store i64 %42, i64* %5, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %44 = load i8, i8* @TK_label, align 1
  %45 = call i32 @lex_check(%struct.TYPE_17__* %43, i8 signext %44)
  br label %46

46:                                               ; preds = %74, %35
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i8, i8* %48, align 8
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @TK_label, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %56 = call i32 @synlevel_begin(%struct.TYPE_17__* %55)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  call void @parse_label(%struct.TYPE_17__* %57)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %59 = call i32 @synlevel_end(%struct.TYPE_17__* %58)
  br label %74

60:                                               ; preds = %46
  %61 = load i64, i64* @LJ_52, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 8
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 59
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %71 = call i32 @lj_lex_next(%struct.TYPE_17__* %70)
  br label %73

72:                                               ; preds = %63, %60
  br label %75

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73, %54
  br label %46

75:                                               ; preds = %72
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i8, i8* %77, align 8
  %79 = call i64 @parse_isend(i8 signext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %75
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i8, i8* %83, align 8
  %85 = sext i8 %84 to i32
  %86 = load i8, i8* @TK_until, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %81
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  store i32 %94, i32* %100, align 4
  br label %101

101:                                              ; preds = %89, %81, %75
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = load i64, i64* %5, align 8
  %107 = call i32 @gola_resolve(%struct.TYPE_17__* %102, %struct.TYPE_15__* %105, i64 %106)
  ret void
}

declare dso_local i32 @lj_lex_next(%struct.TYPE_17__*) #1

declare dso_local i32* @lex_str(%struct.TYPE_17__*) #1

declare dso_local i64 @gola_findlabel(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @lj_lex_error(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @strdata(i32*) #1

declare dso_local i64 @gola_new(%struct.TYPE_17__*, i32*, i32, i32) #1

declare dso_local i32 @lex_check(%struct.TYPE_17__*, i8 signext) #1

declare dso_local i32 @synlevel_begin(%struct.TYPE_17__*) #1

declare dso_local i32 @synlevel_end(%struct.TYPE_17__*) #1

declare dso_local i64 @parse_isend(i8 signext) #1

declare dso_local i32 @gola_resolve(%struct.TYPE_17__*, %struct.TYPE_15__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
