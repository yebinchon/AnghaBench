; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_snap.c_snap_unsink.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_snap.c_snap_unsink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32 }
%struct.TYPE_39__ = type { i32, %struct.TYPE_38__*, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_38__ = type { i64, i64, i64, i64, i32, i32 }
%struct.TYPE_37__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_40__ = type { i32 }

@IR_TNEW = common dso_local global i64 0, align 8
@IR_TDUP = common dso_local global i64 0, align 8
@IR_CNEW = common dso_local global i64 0, align 8
@IR_CNEWI = common dso_local global i64 0, align 8
@RID_SINK = common dso_local global i64 0, align 8
@IR_ASTORE = common dso_local global i64 0, align 8
@IR_HSTORE = common dso_local global i64 0, align 8
@IR_FSTORE = common dso_local global i64 0, align 8
@IR_FREF = common dso_local global i64 0, align 8
@IRFL_TAB_META = common dso_local global i64 0, align 8
@IR_KSLOT = common dso_local global i64 0, align 8
@LJ_SOFTFP = common dso_local global i64 0, align 8
@IR_HIOP = common dso_local global i64 0, align 8
@IR_ADD = common dso_local global i64 0, align 8
@IR_KINT = common dso_local global i64 0, align 8
@IR_KINT64 = common dso_local global i64 0, align 8
@IR_XSTORE = common dso_local global i64 0, align 8
@LJ_32 = common dso_local global i64 0, align 8
@LJ_64 = common dso_local global i64 0, align 8
@LJ_BE = common dso_local global i64 0, align 8
@LJ_LE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_36__*, %struct.TYPE_39__*, i32*, i64, i32, %struct.TYPE_38__*, %struct.TYPE_37__*)* @snap_unsink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snap_unsink(%struct.TYPE_36__* %0, %struct.TYPE_39__* %1, i32* %2, i64 %3, i32 %4, %struct.TYPE_38__* %5, %struct.TYPE_37__* %6) #0 {
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_39__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_38__*, align 8
  %14 = alloca %struct.TYPE_37__*, align 8
  %15 = alloca %struct.TYPE_38__*, align 8
  %16 = alloca %struct.TYPE_38__*, align 8
  %17 = alloca %struct.TYPE_40__*, align 8
  %18 = alloca %struct.TYPE_38__*, align 8
  %19 = alloca %struct.TYPE_37__, align 4
  %20 = alloca %struct.TYPE_37__*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %8, align 8
  store %struct.TYPE_39__* %1, %struct.TYPE_39__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_38__* %5, %struct.TYPE_38__** %13, align 8
  store %struct.TYPE_37__* %6, %struct.TYPE_37__** %14, align 8
  %21 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IR_TNEW, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %44, label %26

26:                                               ; preds = %7
  %27 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IR_TDUP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IR_CNEW, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IR_CNEWI, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %38, %32, %26, %7
  %45 = phi i1 [ true, %32 ], [ true, %26 ], [ true, %7 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @lua_assert(i32 %46)
  %48 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IR_TNEW, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %44
  %54 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call %struct.TYPE_40__* @lj_tab_new(i32 %56, i64 %59, i64 %62)
  br label %77

64:                                               ; preds = %44
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_38__*, %struct.TYPE_38__** %69, align 8
  %71 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %70, i64 %73
  %75 = call i32 @ir_ktab(%struct.TYPE_38__* %74)
  %76 = call %struct.TYPE_40__* @lj_tab_dup(i32 %67, i32 %75)
  br label %77

77:                                               ; preds = %64, %53
  %78 = phi %struct.TYPE_40__* [ %63, %53 ], [ %76, %64 ]
  store %struct.TYPE_40__* %78, %struct.TYPE_40__** %17, align 8
  %79 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %83 = load %struct.TYPE_40__*, %struct.TYPE_40__** %17, align 8
  %84 = call i32 @settabV(i32 %81, %struct.TYPE_37__* %82, %struct.TYPE_40__* %83)
  %85 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_38__*, %struct.TYPE_38__** %86, align 8
  %88 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_34__*, %struct.TYPE_34__** %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %87, i64 %94
  store %struct.TYPE_38__* %95, %struct.TYPE_38__** %16, align 8
  %96 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %96, i64 1
  store %struct.TYPE_38__* %97, %struct.TYPE_38__** %15, align 8
  br label %98

98:                                               ; preds = %254, %77
  %99 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %100 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %101 = icmp ult %struct.TYPE_38__* %99, %100
  br i1 %101, label %102, label %257

102:                                              ; preds = %98
  %103 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @RID_SINK, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %253

108:                                              ; preds = %102
  %109 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %110 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %111 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %112 = call i64 @snap_sunk_store(%struct.TYPE_39__* %109, %struct.TYPE_38__* %110, %struct.TYPE_38__* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %253

114:                                              ; preds = %108
  %115 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_38__*, %struct.TYPE_38__** %116, align 8
  %118 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %117, i64 %120
  store %struct.TYPE_38__* %121, %struct.TYPE_38__** %18, align 8
  %122 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @IR_ASTORE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %139, label %127

127:                                              ; preds = %114
  %128 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @IR_HSTORE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @IR_FSTORE, align 8
  %138 = icmp eq i64 %136, %137
  br label %139

139:                                              ; preds = %133, %127, %114
  %140 = phi i1 [ true, %127 ], [ true, %114 ], [ %138, %133 ]
  %141 = zext i1 %140 to i32
  %142 = call i32 @lua_assert(i32 %141)
  %143 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %144 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @IR_FREF, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %171

148:                                              ; preds = %139
  %149 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @IRFL_TAB_META, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @lua_assert(i32 %154)
  %156 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %157 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = load i64, i64* %11, align 8
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @snap_restoreval(%struct.TYPE_36__* %156, %struct.TYPE_39__* %157, i32* %158, i64 %159, i32 %160, i64 %163, %struct.TYPE_37__* %19)
  %165 = load %struct.TYPE_40__*, %struct.TYPE_40__** %17, align 8
  %166 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @tabV(%struct.TYPE_37__* %19)
  %169 = call i32 @obj2gco(i32 %168)
  %170 = call i32 @setgcref(i32 %167, i32 %169)
  br label %252

171:                                              ; preds = %139
  %172 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_38__*, %struct.TYPE_38__** %173, align 8
  %175 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %176 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %174, i64 %177
  store %struct.TYPE_38__* %178, %struct.TYPE_38__** %18, align 8
  %179 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %180 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @IR_KSLOT, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %171
  %185 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_38__*, %struct.TYPE_38__** %186, align 8
  %188 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %187, i64 %190
  store %struct.TYPE_38__* %191, %struct.TYPE_38__** %18, align 8
  br label %192

192:                                              ; preds = %184, %171
  %193 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %197 = call i32 @lj_ir_kvalue(i32 %195, %struct.TYPE_37__* %19, %struct.TYPE_38__* %196)
  %198 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_40__*, %struct.TYPE_40__** %17, align 8
  %202 = call %struct.TYPE_37__* @lj_tab_set(i32 %200, %struct.TYPE_40__* %201, %struct.TYPE_37__* %19)
  store %struct.TYPE_37__* %202, %struct.TYPE_37__** %20, align 8
  %203 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %204 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %205 = load i32*, i32** %10, align 8
  %206 = load i64, i64* %11, align 8
  %207 = load i32, i32* %12, align 4
  %208 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %209 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %212 = call i32 @snap_restoreval(%struct.TYPE_36__* %203, %struct.TYPE_39__* %204, i32* %205, i64 %206, i32 %207, i64 %210, %struct.TYPE_37__* %211)
  %213 = load i64, i64* @LJ_SOFTFP, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %251

215:                                              ; preds = %192
  %216 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %217 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %216, i64 1
  %218 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_38__*, %struct.TYPE_38__** %219, align 8
  %221 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %220, i64 %224
  %226 = icmp ult %struct.TYPE_38__* %217, %225
  br i1 %226, label %227, label %251

227:                                              ; preds = %215
  %228 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %229 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %228, i64 1
  %230 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @IR_HIOP, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %251

234:                                              ; preds = %227
  %235 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %236 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %237 = load i32*, i32** %10, align 8
  %238 = load i64, i64* %11, align 8
  %239 = load i32, i32* %12, align 4
  %240 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %240, i64 1
  %242 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @snap_restoreval(%struct.TYPE_36__* %235, %struct.TYPE_39__* %236, i32* %237, i64 %238, i32 %239, i64 %243, %struct.TYPE_37__* %19)
  %245 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %19, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %249 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %249, i32 0, i32 1
  store i32 %247, i32* %250, align 4
  br label %251

251:                                              ; preds = %234, %227, %215, %192
  br label %252

252:                                              ; preds = %251, %148
  br label %253

253:                                              ; preds = %252, %108, %102
  br label %254

254:                                              ; preds = %253
  %255 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %256 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %255, i32 1
  store %struct.TYPE_38__* %256, %struct.TYPE_38__** %15, align 8
  br label %98

257:                                              ; preds = %98
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local %struct.TYPE_40__* @lj_tab_new(i32, i64, i64) #1

declare dso_local %struct.TYPE_40__* @lj_tab_dup(i32, i32) #1

declare dso_local i32 @ir_ktab(%struct.TYPE_38__*) #1

declare dso_local i32 @settabV(i32, %struct.TYPE_37__*, %struct.TYPE_40__*) #1

declare dso_local i64 @snap_sunk_store(%struct.TYPE_39__*, %struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @snap_restoreval(%struct.TYPE_36__*, %struct.TYPE_39__*, i32*, i64, i32, i64, %struct.TYPE_37__*) #1

declare dso_local i32 @setgcref(i32, i32) #1

declare dso_local i32 @obj2gco(i32) #1

declare dso_local i32 @tabV(%struct.TYPE_37__*) #1

declare dso_local i32 @lj_ir_kvalue(i32, %struct.TYPE_37__*, %struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_37__* @lj_tab_set(i32, %struct.TYPE_40__*, %struct.TYPE_37__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
