; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_snap.c_snap_restoreval.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_snap.c_snap_restoreval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_22__ = type { i8**, i32*, i32* }
%struct.TYPE_19__ = type { i8* }

@IR_CONV = common dso_local global i64 0, align 8
@IRCONV_NUM_INT = common dso_local global i64 0, align 8
@LJ_DUALNUM = common dso_local global i64 0, align 8
@RID_MIN_GPR = common dso_local global i64 0, align 8
@RID_MIN_FPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_21__*, %struct.TYPE_22__*, i32, i32, i64, %struct.TYPE_19__*)* @snap_restoreval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snap_restoreval(%struct.TYPE_18__* %0, %struct.TYPE_21__* %1, %struct.TYPE_22__* %2, i32 %3, i32 %4, i64 %5, %struct.TYPE_19__* %6) #0 {
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store %struct.TYPE_19__* %6, %struct.TYPE_19__** %14, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %23 = load i64, i64* %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i64 %23
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %15, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %16, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %17, align 4
  %31 = load i64, i64* %13, align 8
  %32 = call i64 @irref_isk(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %7
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %40 = call i32 @lj_ir_kvalue(i32 %37, %struct.TYPE_19__* %38, %struct.TYPE_20__* %39)
  br label %204

41:                                               ; preds = %7
  %42 = load i32, i32* %12, align 4
  %43 = load i64, i64* %13, align 8
  %44 = call i32 @bloomtest(i32 %42, i64 %43)
  %45 = call i64 @LJ_UNLIKELY(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i64, i64* %13, align 8
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @snap_renameref(%struct.TYPE_21__* %48, i32 %49, i64 %50, i32 %51)
  store i32 %52, i32* %17, align 4
  br label %53

53:                                               ; preds = %47, %41
  %54 = load i32, i32* %17, align 4
  %55 = call i64 @regsp_spill(i32 %54)
  %56 = call i64 @ra_hasspill(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %103

58:                                               ; preds = %53
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %17, align 4
  %63 = call i64 @regsp_spill(i32 %62)
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32* %64, i32** %18, align 8
  %65 = load i32, i32* %16, align 4
  %66 = call i64 @irt_isinteger(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %70 = load i32*, i32** %18, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @setintV(%struct.TYPE_19__* %69, i32 %71)
  br label %102

73:                                               ; preds = %58
  %74 = load i32, i32* %16, align 4
  %75 = call i64 @irt_isnum(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32*, i32** %18, align 8
  %79 = bitcast i32* %78 to i8**
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  br label %101

83:                                               ; preds = %73
  %84 = load i32, i32* %16, align 4
  %85 = call i64 @irt_ispri(i32 %84)
  %86 = icmp ne i64 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @lua_assert(i32 %88)
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %94 = load i32*, i32** %18, align 8
  %95 = bitcast i32* %94 to i64*
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i32*
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @irt_toitype(i32 %98)
  %100 = call i32 @setgcV(i32 %92, %struct.TYPE_19__* %93, i32* %97, i32 %99)
  br label %101

101:                                              ; preds = %83, %77
  br label %102

102:                                              ; preds = %101, %68
  br label %204

103:                                              ; preds = %53
  %104 = load i32, i32* %17, align 4
  %105 = call i64 @regsp_reg(i32 %104)
  store i64 %105, i64* %19, align 8
  %106 = load i64, i64* %19, align 8
  %107 = call i64 @ra_noreg(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %143

109:                                              ; preds = %103
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @IR_CONV, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @IRCONV_NUM_INT, align 8
  %120 = icmp eq i64 %118, %119
  br label %121

121:                                              ; preds = %115, %109
  %122 = phi i1 [ false, %109 ], [ %120, %115 ]
  %123 = zext i1 %122 to i32
  %124 = call i32 @lua_assert(i32 %123)
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  call void @snap_restoreval(%struct.TYPE_18__* %125, %struct.TYPE_21__* %126, %struct.TYPE_22__* %127, i32 %128, i32 %129, i64 %132, %struct.TYPE_19__* %133)
  %134 = load i64, i64* @LJ_DUALNUM, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %121
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %139 = call i64 @intV(%struct.TYPE_19__* %138)
  %140 = trunc i64 %139 to i32
  %141 = call i32 @setnumV(%struct.TYPE_19__* %137, i32 %140)
  br label %142

142:                                              ; preds = %136, %121
  br label %204

143:                                              ; preds = %103
  %144 = load i32, i32* %16, align 4
  %145 = call i64 @irt_isinteger(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %143
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  %151 = load i8**, i8*** %150, align 8
  %152 = load i64, i64* %19, align 8
  %153 = load i64, i64* @RID_MIN_GPR, align 8
  %154 = sub i64 %152, %153
  %155 = getelementptr inbounds i8*, i8** %151, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = ptrtoint i8* %156 to i32
  %158 = call i32 @setintV(%struct.TYPE_19__* %148, i32 %157)
  br label %202

159:                                              ; preds = %143
  %160 = load i32, i32* %16, align 4
  %161 = call i64 @irt_isnum(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %159
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* %19, align 8
  %169 = load i64, i64* @RID_MIN_FPR, align 8
  %170 = sub i64 %168, %169
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @setnumV(%struct.TYPE_19__* %164, i32 %172)
  br label %201

174:                                              ; preds = %159
  %175 = load i32, i32* %16, align 4
  %176 = call i64 @irt_ispri(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %174
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %180 = load i32, i32* %16, align 4
  %181 = call i32 @irt_toitype(i32 %180)
  %182 = call i32 @setpriV(%struct.TYPE_19__* %179, i32 %181)
  br label %200

183:                                              ; preds = %174
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  %190 = load i8**, i8*** %189, align 8
  %191 = load i64, i64* %19, align 8
  %192 = load i64, i64* @RID_MIN_GPR, align 8
  %193 = sub i64 %191, %192
  %194 = getelementptr inbounds i8*, i8** %190, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = bitcast i8* %195 to i32*
  %197 = load i32, i32* %16, align 4
  %198 = call i32 @irt_toitype(i32 %197)
  %199 = call i32 @setgcV(i32 %186, %struct.TYPE_19__* %187, i32* %196, i32 %198)
  br label %200

200:                                              ; preds = %183, %178
  br label %201

201:                                              ; preds = %200, %163
  br label %202

202:                                              ; preds = %201, %147
  br label %203

203:                                              ; preds = %202
  br label %204

204:                                              ; preds = %34, %142, %203, %102
  ret void
}

declare dso_local i64 @irref_isk(i64) #1

declare dso_local i32 @lj_ir_kvalue(i32, %struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i64 @LJ_UNLIKELY(i32) #1

declare dso_local i32 @bloomtest(i32, i64) #1

declare dso_local i32 @snap_renameref(%struct.TYPE_21__*, i32, i64, i32) #1

declare dso_local i64 @ra_hasspill(i64) #1

declare dso_local i64 @regsp_spill(i32) #1

declare dso_local i64 @irt_isinteger(i32) #1

declare dso_local i32 @setintV(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @irt_isnum(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @irt_ispri(i32) #1

declare dso_local i32 @setgcV(i32, %struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @irt_toitype(i32) #1

declare dso_local i64 @regsp_reg(i32) #1

declare dso_local i64 @ra_noreg(i64) #1

declare dso_local i32 @setnumV(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @intV(%struct.TYPE_19__*) #1

declare dso_local i32 @setpriV(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
