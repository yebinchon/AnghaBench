; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_carith.c_lj_carith_check64.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_carith.c_lj_carith_check64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@LUA_TNUMBER = common dso_local global i32 0, align 4
@CTMASK_NUM = common dso_local global i32 0, align 4
@CTF_BOOL = common dso_local global i32 0, align 4
@CTF_FP = common dso_local global i32 0, align 4
@CTF_UNSIGNED = common dso_local global i32 0, align 4
@CT_NUM = common dso_local global i32 0, align 4
@CTID_UINT64 = common dso_local global i32 0, align 4
@CTID_INT64 = common dso_local global i32 0, align 4
@LJ_DUALNUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_carith_check64(%struct.TYPE_15__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = getelementptr inbounds i32, i32* %20, i64 -1
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp uge i32* %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %138, %27
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @LUA_TNUMBER, align 4
  %32 = call i32 @lj_err_argt(%struct.TYPE_15__* %29, i32 %30, i32 %31)
  br label %142

33:                                               ; preds = %3
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @tvisnumber(i32* %34)
  %36 = call i64 @LJ_LIKELY(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %141

39:                                               ; preds = %33
  %40 = load i32*, i32** %8, align 8
  %41 = call i64 @tviscdata(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %128

43:                                               ; preds = %39
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = call i32* @ctype_cts(%struct.TYPE_15__* %44)
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call %struct.TYPE_14__* @cdataV(i32* %46)
  %48 = call i64 @cdataptr(%struct.TYPE_14__* %47)
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call %struct.TYPE_14__* @cdataV(i32* %50)
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call %struct.TYPE_16__* @ctype_get(i32* %54, i32 %55)
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %12, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ctype_isref(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %43
  %63 = load i32*, i32** %10, align 8
  %64 = bitcast i32* %63 to i8**
  %65 = load i8*, i8** %64, align 8
  %66 = bitcast i8* %65 to i32*
  store i32* %66, i32** %10, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ctype_cid(i32 %69)
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %62, %43
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call %struct.TYPE_16__* @ctype_raw(i32* %72, i32 %73)
  store %struct.TYPE_16__* %74, %struct.TYPE_16__** %12, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @ctype_isenum(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load i32*, i32** %9, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %83 = call %struct.TYPE_16__* @ctype_child(i32* %81, %struct.TYPE_16__* %82)
  store %struct.TYPE_16__* %83, %struct.TYPE_16__** %12, align 8
  br label %84

84:                                               ; preds = %80, %71
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CTMASK_NUM, align 4
  %89 = load i32, i32* @CTF_BOOL, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @CTF_FP, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @CTF_UNSIGNED, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %87, %94
  %96 = load i32, i32* @CT_NUM, align 4
  %97 = load i32, i32* @CTF_UNSIGNED, align 4
  %98 = call i32 @CTINFO(i32 %96, i32 %97)
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %84
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 8
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @CTID_UINT64, align 4
  %107 = load i32*, i32** %7, align 8
  store i32 %106, i32* %107, align 4
  br label %116

108:                                              ; preds = %100, %84
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* @CTID_INT64, align 4
  %114 = load i32*, i32** %7, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %112, %108
  br label %116

116:                                              ; preds = %115, %105
  %117 = load i32*, i32** %9, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %119, align 4
  %121 = call %struct.TYPE_16__* @ctype_get(i32* %118, i32 %120)
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @CCF_ARG(i32 %124)
  %126 = call i32 @lj_cconv_ct_ct(i32* %117, %struct.TYPE_16__* %121, %struct.TYPE_16__* %122, i32* %13, i32* %123, i32 %125)
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %4, align 4
  br label %162

128:                                              ; preds = %39
  %129 = load i32*, i32** %8, align 8
  %130 = call i64 @tvisstr(i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @strV(i32* %133)
  %135 = load i32*, i32** %8, align 8
  %136 = call i64 @lj_strscan_number(i32 %134, i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %132, %128
  br label %28

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140, %38
  br label %142

142:                                              ; preds = %141, %28
  %143 = load i32*, i32** %8, align 8
  %144 = call i32 @tvisint(i32* %143)
  %145 = call i64 @LJ_LIKELY(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32*, i32** %8, align 8
  %149 = call i32 @intV(i32* %148)
  store i32 %149, i32* %4, align 4
  br label %162

150:                                              ; preds = %142
  %151 = load i32*, i32** %8, align 8
  %152 = call i32 @numV(i32* %151)
  %153 = call i32 @lj_num2bit(i32 %152)
  store i32 %153, i32* %14, align 4
  %154 = load i64, i64* @LJ_DUALNUM, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load i32*, i32** %8, align 8
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @setintV(i32* %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %150
  %161 = load i32, i32* %14, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %160, %147, %116
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @lj_err_argt(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @LJ_LIKELY(i32) #1

declare dso_local i32 @tvisnumber(i32*) #1

declare dso_local i64 @tviscdata(i32*) #1

declare dso_local i32* @ctype_cts(%struct.TYPE_15__*) #1

declare dso_local i64 @cdataptr(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @cdataV(i32*) #1

declare dso_local %struct.TYPE_16__* @ctype_get(i32*, i32) #1

declare dso_local i64 @ctype_isref(i32) #1

declare dso_local i32 @ctype_cid(i32) #1

declare dso_local %struct.TYPE_16__* @ctype_raw(i32*, i32) #1

declare dso_local i64 @ctype_isenum(i32) #1

declare dso_local %struct.TYPE_16__* @ctype_child(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @CTINFO(i32, i32) #1

declare dso_local i32 @lj_cconv_ct_ct(i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32*, i32) #1

declare dso_local i32 @CCF_ARG(i32) #1

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local i64 @lj_strscan_number(i32, i32*) #1

declare dso_local i32 @strV(i32*) #1

declare dso_local i32 @tvisint(i32*) #1

declare dso_local i32 @intV(i32*) #1

declare dso_local i32 @lj_num2bit(i32) #1

declare dso_local i32 @numV(i32*) #1

declare dso_local i32 @setintV(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
