; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_arith_meta.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_arith_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64, i32* }
%struct.TYPE_13__ = type { i32 }

@TREF_FRAME = common dso_local global i32 0, align 4
@MM_eq = common dso_local global i64 0, align 8
@IR_EQ = common dso_local global i32 0, align 4
@IRT_PTR = common dso_local global i32 0, align 4
@LJ_POST_FIXGUARD = common dso_local global i32 0, align 4
@TREF_TRUE = common dso_local global i64 0, align 8
@TREF_FALSE = common dso_local global i64 0, align 8
@LJ_TRERR_BADTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i64*, %struct.TYPE_16__**, i32*, %struct.TYPE_15__*)* @crec_arith_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crec_arith_meta(%struct.TYPE_14__* %0, i64* %1, %struct.TYPE_16__** %2, i32* %3, %struct.TYPE_15__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_16__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i64* %1, i64** %8, align 8
  store %struct.TYPE_16__** %2, %struct.TYPE_16__*** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %11, align 8
  store i32* null, i32** %12, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %116

23:                                               ; preds = %5
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = call i64 @tviscdata(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %23
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call %struct.TYPE_13__* @argv2cdata(%struct.TYPE_14__* %31, i32 %36, i32* %40)
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call %struct.TYPE_16__* @ctype_raw(i32* %44, i32 %45)
  store %struct.TYPE_16__* %46, %struct.TYPE_16__** %14, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ctype_isptr(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %30
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ctype_cid(i32 %55)
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %52, %30
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32* @lj_ctype_meta(i32* %58, i32 %59, i64 %62)
  store i32* %63, i32** %12, align 8
  br label %64

64:                                               ; preds = %57, %23
  %65 = load i32*, i32** %12, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %115, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %115

74:                                               ; preds = %67
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = call i64 @tviscdata(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %115

81:                                               ; preds = %74
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = call %struct.TYPE_13__* @argv2cdata(%struct.TYPE_14__* %82, i32 %87, i32* %91)
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %15, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call %struct.TYPE_16__* @ctype_raw(i32* %95, i32 %96)
  store %struct.TYPE_16__* %97, %struct.TYPE_16__** %16, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @ctype_isptr(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %81
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ctype_cid(i32 %106)
  store i32 %107, i32* %15, align 4
  br label %108

108:                                              ; preds = %103, %81
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32* @lj_ctype_meta(i32* %109, i32 %110, i64 %113)
  store i32* %114, i32** %12, align 8
  br label %115

115:                                              ; preds = %108, %74, %67, %64
  br label %116

116:                                              ; preds = %115, %5
  %117 = load i32*, i32** %12, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %137

119:                                              ; preds = %116
  %120 = load i32*, i32** %12, align 8
  %121 = call i64 @tvisfunc(i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %125 = load i32*, i32** %12, align 8
  %126 = call i32 @funcV(i32* %125)
  %127 = call i32 @lj_ir_kfunc(%struct.TYPE_14__* %124, i32 %126)
  %128 = load i32, i32* @TREF_FRAME, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 -1
  store i32 %129, i32* %133, align 4
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  store i32 -1, i32* %135, align 8
  store i64 0, i64* %6, align 8
  br label %190

136:                                              ; preds = %119
  br label %186

137:                                              ; preds = %116
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @MM_eq, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %185

143:                                              ; preds = %137
  %144 = load i64*, i64** %8, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %183

148:                                              ; preds = %143
  %149 = load i64*, i64** %8, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %183

153:                                              ; preds = %148
  %154 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %154, i64 0
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @ctype_isnum(i32 %158)
  %160 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %160, i64 1
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @ctype_isnum(i32 %164)
  %166 = icmp eq i64 %159, %165
  br i1 %166, label %167, label %183

167:                                              ; preds = %153
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %169 = load i32, i32* @IR_EQ, align 4
  %170 = load i32, i32* @IRT_PTR, align 4
  %171 = call i32 @IRTG(i32 %169, i32 %170)
  %172 = load i64*, i64** %8, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64*, i64** %8, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 1
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @lj_ir_set(%struct.TYPE_14__* %168, i32 %171, i64 %174, i64 %177)
  %179 = load i32, i32* @LJ_POST_FIXGUARD, align 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 8
  %182 = load i64, i64* @TREF_TRUE, align 8
  store i64 %182, i64* %6, align 8
  br label %190

183:                                              ; preds = %153, %148, %143
  %184 = load i64, i64* @TREF_FALSE, align 8
  store i64 %184, i64* %6, align 8
  br label %190

185:                                              ; preds = %137
  br label %186

186:                                              ; preds = %185, %136
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %188 = load i32, i32* @LJ_TRERR_BADTYPE, align 4
  %189 = call i32 @lj_trace_err(%struct.TYPE_14__* %187, i32 %188)
  store i64 0, i64* %6, align 8
  br label %190

190:                                              ; preds = %186, %183, %167, %123
  %191 = load i64, i64* %6, align 8
  ret i64 %191
}

declare dso_local i64 @tviscdata(i32*) #1

declare dso_local %struct.TYPE_13__* @argv2cdata(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @ctype_raw(i32*, i32) #1

declare dso_local i64 @ctype_isptr(i32) #1

declare dso_local i32 @ctype_cid(i32) #1

declare dso_local i32* @lj_ctype_meta(i32*, i32, i64) #1

declare dso_local i64 @tvisfunc(i32*) #1

declare dso_local i32 @lj_ir_kfunc(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @funcV(i32*) #1

declare dso_local i64 @ctype_isnum(i32) #1

declare dso_local i32 @lj_ir_set(%struct.TYPE_14__*, i32, i64, i64) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
