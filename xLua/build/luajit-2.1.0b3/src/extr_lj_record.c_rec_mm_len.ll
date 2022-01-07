; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_mm_len.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_mm_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@MM_len = common dso_local global i32 0, align 4
@lj_cont_ra = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i32 0, align 4
@TREF_NIL = common dso_local global i32 0, align 4
@LJ_52 = common dso_local global i64 0, align 8
@IRCALL_lj_tab_len = common dso_local global i32 0, align 4
@LJ_TRERR_NOMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32*)* @rec_mm_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rec_mm_len(%struct.TYPE_12__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @copyTV(%struct.TYPE_11__* %16, i32* %17, i32* %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = load i32, i32* @MM_len, align 4
  %22 = call i64 @lj_record_mm_lookup(%struct.TYPE_12__* %20, %struct.TYPE_13__* %8, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %80

24:                                               ; preds = %3
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = load i32, i32* @lj_cont_ra, align 4
  %27 = call i32 @rec_mm_prep(%struct.TYPE_12__* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32* %33, i32** %10, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32* %41, i32** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %52 = call i32 @copyTV(%struct.TYPE_11__* %48, i32* %50, i32* %51)
  %53 = load i32, i32* @LJ_FR2, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %10, align 8
  %57 = load i32, i32* @LJ_FR2, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %11, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @copyTV(%struct.TYPE_11__* %66, i32* %68, i32* %69)
  %71 = load i32, i32* @TREF_NIL, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 %71, i32* %73, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = call i32 @setnilV(i32* %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @lj_record_call(%struct.TYPE_12__* %77, i32 %78, i32 2)
  br label %96

80:                                               ; preds = %3
  %81 = load i64, i64* @LJ_52, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @tref_istab(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %89 = load i32, i32* @IRCALL_lj_tab_len, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @lj_ir_call(%struct.TYPE_12__* %88, i32 %89, i32 %90)
  store i32 %91, i32* %4, align 4
  br label %97

92:                                               ; preds = %83, %80
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = load i32, i32* @LJ_TRERR_NOMM, align 4
  %95 = call i32 @lj_trace_err(%struct.TYPE_12__* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %24
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %87
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @copyTV(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i64 @lj_record_mm_lookup(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @rec_mm_prep(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @setnilV(i32*) #1

declare dso_local i32 @lj_record_call(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @tref_istab(i32) #1

declare dso_local i32 @lj_ir_call(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
