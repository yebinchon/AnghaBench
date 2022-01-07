; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cconv.c_lj_cconv_tv_ct.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cconv.c_lj_cconv_tv_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }

@LJ_DUALNUM = common dso_local global i64 0, align 8
@CTID_INT32 = common dso_local global i32 0, align 4
@CTF_UNSIGNED = common dso_local global i32 0, align 4
@CTID_DOUBLE = common dso_local global i32 0, align 4
@CTSIZE_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_cconv_tv_ct(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i32 %2, %struct.TYPE_21__* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i64 @ctype_isnum(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %112

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @ctype_isbool(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %84, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @ctype_isinteger(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 4
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %131

37:                                               ; preds = %31, %27
  %38 = load i64, i64* @LJ_DUALNUM, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = call i64 @ctype_isinteger(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %47 = load i32, i32* @CTID_INT32, align 4
  %48 = call i32 @ctype_get(%struct.TYPE_23__* %46, i32 %47)
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = call i32 @lj_cconv_ct_ct(%struct.TYPE_23__* %45, i32 %48, %struct.TYPE_22__* %49, i64* %13, i64* %50, i32 0)
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @CTF_UNSIGNED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %44
  %57 = load i64, i64* %13, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %61 = load i64, i64* %13, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @setnumV(%struct.TYPE_21__* %60, i32 %62)
  br label %68

64:                                               ; preds = %56, %44
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @setintV(%struct.TYPE_21__* %65, i64 %66)
  br label %68

68:                                               ; preds = %64, %59
  br label %83

69:                                               ; preds = %40, %37
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %72 = load i32, i32* @CTID_DOUBLE, align 4
  %73 = call i32 @ctype_get(%struct.TYPE_23__* %71, i32 %72)
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = bitcast i32* %76 to i64*
  %78 = load i64*, i64** %11, align 8
  %79 = call i32 @lj_cconv_ct_ct(%struct.TYPE_23__* %70, i32 %73, %struct.TYPE_22__* %74, i64* %77, i64* %78, i32 0)
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %81 = call i32 @tvisnum(%struct.TYPE_21__* %80)
  %82 = call i32 @lua_assert(i32 %81)
  br label %83

83:                                               ; preds = %69, %68
  br label %111

84:                                               ; preds = %23
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i64*, i64** %11, align 8
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i32
  br label %100

94:                                               ; preds = %84
  %95 = load i64*, i64** %11, align 8
  %96 = bitcast i64* %95 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  br label %100

100:                                              ; preds = %94, %89
  %101 = phi i32 [ %93, %89 ], [ %99, %94 ]
  store i32 %101, i32* %14, align 4
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @setboolV(%struct.TYPE_21__* %102, i32 %103)
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @setboolV(%struct.TYPE_21__* %108, i32 %109)
  br label %111

111:                                              ; preds = %100, %83
  store i32 0, i32* %6, align 4
  br label %157

112:                                              ; preds = %5
  %113 = load i32, i32* %12, align 4
  %114 = call i64 @ctype_isrefarray(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %12, align 4
  %118 = call i64 @ctype_isstruct(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %116, %112
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %126 = load i64*, i64** %11, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32* @lj_cdata_newref(%struct.TYPE_23__* %125, i64* %126, i32 %127)
  %129 = call i32 @setcdataV(i32 %123, %struct.TYPE_21__* %124, i32* %128)
  store i32 1, i32* %6, align 4
  br label %157

130:                                              ; preds = %116
  br label %131

131:                                              ; preds = %130, %36
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* @CTSIZE_INVALID, align 4
  %137 = icmp ne i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @lua_assert(i32 %138)
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %143 = call i32 @ctype_typeid(%struct.TYPE_23__* %141, %struct.TYPE_22__* %142)
  %144 = load i32, i32* %16, align 4
  %145 = call i32* @lj_cdata_new(%struct.TYPE_23__* %140, i32 %143, i32 %144)
  store i32* %145, i32** %15, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %150 = load i32*, i32** %15, align 8
  %151 = call i32 @setcdataV(i32 %148, %struct.TYPE_21__* %149, i32* %150)
  %152 = load i32*, i32** %15, align 8
  %153 = call i32 @cdataptr(i32* %152)
  %154 = load i64*, i64** %11, align 8
  %155 = load i32, i32* %16, align 4
  %156 = call i32 @memcpy(i32 %153, i64* %154, i32 %155)
  store i32 1, i32* %6, align 4
  br label %157

157:                                              ; preds = %131, %120, %111
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local i64 @ctype_isnum(i32) #1

declare dso_local i32 @ctype_isbool(i32) #1

declare dso_local i64 @ctype_isinteger(i32) #1

declare dso_local i32 @lj_cconv_ct_ct(%struct.TYPE_23__*, i32, %struct.TYPE_22__*, i64*, i64*, i32) #1

declare dso_local i32 @ctype_get(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @setnumV(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @setintV(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @tvisnum(%struct.TYPE_21__*) #1

declare dso_local i32 @setboolV(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @ctype_isrefarray(i32) #1

declare dso_local i64 @ctype_isstruct(i32) #1

declare dso_local i32 @setcdataV(i32, %struct.TYPE_21__*, i32*) #1

declare dso_local i32* @lj_cdata_newref(%struct.TYPE_23__*, i64*, i32) #1

declare dso_local i32* @lj_cdata_new(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ctype_typeid(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @cdataptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
