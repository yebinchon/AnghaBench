; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_index_meta.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_index_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i64, i32, i32* }

@MM_newindex = common dso_local global i32 0, align 4
@MM_index = common dso_local global i32 0, align 4
@LJ_TRERR_BADTYPE = common dso_local global i32 0, align 4
@TREF_FRAME = common dso_local global i32 0, align 4
@IR_EQ = common dso_local global i32 0, align 4
@IRT_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32*, %struct.TYPE_10__*)* @crec_index_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crec_index_meta(%struct.TYPE_9__* %0, i32* %1, i32* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @ctype_typeid(i32* %12, i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
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
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = load i32, i32* @LJ_TRERR_BADTYPE, align 4
  %33 = call i32 @lj_trace_err(%struct.TYPE_9__* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32*, i32** %10, align 8
  %36 = call i64 @tvisfunc(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @funcV(i32* %40)
  %42 = call i32 @lj_ir_kfunc(%struct.TYPE_9__* %39, i32 %41)
  %43 = load i32, i32* @TREF_FRAME, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 -1
  store i32 %44, i32* %48, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  store i32 -1, i32* %50, align 8
  br label %118

51:                                               ; preds = %34
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %113

56:                                               ; preds = %51
  %57 = load i32*, i32** %10, align 8
  %58 = call i64 @tvistab(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %113

60:                                               ; preds = %56
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @tref_isstr(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %113

68:                                               ; preds = %60
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @tabV(i32* %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = call i32* @lj_tab_get(i32 %71, i32 %73, i32* %77)
  store i32* %78, i32** %11, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @lj_record_constify(%struct.TYPE_9__* %79, i32* %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %81, i32* %85, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %68
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = load i32, i32* @LJ_TRERR_BADTYPE, align 4
  %95 = call i32 @lj_trace_err(%struct.TYPE_9__* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %68
  %97 = load i32, i32* @IR_EQ, align 4
  %98 = load i32, i32* @IRT_STR, align 4
  %99 = call i32 @IRTG(i32 %97, i32 %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = call i32 @strV(i32* %109)
  %111 = call i32 @lj_ir_kstr(%struct.TYPE_9__* %105, i32 %110)
  %112 = call i32 @emitir(i32 %99, i32 %104, i32 %111)
  br label %117

113:                                              ; preds = %60, %56, %51
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %115 = load i32, i32* @LJ_TRERR_BADTYPE, align 4
  %116 = call i32 @lj_trace_err(%struct.TYPE_9__* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %96
  br label %118

118:                                              ; preds = %117, %38
  ret void
}

declare dso_local i32 @ctype_typeid(i32*, i32*) #1

declare dso_local i32* @lj_ctype_meta(i32*, i32, i32) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @tvisfunc(i32*) #1

declare dso_local i32 @lj_ir_kfunc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @funcV(i32*) #1

declare dso_local i64 @tvistab(i32*) #1

declare dso_local i64 @tref_isstr(i32) #1

declare dso_local i32* @lj_tab_get(i32, i32, i32*) #1

declare dso_local i32 @tabV(i32*) #1

declare dso_local i32 @lj_record_constify(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i32 @lj_ir_kstr(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @strV(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
