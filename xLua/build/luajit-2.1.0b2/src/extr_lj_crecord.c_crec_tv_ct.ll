; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_tv_ct.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_tv_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }

@IRT_CDATA = common dso_local global i64 0, align 8
@IR_XLOAD = common dso_local global i32 0, align 4
@IRT_FLOAT = common dso_local global i64 0, align 8
@IRT_U32 = common dso_local global i64 0, align 8
@IRT_NUM = common dso_local global i32 0, align 4
@IRT_I64 = common dso_local global i64 0, align 8
@IRT_U64 = common dso_local global i64 0, align 8
@CTF_BOOL = common dso_local global i32 0, align 4
@IR_NE = common dso_local global i32 0, align 4
@LJ_POST_FIXGUARD = common dso_local global i32 0, align 4
@TREF_TRUE = common dso_local global i32 0, align 4
@CTSIZE_PTR = common dso_local global i32 0, align 4
@IR_CNEW = common dso_local global i32 0, align 4
@TREF_NIL = common dso_local global i32 0, align 4
@IR_ADD = common dso_local global i32 0, align 4
@IRT_PTR = common dso_local global i64 0, align 8
@IR_XSTORE = common dso_local global i32 0, align 4
@LJ_TRERR_NYICONV = common dso_local global i32 0, align 4
@IR_CNEWI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, i32, i32)* @crec_tv_ct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crec_tv_ct(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = call i32 @J2G(%struct.TYPE_16__* %19)
  %21 = call %struct.TYPE_18__* @ctype_ctsG(i32 %20)
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %10, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = call i64 @crec_ct2irt(%struct.TYPE_18__* %22, %struct.TYPE_17__* %23)
  store i64 %24, i64* %11, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @ctype_isnum(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %87

31:                                               ; preds = %4
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @IRT_CDATA, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %187

36:                                               ; preds = %31
  %37 = load i32, i32* @IR_XLOAD, align 4
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @IRT(i32 %37, i64 %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @emitir(i32 %39, i32 %40, i32 0)
  store i32 %41, i32* %13, align 4
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @IRT_FLOAT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %36
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @IRT_U32, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45, %36
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @IRT_NUM, align 4
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @emitconv(i32 %50, i32 %51, i64 %52, i32 0)
  store i32 %53, i32* %5, align 4
  br label %203

54:                                               ; preds = %45
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @IRT_I64, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @IRT_U64, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %9, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = call i32 @lj_needsplit(%struct.TYPE_16__* %64)
  br label %85

66:                                               ; preds = %58
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @CTF_BOOL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = load i32, i32* @IR_NE, align 4
  %74 = call i32 @IRTGI(i32 %73)
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = call i32 @lj_ir_kint(%struct.TYPE_16__* %76, i32 0)
  %78 = call i32 @lj_ir_set(%struct.TYPE_16__* %72, i32 %74, i32 %75, i32 %77)
  %79 = load i32, i32* @LJ_POST_FIXGUARD, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @TREF_TRUE, align 4
  store i32 %82, i32* %5, align 4
  br label %203

83:                                               ; preds = %66
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %5, align 4
  br label %203

85:                                               ; preds = %62
  br label %86

86:                                               ; preds = %85
  br label %194

87:                                               ; preds = %4
  %88 = load i32, i32* %12, align 4
  %89 = call i64 @ctype_isptr(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = call i64 @ctype_isenum(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91, %87
  %96 = load i32, i32* @IR_XLOAD, align 4
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @IRT(i32 %96, i64 %97)
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @emitir(i32 %98, i32 %99, i32 0)
  store i32 %100, i32* %9, align 4
  br label %193

101:                                              ; preds = %91
  %102 = load i32, i32* %12, align 4
  %103 = call i64 @ctype_isrefarray(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %12, align 4
  %107 = call i64 @ctype_isstruct(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %105, %101
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @CTINFO_REF(i32 %116)
  %118 = load i32, i32* @CTSIZE_PTR, align 4
  %119 = call i32 @lj_ctype_intern(%struct.TYPE_18__* %115, i32 %117, i32 %118)
  store i32 %119, i32* %8, align 4
  br label %192

120:                                              ; preds = %105
  %121 = load i32, i32* %12, align 4
  %122 = call i64 @ctype_iscomplex(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %186

124:                                              ; preds = %120
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 1
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* @IR_CNEW, align 4
  %130 = load i64, i64* @IRT_CDATA, align 8
  %131 = call i32 @IRTG(i32 %129, i64 %130)
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @lj_ir_kint(%struct.TYPE_16__* %132, i32 %133)
  %135 = load i32, i32* @TREF_NIL, align 4
  %136 = call i32 @emitir(i32 %131, i32 %134, i32 %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* @IR_XLOAD, align 4
  %138 = load i64, i64* %11, align 8
  %139 = call i32 @IRT(i32 %137, i64 %138)
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @emitir(i32 %139, i32 %140, i32 0)
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* @IR_ADD, align 4
  %143 = load i64, i64* @IRT_PTR, align 8
  %144 = call i32 @IRT(i32 %142, i64 %143)
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @lj_ir_kintp(%struct.TYPE_16__* %146, i32 %147)
  %149 = call i32 @emitir(i32 %144, i32 %145, i32 %148)
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* @IR_XLOAD, align 4
  %151 = load i64, i64* %11, align 8
  %152 = call i32 @IRT(i32 %150, i64 %151)
  %153 = load i32, i32* %15, align 4
  %154 = call i32 @emitir(i32 %152, i32 %153, i32 0)
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* @IR_ADD, align 4
  %156 = load i64, i64* @IRT_PTR, align 8
  %157 = call i32 @IRT(i32 %155, i64 %156)
  %158 = load i32, i32* %18, align 4
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %160 = call i32 @lj_ir_kintp(%struct.TYPE_16__* %159, i32 4)
  %161 = call i32 @emitir(i32 %157, i32 %158, i32 %160)
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* @IR_XSTORE, align 4
  %163 = load i64, i64* %11, align 8
  %164 = call i32 @IRT(i32 %162, i64 %163)
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %16, align 4
  %167 = call i32 @emitir(i32 %164, i32 %165, i32 %166)
  %168 = load i32, i32* @IR_ADD, align 4
  %169 = load i64, i64* @IRT_PTR, align 8
  %170 = call i32 @IRT(i32 %168, i64 %169)
  %171 = load i32, i32* %18, align 4
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = add i64 4, %174
  %176 = trunc i64 %175 to i32
  %177 = call i32 @lj_ir_kintp(%struct.TYPE_16__* %172, i32 %176)
  %178 = call i32 @emitir(i32 %170, i32 %171, i32 %177)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* @IR_XSTORE, align 4
  %180 = load i64, i64* %11, align 8
  %181 = call i32 @IRT(i32 %179, i64 %180)
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %17, align 4
  %184 = call i32 @emitir(i32 %181, i32 %182, i32 %183)
  %185 = load i32, i32* %18, align 4
  store i32 %185, i32* %5, align 4
  br label %203

186:                                              ; preds = %120
  br label %187

187:                                              ; preds = %186, %35
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %189 = load i32, i32* @LJ_TRERR_NYICONV, align 4
  %190 = call i32 @lj_trace_err(%struct.TYPE_16__* %188, i32 %189)
  br label %191

191:                                              ; preds = %187
  br label %192

192:                                              ; preds = %191, %109
  br label %193

193:                                              ; preds = %192, %95
  br label %194

194:                                              ; preds = %193, %86
  %195 = load i32, i32* @IR_CNEWI, align 4
  %196 = load i64, i64* @IRT_CDATA, align 8
  %197 = call i32 @IRTG(i32 %195, i64 %196)
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %199 = load i32, i32* %8, align 4
  %200 = call i32 @lj_ir_kint(%struct.TYPE_16__* %198, i32 %199)
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @emitir(i32 %197, i32 %200, i32 %201)
  store i32 %202, i32* %5, align 4
  br label %203

203:                                              ; preds = %194, %124, %83, %71, %49
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

declare dso_local %struct.TYPE_18__* @ctype_ctsG(i32) #1

declare dso_local i32 @J2G(%struct.TYPE_16__*) #1

declare dso_local i64 @crec_ct2irt(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i64 @ctype_isnum(i32) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRT(i32, i64) #1

declare dso_local i32 @emitconv(i32, i32, i64, i32) #1

declare dso_local i32 @lj_needsplit(%struct.TYPE_16__*) #1

declare dso_local i32 @lj_ir_set(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @IRTGI(i32) #1

declare dso_local i32 @lj_ir_kint(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @ctype_isptr(i32) #1

declare dso_local i64 @ctype_isenum(i32) #1

declare dso_local i64 @ctype_isrefarray(i32) #1

declare dso_local i64 @ctype_isstruct(i32) #1

declare dso_local i32 @lj_ctype_intern(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @CTINFO_REF(i32) #1

declare dso_local i64 @ctype_iscomplex(i32) #1

declare dso_local i32 @IRTG(i32, i64) #1

declare dso_local i32 @lj_ir_kintp(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
