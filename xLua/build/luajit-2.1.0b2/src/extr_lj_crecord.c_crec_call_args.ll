; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_call_args.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_call_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32, i64 }

@CCI_NARGS_MAX = common dso_local global i32 0, align 4
@TREF_NIL = common dso_local global i64 0, align 8
@LJ_TRERR_NYICALL = common dso_local global i32 0, align 4
@CTF_VARARG = common dso_local global i32 0, align 4
@CTF_UNSIGNED = common dso_local global i32 0, align 4
@IRT_INT = common dso_local global i32 0, align 4
@IRT_U8 = common dso_local global i32 0, align 4
@IRT_U16 = common dso_local global i32 0, align 4
@IRT_I8 = common dso_local global i32 0, align 4
@IRT_I16 = common dso_local global i32 0, align 4
@IRCONV_SEXT = common dso_local global i32 0, align 4
@LJ_SOFTFP = common dso_local global i64 0, align 8
@IR_CARG = common dso_local global i32 0, align 4
@IRT_NIL = common dso_local global i32 0, align 4
@CTCC_FASTCALL = common dso_local global i64 0, align 8
@CTCC_THISCALL = common dso_local global i64 0, align 8
@IRT_I64 = common dso_local global i32 0, align 4
@IRT_U64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, %struct.TYPE_15__*)* @crec_call_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crec_call_args(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %8, align 8
  %21 = load i32, i32* @CCI_NARGS_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  br label %28

28:                                               ; preds = %41, %4
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call %struct.TYPE_15__* @ctype_get(i32* %32, i64 %33)
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %17, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ctype_isattrib(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  br label %45

41:                                               ; preds = %31
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %11, align 8
  br label %28

45:                                               ; preds = %40, %28
  %46 = load i64, i64* @TREF_NIL, align 8
  %47 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 %46, i64* %47, align 16
  store i32 0, i32* %13, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  store i64* %51, i64** %15, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32* %55, i32** %16, align 8
  br label %56

56:                                               ; preds = %205, %45
  %57 = load i64*, i64** %15, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %212

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @CCI_NARGS_MAX, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = load i32, i32* @LJ_TRERR_NYICALL, align 4
  %67 = call i32 @lj_trace_err(%struct.TYPE_13__* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i64, i64* %11, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load i32*, i32** %7, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call %struct.TYPE_15__* @ctype_get(i32* %72, i64 %73)
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %20, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %11, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ctype_isfield(i32 %80)
  %82 = call i32 @lua_assert(i32 %81)
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @ctype_cid(i32 %85)
  store i64 %86, i64* %18, align 8
  br label %102

87:                                               ; preds = %68
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CTF_VARARG, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %87
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = load i32, i32* @LJ_TRERR_NYICALL, align 4
  %97 = call i32 @lj_trace_err(%struct.TYPE_13__* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %87
  %99 = load i32*, i32** %7, align 8
  %100 = load i32*, i32** %16, align 8
  %101 = call i64 @lj_ccall_ctid_vararg(i32* %99, i32* %100)
  store i64 %101, i64* %18, align 8
  br label %102

102:                                              ; preds = %98, %71
  %103 = load i32*, i32** %7, align 8
  %104 = load i64, i64* %18, align 8
  %105 = call %struct.TYPE_15__* @ctype_raw(i32* %103, i64 %104)
  store %struct.TYPE_15__* %105, %struct.TYPE_15__** %19, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @ctype_isnum(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %127, label %111

111:                                              ; preds = %102
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @ctype_isptr(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %111
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @ctype_isenum(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %117
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %125 = load i32, i32* @LJ_TRERR_NYICALL, align 4
  %126 = call i32 @lj_trace_err(%struct.TYPE_13__* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %117, %111, %102
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %130 = load i64*, i64** %15, align 8
  %131 = load i64, i64* %130, align 8
  %132 = load i32*, i32** %16, align 8
  %133 = call i64 @crec_ct_tv(%struct.TYPE_13__* %128, %struct.TYPE_15__* %129, i32 0, i64 %131, i32* %132)
  store i64 %133, i64* %14, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @ctype_isinteger_or_bool(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %182

139:                                              ; preds = %127
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %142, 4
  br i1 %143, label %144, label %181

144:                                              ; preds = %139
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @CTF_UNSIGNED, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %144
  %152 = load i64, i64* %14, align 8
  %153 = load i32, i32* @IRT_INT, align 4
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = load i32, i32* @IRT_U8, align 4
  br label %162

160:                                              ; preds = %151
  %161 = load i32, i32* @IRT_U16, align 4
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi i32 [ %159, %158 ], [ %161, %160 ]
  %164 = call i64 @emitconv(i64 %152, i32 %153, i32 %163, i32 0)
  store i64 %164, i64* %14, align 8
  br label %180

165:                                              ; preds = %144
  %166 = load i64, i64* %14, align 8
  %167 = load i32, i32* @IRT_INT, align 4
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load i32, i32* @IRT_I8, align 4
  br label %176

174:                                              ; preds = %165
  %175 = load i32, i32* @IRT_I16, align 4
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %173, %172 ], [ %175, %174 ]
  %178 = load i32, i32* @IRCONV_SEXT, align 4
  %179 = call i64 @emitconv(i64 %166, i32 %167, i32 %177, i32 %178)
  store i64 %179, i64* %14, align 8
  br label %180

180:                                              ; preds = %176, %162
  br label %181

181:                                              ; preds = %180, %139
  br label %200

182:                                              ; preds = %127
  %183 = load i64, i64* @LJ_SOFTFP, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %199

185:                                              ; preds = %182
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i64 @ctype_isfp(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %185
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp sgt i32 %194, 4
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %198 = call i32 @lj_needsplit(%struct.TYPE_13__* %197)
  br label %199

199:                                              ; preds = %196, %191, %185, %182
  br label %200

200:                                              ; preds = %199, %181
  %201 = load i64, i64* %14, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %24, i64 %203
  store i64 %201, i64* %204, align 8
  br label %205

205:                                              ; preds = %200
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %13, align 4
  %208 = load i64*, i64** %15, align 8
  %209 = getelementptr inbounds i64, i64* %208, i32 1
  store i64* %209, i64** %15, align 8
  %210 = load i32*, i32** %16, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 1
  store i32* %211, i32** %16, align 8
  br label %56

212:                                              ; preds = %56
  %213 = getelementptr inbounds i64, i64* %24, i64 0
  %214 = load i64, i64* %213, align 16
  store i64 %214, i64* %14, align 8
  store i32 1, i32* %12, align 4
  br label %215

215:                                              ; preds = %229, %212
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %13, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %232

219:                                              ; preds = %215
  %220 = load i32, i32* @IR_CARG, align 4
  %221 = load i32, i32* @IRT_NIL, align 4
  %222 = call i32 @IRT(i32 %220, i32 %221)
  %223 = load i64, i64* %14, align 8
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %24, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = call i64 @emitir(i32 %222, i64 %223, i64 %227)
  store i64 %228, i64* %14, align 8
  br label %229

229:                                              ; preds = %219
  %230 = load i32, i32* %12, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %12, align 4
  br label %215

232:                                              ; preds = %215
  %233 = load i64, i64* %14, align 8
  %234 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %234)
  ret i64 %233
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_15__* @ctype_get(i32*, i64) #2

declare dso_local i32 @ctype_isattrib(i32) #2

declare dso_local i32 @lj_trace_err(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @lua_assert(i32) #2

declare dso_local i32 @ctype_isfield(i32) #2

declare dso_local i64 @ctype_cid(i32) #2

declare dso_local i64 @lj_ccall_ctid_vararg(i32*, i32*) #2

declare dso_local %struct.TYPE_15__* @ctype_raw(i32*, i64) #2

declare dso_local i64 @ctype_isnum(i32) #2

declare dso_local i64 @ctype_isptr(i32) #2

declare dso_local i64 @ctype_isenum(i32) #2

declare dso_local i64 @crec_ct_tv(%struct.TYPE_13__*, %struct.TYPE_15__*, i32, i64, i32*) #2

declare dso_local i64 @ctype_isinteger_or_bool(i32) #2

declare dso_local i64 @emitconv(i64, i32, i32, i32) #2

declare dso_local i64 @ctype_isfp(i32) #2

declare dso_local i32 @lj_needsplit(%struct.TYPE_13__*) #2

declare dso_local i64 @emitir(i32, i64, i64) #2

declare dso_local i32 @IRT(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
