; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_meta.c_lj_meta_tset.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_meta.c_lj_meta_tset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32 }

@LJ_MAX_IDXCHAIN = common dso_local global i32 0, align 4
@MM_newindex = common dso_local global i32 0, align 4
@LJ_ERR_NILIDX = common dso_local global i32 0, align 4
@LJ_ERR_NANIDX = common dso_local global i32 0, align 4
@LJ_ERR_OPINDEX = common dso_local global i32 0, align 4
@lj_cont_nop = common dso_local global i32 0, align 4
@LJ_ERR_SETLOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_meta_tset(%struct.TYPE_18__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %132, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @LJ_MAX_IDXCHAIN, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %135

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @tvistab(i32* %18)
  %20 = call i64 @LJ_LIKELY(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %102

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = call %struct.TYPE_19__* @tabV(i32* %23)
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %11, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32* @lj_tab_get(%struct.TYPE_18__* %25, %struct.TYPE_19__* %26, i32* %27)
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call i64 @tvisnil(i32* %29)
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @LJ_LIKELY(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %22
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %41 = call i32 @lj_gc_anybarriert(%struct.TYPE_18__* %39, %struct.TYPE_19__* %40)
  %42 = load i32*, i32** %12, align 8
  store i32* %42, i32** %4, align 8
  br label %139

43:                                               ; preds = %22
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @tabref(i32 %47)
  %49 = load i32, i32* @MM_newindex, align 4
  %50 = call i32* @lj_meta_fast(%struct.TYPE_18__* %44, i32 %48, i32 %49)
  store i32* %50, i32** %10, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %100, label %52

52:                                               ; preds = %43
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %57 = call i32 @lj_gc_anybarriert(%struct.TYPE_18__* %55, %struct.TYPE_19__* %56)
  %58 = load i32*, i32** %12, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %60 = call i32* @niltv(%struct.TYPE_18__* %59)
  %61 = icmp ne i32* %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32*, i32** %12, align 8
  store i32* %63, i32** %4, align 8
  br label %139

64:                                               ; preds = %52
  %65 = load i32*, i32** %7, align 8
  %66 = call i64 @tvisnil(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %70 = load i32, i32* @LJ_ERR_NILIDX, align 4
  %71 = call i32 @lj_err_msg(%struct.TYPE_18__* %69, i32 %70)
  br label %95

72:                                               ; preds = %64
  %73 = load i32*, i32** %7, align 8
  %74 = call i64 @tvisint(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32*, i32** %7, align 8
  %78 = call i64 @intV(i32* %77)
  %79 = trunc i64 %78 to i32
  %80 = call i32 @setnumV(i32* %8, i32 %79)
  store i32* %8, i32** %7, align 8
  br label %94

81:                                               ; preds = %72
  %82 = load i32*, i32** %7, align 8
  %83 = call i64 @tvisnum(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i32*, i32** %7, align 8
  %87 = call i64 @tvisnan(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %91 = load i32, i32* @LJ_ERR_NANIDX, align 4
  %92 = call i32 @lj_err_msg(%struct.TYPE_18__* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %85, %81
  br label %94

94:                                               ; preds = %93, %76
  br label %95

95:                                               ; preds = %94, %68
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = call i32* @lj_tab_newkey(%struct.TYPE_18__* %96, %struct.TYPE_19__* %97, i32* %98)
  store i32* %99, i32** %4, align 8
  br label %139

100:                                              ; preds = %43
  br label %101

101:                                              ; preds = %100
  br label %115

102:                                              ; preds = %17
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* @MM_newindex, align 4
  %106 = call i32* @lj_meta_lookup(%struct.TYPE_18__* %103, i32* %104, i32 %105)
  store i32* %106, i32** %10, align 8
  %107 = call i64 @tvisnil(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* @LJ_ERR_OPINDEX, align 4
  %113 = call i32 @lj_err_optype(%struct.TYPE_18__* %110, i32* %111, i32 %112)
  store i32* null, i32** %4, align 8
  br label %139

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114, %101
  %116 = load i32*, i32** %10, align 8
  %117 = call i64 @tvisfunc(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %121 = load i32, i32* @lj_cont_nop, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @mmcall(%struct.TYPE_18__* %120, i32 %121, i32* %122, i32* %123, i32* %124)
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  store i32* null, i32** %4, align 8
  br label %139

128:                                              ; preds = %115
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = call i32 @copyTV(%struct.TYPE_18__* %129, i32* %8, i32* %130)
  store i32* %8, i32** %6, align 8
  br label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %13

135:                                              ; preds = %13
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %137 = load i32, i32* @LJ_ERR_SETLOOP, align 4
  %138 = call i32 @lj_err_msg(%struct.TYPE_18__* %136, i32 %137)
  store i32* null, i32** %4, align 8
  br label %139

139:                                              ; preds = %135, %119, %109, %95, %62, %36
  %140 = load i32*, i32** %4, align 8
  ret i32* %140
}

declare dso_local i64 @LJ_LIKELY(i32) #1

declare dso_local i32 @tvistab(i32*) #1

declare dso_local %struct.TYPE_19__* @tabV(i32*) #1

declare dso_local i32* @lj_tab_get(%struct.TYPE_18__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i64 @tvisnil(i32*) #1

declare dso_local i32 @lj_gc_anybarriert(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32* @lj_meta_fast(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @tabref(i32) #1

declare dso_local i32* @niltv(%struct.TYPE_18__*) #1

declare dso_local i32 @lj_err_msg(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @tvisint(i32*) #1

declare dso_local i32 @setnumV(i32*, i32) #1

declare dso_local i64 @intV(i32*) #1

declare dso_local i64 @tvisnum(i32*) #1

declare dso_local i64 @tvisnan(i32*) #1

declare dso_local i32* @lj_tab_newkey(%struct.TYPE_18__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32* @lj_meta_lookup(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @lj_err_optype(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i64 @tvisfunc(i32*) #1

declare dso_local i32 @mmcall(%struct.TYPE_18__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @copyTV(%struct.TYPE_18__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
