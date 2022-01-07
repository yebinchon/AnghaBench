; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_arith_meta.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_arith_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_14__ = type { i32 }

@MM_eq = common dso_local global i64 0, align 8
@IR_EQ = common dso_local global i32 0, align 4
@IRT_PTR = common dso_local global i32 0, align 4
@LJ_POST_FIXGUARD = common dso_local global i32 0, align 4
@TREF_TRUE = common dso_local global i64 0, align 8
@TREF_FALSE = common dso_local global i64 0, align 8
@LJ_TRERR_BADTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, i64*, %struct.TYPE_17__**, i32*, %struct.TYPE_16__*)* @crec_arith_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crec_arith_meta(%struct.TYPE_15__* %0, i64* %1, %struct.TYPE_17__** %2, i32* %3, %struct.TYPE_16__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_17__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i64* %1, i64** %8, align 8
  store %struct.TYPE_17__** %2, %struct.TYPE_17__*** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %11, align 8
  store i32* null, i32** %12, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %116

23:                                               ; preds = %5
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = call i64 @tviscdata(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %23
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call %struct.TYPE_14__* @argv2cdata(%struct.TYPE_15__* %31, i64 %36, i32* %40)
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call %struct.TYPE_17__* @ctype_raw(i32* %44, i32 %45)
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %14, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ctype_isptr(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %30
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ctype_cid(i32 %55)
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %52, %30
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32* @lj_ctype_meta(i32* %58, i32 %59, i64 %62)
  store i32* %63, i32** %12, align 8
  br label %64

64:                                               ; preds = %57, %23
  %65 = load i32*, i32** %12, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %115, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %115

74:                                               ; preds = %67
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = call i64 @tviscdata(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %115

81:                                               ; preds = %74
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = call %struct.TYPE_14__* @argv2cdata(%struct.TYPE_15__* %82, i64 %87, i32* %91)
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %15, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call %struct.TYPE_17__* @ctype_raw(i32* %95, i32 %96)
  store %struct.TYPE_17__* %97, %struct.TYPE_17__** %16, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @ctype_isptr(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %81
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ctype_cid(i32 %106)
  store i32 %107, i32* %15, align 4
  br label %108

108:                                              ; preds = %103, %81
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32* @lj_ctype_meta(i32* %109, i32 %110, i64 %113)
  store i32* %114, i32** %12, align 8
  br label %115

115:                                              ; preds = %108, %74, %67, %64
  br label %116

116:                                              ; preds = %115, %5
  %117 = load i32*, i32** %12, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i32*, i32** %12, align 8
  %121 = call i64 @tvisfunc(i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 @crec_tailcall(%struct.TYPE_15__* %124, %struct.TYPE_16__* %125, i32* %126)
  store i64 0, i64* %6, align 8
  br label %182

128:                                              ; preds = %119
  br label %178

129:                                              ; preds = %116
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @MM_eq, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %177

135:                                              ; preds = %129
  %136 = load i64*, i64** %8, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %175

140:                                              ; preds = %135
  %141 = load i64*, i64** %8, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %175

145:                                              ; preds = %140
  %146 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %146, i64 0
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @ctype_isnum(i32 %150)
  %152 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %152, i64 1
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @ctype_isnum(i32 %156)
  %158 = icmp eq i64 %151, %157
  br i1 %158, label %159, label %175

159:                                              ; preds = %145
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %161 = load i32, i32* @IR_EQ, align 4
  %162 = load i32, i32* @IRT_PTR, align 4
  %163 = call i32 @IRTG(i32 %161, i32 %162)
  %164 = load i64*, i64** %8, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64*, i64** %8, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 1
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @lj_ir_set(%struct.TYPE_15__* %160, i32 %163, i64 %166, i64 %169)
  %171 = load i32, i32* @LJ_POST_FIXGUARD, align 4
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load i64, i64* @TREF_TRUE, align 8
  store i64 %174, i64* %6, align 8
  br label %182

175:                                              ; preds = %145, %140, %135
  %176 = load i64, i64* @TREF_FALSE, align 8
  store i64 %176, i64* %6, align 8
  br label %182

177:                                              ; preds = %129
  br label %178

178:                                              ; preds = %177, %128
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %180 = load i32, i32* @LJ_TRERR_BADTYPE, align 4
  %181 = call i32 @lj_trace_err(%struct.TYPE_15__* %179, i32 %180)
  store i64 0, i64* %6, align 8
  br label %182

182:                                              ; preds = %178, %175, %159, %123
  %183 = load i64, i64* %6, align 8
  ret i64 %183
}

declare dso_local i64 @tviscdata(i32*) #1

declare dso_local %struct.TYPE_14__* @argv2cdata(%struct.TYPE_15__*, i64, i32*) #1

declare dso_local %struct.TYPE_17__* @ctype_raw(i32*, i32) #1

declare dso_local i64 @ctype_isptr(i32) #1

declare dso_local i32 @ctype_cid(i32) #1

declare dso_local i32* @lj_ctype_meta(i32*, i32, i64) #1

declare dso_local i64 @tvisfunc(i32*) #1

declare dso_local i32 @crec_tailcall(%struct.TYPE_15__*, %struct.TYPE_16__*, i32*) #1

declare dso_local i64 @ctype_isnum(i32) #1

declare dso_local i32 @lj_ir_set(%struct.TYPE_15__*, i32, i64, i64) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
