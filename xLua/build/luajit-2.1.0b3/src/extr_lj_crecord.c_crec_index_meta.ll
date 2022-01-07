; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_index_meta.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_index_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_11__ = type { i64, i32* }

@MM_newindex = common dso_local global i32 0, align 4
@MM_index = common dso_local global i32 0, align 4
@LJ_TRERR_BADTYPE = common dso_local global i32 0, align 4
@IR_EQ = common dso_local global i32 0, align 4
@IRT_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i32*, %struct.TYPE_11__*)* @crec_index_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crec_index_meta(%struct.TYPE_10__* %0, i32* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @ctype_typeid(i32* %12, i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @MM_newindex, align 4
  br label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @MM_index, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = call i32* @lj_ctype_meta(i32* %15, i32 %16, i32 %26)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = load i32, i32* @LJ_TRERR_BADTYPE, align 4
  %33 = call i32 @lj_trace_err(%struct.TYPE_10__* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32*, i32** %10, align 8
  %36 = call i64 @tvisfunc(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @crec_tailcall(%struct.TYPE_10__* %39, %struct.TYPE_11__* %40, i32* %41)
  br label %110

43:                                               ; preds = %34
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %105

48:                                               ; preds = %43
  %49 = load i32*, i32** %10, align 8
  %50 = call i64 @tvistab(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %105

52:                                               ; preds = %48
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @tref_isstr(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %105

60:                                               ; preds = %52
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @tabV(i32* %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = call i32* @lj_tab_get(i32 %63, i32 %65, i32* %69)
  store i32* %70, i32** %11, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @lj_record_constify(%struct.TYPE_10__* %71, i32* %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %73, i32* %77, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %60
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = load i32, i32* @LJ_TRERR_BADTYPE, align 4
  %87 = call i32 @lj_trace_err(%struct.TYPE_10__* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %60
  %89 = load i32, i32* @IR_EQ, align 4
  %90 = load i32, i32* @IRT_STR, align 4
  %91 = call i32 @IRTG(i32 %89, i32 %90)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = call i32 @strV(i32* %101)
  %103 = call i32 @lj_ir_kstr(%struct.TYPE_10__* %97, i32 %102)
  %104 = call i32 @emitir(i32 %91, i32 %96, i32 %103)
  br label %109

105:                                              ; preds = %52, %48, %43
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = load i32, i32* @LJ_TRERR_BADTYPE, align 4
  %108 = call i32 @lj_trace_err(%struct.TYPE_10__* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %88
  br label %110

110:                                              ; preds = %109, %38
  ret void
}

declare dso_local i32 @ctype_typeid(i32*, i32*) #1

declare dso_local i32* @lj_ctype_meta(i32*, i32, i32) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @tvisfunc(i32*) #1

declare dso_local i32 @crec_tailcall(%struct.TYPE_10__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i64 @tvistab(i32*) #1

declare dso_local i64 @tref_isstr(i32) #1

declare dso_local i32* @lj_tab_get(i32, i32, i32*) #1

declare dso_local i32 @tabV(i32*) #1

declare dso_local i32 @lj_record_constify(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i32 @lj_ir_kstr(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @strV(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
