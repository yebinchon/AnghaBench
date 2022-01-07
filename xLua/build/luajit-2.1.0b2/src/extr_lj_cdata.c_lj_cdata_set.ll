; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cdata.c_lj_cdata_set.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cdata.c_lj_cdata_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@CTF_CONST = common dso_local global i32 0, align 4
@CTSIZE_PTR = common dso_local global i32 0, align 4
@CTA_QUAL = common dso_local global i64 0, align 8
@LJ_ERR_FFI_WRCONST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_cdata_set(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ctype_isconstval(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %130

17:                                               ; preds = %5
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ctype_isbitfield(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CTF_CONST, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %130

33:                                               ; preds = %23
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @lj_cconv_bf_tv(%struct.TYPE_13__* %34, %struct.TYPE_12__* %35, i32* %36, i32* %37)
  br label %142

39:                                               ; preds = %17
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ctype_ispointer(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ctype_isfield(i32 %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %46, %40
  %53 = phi i1 [ true, %40 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @lua_assert(i32 %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = call %struct.TYPE_12__* @ctype_child(%struct.TYPE_13__* %56, %struct.TYPE_12__* %57)
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %7, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @ctype_isref(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %52
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CTSIZE_PTR, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @lua_assert(i32 %70)
  %72 = load i32*, i32** %8, align 8
  %73 = bitcast i32* %72 to i32**
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %8, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = call %struct.TYPE_12__* @ctype_child(%struct.TYPE_13__* %75, %struct.TYPE_12__* %76)
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %7, align 8
  br label %78

78:                                               ; preds = %64, %52
  br label %79

79:                                               ; preds = %100, %78
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @ctype_isattrib(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @ctype_attrib(i32 %88)
  %90 = load i64, i64* @CTA_QUAL, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %92, %85
  br label %100

99:                                               ; preds = %79
  br label %104

100:                                              ; preds = %98
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %103 = call %struct.TYPE_12__* @ctype_child(%struct.TYPE_13__* %101, %struct.TYPE_12__* %102)
  store %struct.TYPE_12__* %103, %struct.TYPE_12__** %7, align 8
  br label %79

104:                                              ; preds = %99
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @ctype_hassize(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ctype_isvoid(i32 %113)
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  br label %117

117:                                              ; preds = %110, %104
  %118 = phi i1 [ false, %104 ], [ %116, %110 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @lua_assert(i32 %119)
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %10, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @CTF_CONST, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %117
  br label %130

130:                                              ; preds = %129, %32, %16
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @LJ_ERR_FFI_WRCONST, align 4
  %135 = call i32 @lj_err_caller(i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %130, %117
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = call i32 @lj_cconv_ct_tv(%struct.TYPE_13__* %137, %struct.TYPE_12__* %138, i32* %139, i32* %140, i32 0)
  br label %142

142:                                              ; preds = %136, %33
  ret void
}

declare dso_local i64 @ctype_isconstval(i32) #1

declare dso_local i64 @ctype_isbitfield(i32) #1

declare dso_local i32 @lj_cconv_bf_tv(%struct.TYPE_13__*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @ctype_ispointer(i32) #1

declare dso_local i64 @ctype_isfield(i32) #1

declare dso_local %struct.TYPE_12__* @ctype_child(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i64 @ctype_isref(i32) #1

declare dso_local i64 @ctype_isattrib(i32) #1

declare dso_local i64 @ctype_attrib(i32) #1

declare dso_local i64 @ctype_hassize(i32) #1

declare dso_local i32 @ctype_isvoid(i32) #1

declare dso_local i32 @lj_err_caller(i32, i32) #1

declare dso_local i32 @lj_cconv_ct_tv(%struct.TYPE_13__*, %struct.TYPE_12__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
