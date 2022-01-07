; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_for_loop.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_for_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i8**, %struct.TYPE_15__, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_17__ = type { i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@FORL_IDX = common dso_local global i64 0, align 8
@LJ_DUALNUM = common dso_local global i64 0, align 8
@IRT_NUM = common dso_local global i64 0, align 8
@IRSLOAD_INHERIT = common dso_local global i32 0, align 4
@IRT_INT = common dso_local global i64 0, align 8
@IRSLOAD_READONLY = common dso_local global i32 0, align 4
@FORL_STOP = common dso_local global i64 0, align 8
@FORL_STEP = common dso_local global i64 0, align 8
@BC_FORI = common dso_local global i64 0, align 8
@BC_JFORI = common dso_local global i64 0, align 8
@IRSLOAD_TYPECHECK = common dso_local global i32 0, align 4
@IR_ADD = common dso_local global i32 0, align 4
@FORL_EXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32*, %struct.TYPE_17__*, i32)* @rec_for_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rec_for_loop(%struct.TYPE_16__* %0, i32* %1, %struct.TYPE_17__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @bc_a(i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %10, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @FORL_IDX, align 8
  %33 = add i64 %31, %32
  %34 = getelementptr inbounds i8*, i8** %30, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %4
  %39 = load i8*, i8** %11, align 8
  %40 = call i64 @tref_type(i8* %39)
  br label %55

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* @LJ_DUALNUM, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44, %41
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call i64 @lj_opt_narrow_forl(%struct.TYPE_16__* %48, i32* %49)
  br label %53

51:                                               ; preds = %44
  %52 = load i64, i64* @IRT_NUM, align 8
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i64 [ %50, %47 ], [ %52, %51 ]
  br label %55

55:                                               ; preds = %53, %38
  %56 = phi i64 [ %40, %38 ], [ %54, %53 ]
  store i64 %56, i64* %12, align 8
  %57 = load i32, i32* @IRSLOAD_INHERIT, align 4
  %58 = load i64, i64* @LJ_DUALNUM, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @tvisint(i32* %61)
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* @IRT_INT, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = icmp eq i32 %62, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60, %55
  %69 = load i32, i32* @IRSLOAD_READONLY, align 4
  br label %71

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  %73 = add nsw i32 %57, %72
  store i32 %73, i32* %13, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @FORL_STOP, align 8
  %78 = add i64 %76, %77
  %79 = load i64, i64* %12, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i8* @fori_arg(%struct.TYPE_16__* %74, i32* %75, i64 %78, i64 %79, i32 %80)
  store i8* %81, i8** %14, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @FORL_STEP, align 8
  %86 = add i64 %84, %85
  %87 = load i64, i64* %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i8* @fori_arg(%struct.TYPE_16__* %82, i32* %83, i64 %86, i64 %87, i32 %88)
  store i8* %89, i8** %15, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load i64, i64* @FORL_STEP, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = call i32 @rec_for_direction(i32* %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @bc_op(i32 %95)
  %97 = load i64, i64* @BC_FORI, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %71
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @bc_op(i32 %101)
  %103 = load i64, i64* @BC_JFORI, align 8
  %104 = icmp eq i64 %102, %103
  br label %105

105:                                              ; preds = %99, %71
  %106 = phi i1 [ true, %71 ], [ %104, %99 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @lua_assert(i32 %107)
  %109 = load i64, i64* %12, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  store i64 %109, i64* %112, align 8
  %113 = load i32, i32* %17, align 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = call i8* @tref_ref(i8* %116)
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 4
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** %15, align 8
  %121 = call i8* @tref_ref(i8* %120)
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load i32, i32* %17, align 4
  %127 = load i8*, i8** %14, align 8
  %128 = load i8*, i8** %15, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @rec_for_check(%struct.TYPE_16__* %124, i64 %125, i32 %126, i8* %127, i8* %128, i32 %129)
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* @FORL_IDX, align 8
  %135 = add i64 %133, %134
  %136 = load i64, i64* @IRT_INT, align 8
  %137 = call i8* @find_kinit(%struct.TYPE_16__* %131, i32* %132, i64 %135, i64 %136)
  %138 = call i8* @tref_ref(i8* %137)
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 5
  store i8* %138, i8** %140, align 8
  %141 = load i64, i64* @LJ_DUALNUM, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %172

143:                                              ; preds = %105
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 5
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %170

148:                                              ; preds = %143
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 4
  %151 = load i8*, i8** %150, align 8
  %152 = call i64 @irref_isk(i8* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %148
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 3
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @irref_isk(i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %154
  %161 = load i32*, i32** %10, align 8
  %162 = load i64, i64* @FORL_IDX, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = call i32 @tvisint(i32* %163)
  %165 = load i64, i64* %12, align 8
  %166 = load i64, i64* @IRT_INT, align 8
  %167 = icmp eq i64 %165, %166
  %168 = zext i1 %167 to i32
  %169 = icmp eq i32 %164, %168
  br i1 %169, label %172, label %170

170:                                              ; preds = %160, %154, %148, %143
  %171 = load i32, i32* @IRSLOAD_TYPECHECK, align 4
  br label %173

172:                                              ; preds = %160, %105
  br label %173

173:                                              ; preds = %172, %170
  %174 = phi i32 [ %171, %170 ], [ 0, %172 ]
  store i32 %174, i32* %16, align 4
  %175 = load i32, i32* %16, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %173
  %178 = load i8*, i8** %14, align 8
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 1
  %181 = load i8**, i8*** %180, align 8
  %182 = load i64, i64* %9, align 8
  %183 = load i64, i64* @FORL_STOP, align 8
  %184 = add i64 %182, %183
  %185 = getelementptr inbounds i8*, i8** %181, i64 %184
  store i8* %178, i8** %185, align 8
  %186 = load i8*, i8** %15, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 1
  %189 = load i8**, i8*** %188, align 8
  %190 = load i64, i64* %9, align 8
  %191 = load i64, i64* @FORL_STEP, align 8
  %192 = add i64 %190, %191
  %193 = getelementptr inbounds i8*, i8** %189, i64 %192
  store i8* %186, i8** %193, align 8
  br label %194

194:                                              ; preds = %177, %173
  %195 = load i8*, i8** %11, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %213, label %197

197:                                              ; preds = %194
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %199 = load i64, i64* %9, align 8
  %200 = load i64, i64* @FORL_IDX, align 8
  %201 = add i64 %199, %200
  %202 = load i64, i64* %12, align 8
  %203 = load i32, i32* @IRSLOAD_INHERIT, align 4
  %204 = load i32, i32* %16, align 4
  %205 = add nsw i32 %203, %204
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = shl i32 %209, 16
  %211 = add nsw i32 %205, %210
  %212 = call i8* @fori_load(%struct.TYPE_16__* %198, i64 %201, i64 %202, i32 %211)
  store i8* %212, i8** %11, align 8
  br label %213

213:                                              ; preds = %197, %194
  %214 = load i32, i32* %8, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %230, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* @IR_ADD, align 4
  %218 = load i64, i64* %12, align 8
  %219 = call i32 @IRT(i32 %217, i64 %218)
  %220 = load i8*, i8** %11, align 8
  %221 = load i8*, i8** %15, align 8
  %222 = call i8* @emitir(i32 %219, i8* %220, i8* %221)
  store i8* %222, i8** %11, align 8
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 1
  %225 = load i8**, i8*** %224, align 8
  %226 = load i64, i64* %9, align 8
  %227 = load i64, i64* @FORL_IDX, align 8
  %228 = add i64 %226, %227
  %229 = getelementptr inbounds i8*, i8** %225, i64 %228
  store i8* %222, i8** %229, align 8
  br label %230

230:                                              ; preds = %216, %213
  %231 = load i8*, i8** %11, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 1
  %234 = load i8**, i8*** %233, align 8
  %235 = load i64, i64* %9, align 8
  %236 = load i64, i64* @FORL_EXT, align 8
  %237 = add i64 %235, %236
  %238 = getelementptr inbounds i8*, i8** %234, i64 %237
  store i8* %231, i8** %238, align 8
  %239 = load i8*, i8** %11, align 8
  %240 = call i8* @tref_ref(i8* %239)
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 2
  store i8* %240, i8** %242, align 8
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %6, align 8
  %247 = call i32 @setmref(i32 %245, i32* %246)
  %248 = load i64, i64* %9, align 8
  %249 = load i64, i64* @FORL_EXT, align 8
  %250 = add i64 %248, %249
  %251 = add i64 %250, 1
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 0
  store i64 %251, i64* %253, align 8
  ret void
}

declare dso_local i64 @bc_a(i32) #1

declare dso_local i64 @tref_type(i8*) #1

declare dso_local i64 @lj_opt_narrow_forl(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @tvisint(i32*) #1

declare dso_local i8* @fori_arg(%struct.TYPE_16__*, i32*, i64, i64, i32) #1

declare dso_local i32 @rec_for_direction(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @bc_op(i32) #1

declare dso_local i8* @tref_ref(i8*) #1

declare dso_local i32 @rec_for_check(%struct.TYPE_16__*, i64, i32, i8*, i8*, i32) #1

declare dso_local i8* @find_kinit(%struct.TYPE_16__*, i32*, i64, i64) #1

declare dso_local i64 @irref_isk(i8*) #1

declare dso_local i8* @fori_load(%struct.TYPE_16__*, i64, i64, i32) #1

declare dso_local i8* @emitir(i32, i8*, i8*) #1

declare dso_local i32 @IRT(i32, i64) #1

declare dso_local i32 @setmref(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
