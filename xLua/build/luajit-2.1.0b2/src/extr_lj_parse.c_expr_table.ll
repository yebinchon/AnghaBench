; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_expr_table.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_expr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_55__ = type { i8, i32, %struct.TYPE_57__* }
%struct.TYPE_57__ = type { i64, i32, i32, %struct.TYPE_59__* }
%struct.TYPE_59__ = type { i8* }
%struct.TYPE_58__ = type { i64, %struct.TYPE_53__ }
%struct.TYPE_53__ = type { %struct.TYPE_51__, %struct.TYPE_50__ }
%struct.TYPE_51__ = type { i64 }
%struct.TYPE_50__ = type { %struct.TYPE_52__ }
%struct.TYPE_52__ = type { i32, i32 }
%struct.TYPE_56__ = type { i32, i32, i32 }
%struct.TYPE_54__ = type { i32 }

@BC_TNEW = common dso_local global i32 0, align 4
@VNONRELOC = common dso_local global i64 0, align 8
@TK_name = common dso_local global i8 0, align 1
@LJ_52 = common dso_local global i32 0, align 4
@TK_goto = common dso_local global i8 0, align 1
@VKNUM = common dso_local global i64 0, align 8
@VKNIL = common dso_local global i64 0, align 8
@VKSTR = common dso_local global i64 0, align 8
@LJ_TTAB = common dso_local global i32 0, align 4
@BC_TDUP = common dso_local global i32 0, align 4
@VCALL = common dso_local global i64 0, align 8
@BC_TSETV = common dso_local global i64 0, align 8
@BC_TSETB = common dso_local global i64 0, align 8
@BC_TSETM = common dso_local global i32 0, align 4
@VRELOCABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_55__*, %struct.TYPE_58__*)* @expr_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expr_table(%struct.TYPE_55__* %0, %struct.TYPE_58__* %1) #0 {
  %3 = alloca %struct.TYPE_55__*, align 8
  %4 = alloca %struct.TYPE_58__*, align 8
  %5 = alloca %struct.TYPE_57__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_56__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_58__, align 8
  %16 = alloca %struct.TYPE_58__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_59__*, align 8
  %21 = alloca %struct.TYPE_58__, align 8
  %22 = alloca i8**, align 8
  %23 = alloca %struct.TYPE_54__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_54__*, align 8
  store %struct.TYPE_55__* %0, %struct.TYPE_55__** %3, align 8
  store %struct.TYPE_58__* %1, %struct.TYPE_58__** %4, align 8
  %27 = load %struct.TYPE_55__*, %struct.TYPE_55__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_57__*, %struct.TYPE_57__** %28, align 8
  store %struct.TYPE_57__* %29, %struct.TYPE_57__** %5, align 8
  %30 = load %struct.TYPE_55__*, %struct.TYPE_55__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  store %struct.TYPE_56__* null, %struct.TYPE_56__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %33 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %13, align 8
  %36 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %37 = load i32, i32* @BC_TNEW, align 4
  %38 = load i64, i64* %13, align 8
  %39 = call i64 @bcemit_AD(%struct.TYPE_57__* %36, i32 %37, i64 %38, i32 0)
  store i64 %39, i64* %14, align 8
  %40 = load %struct.TYPE_58__*, %struct.TYPE_58__** %4, align 8
  %41 = load i64, i64* @VNONRELOC, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @expr_init(%struct.TYPE_58__* %40, i64 %41, i64 %42)
  %44 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %45 = call i32 @bcreg_reserve(%struct.TYPE_57__* %44, i32 1)
  %46 = load i64, i64* %13, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %13, align 8
  %48 = load %struct.TYPE_55__*, %struct.TYPE_55__** %3, align 8
  %49 = call i32 @lex_check(%struct.TYPE_55__* %48, i8 signext 123)
  br label %50

50:                                               ; preds = %233, %2
  %51 = load %struct.TYPE_55__*, %struct.TYPE_55__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 8
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 125
  br i1 %55, label %56, label %234

56:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  %57 = load %struct.TYPE_55__*, %struct.TYPE_55__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 8
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 91
  br i1 %61, label %62, label %84

62:                                               ; preds = %56
  %63 = load %struct.TYPE_55__*, %struct.TYPE_55__** %3, align 8
  %64 = call i32 @expr_bracket(%struct.TYPE_55__* %63, %struct.TYPE_58__* %15)
  %65 = call i64 @expr_isk(%struct.TYPE_58__* %15)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %69 = load %struct.TYPE_58__*, %struct.TYPE_58__** %4, align 8
  %70 = call i32 @expr_index(%struct.TYPE_57__* %68, %struct.TYPE_58__* %69, %struct.TYPE_58__* %15)
  br label %71

71:                                               ; preds = %67, %62
  %72 = call i64 @expr_isnumk(%struct.TYPE_58__* %15)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = call i64 @expr_numiszero(%struct.TYPE_58__* %15)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 1, i32* %9, align 4
  br label %81

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %78, %77
  %82 = load %struct.TYPE_55__*, %struct.TYPE_55__** %3, align 8
  %83 = call i32 @lex_check(%struct.TYPE_55__* %82, i8 signext 61)
  br label %125

84:                                               ; preds = %56
  %85 = load %struct.TYPE_55__*, %struct.TYPE_55__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %85, i32 0, i32 0
  %87 = load i8, i8* %86, align 8
  %88 = sext i8 %87 to i32
  %89 = load i8, i8* @TK_name, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %103, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* @LJ_52, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %115, label %95

95:                                               ; preds = %92
  %96 = load %struct.TYPE_55__*, %struct.TYPE_55__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %96, i32 0, i32 0
  %98 = load i8, i8* %97, align 8
  %99 = sext i8 %98 to i32
  %100 = load i8, i8* @TK_goto, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %95, %84
  %104 = load %struct.TYPE_55__*, %struct.TYPE_55__** %3, align 8
  %105 = call signext i8 @lj_lex_lookahead(%struct.TYPE_55__* %104)
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 61
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.TYPE_55__*, %struct.TYPE_55__** %3, align 8
  %110 = call i32 @expr_str(%struct.TYPE_55__* %109, %struct.TYPE_58__* %15)
  %111 = load %struct.TYPE_55__*, %struct.TYPE_55__** %3, align 8
  %112 = call i32 @lex_check(%struct.TYPE_55__* %111, i8 signext 61)
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %124

115:                                              ; preds = %103, %95, %92
  %116 = load i64, i64* @VKNUM, align 8
  %117 = call i32 @expr_init(%struct.TYPE_58__* %15, i64 %116, i64 0)
  %118 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %15, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %118, i32 0, i32 1
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @setintV(%struct.TYPE_50__* %119, i32 %120)
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %124

124:                                              ; preds = %115, %108
  br label %125

125:                                              ; preds = %124, %81
  %126 = load %struct.TYPE_55__*, %struct.TYPE_55__** %3, align 8
  %127 = call i32 @expr(%struct.TYPE_55__* %126, %struct.TYPE_58__* %16)
  %128 = call i64 @expr_isk(%struct.TYPE_58__* %15)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %201

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %15, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @VKNIL, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %201

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %15, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @VKSTR, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = call i64 @expr_isk_nojump(%struct.TYPE_58__* %16)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %201

143:                                              ; preds = %140, %135
  %144 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %145 = icmp ne %struct.TYPE_56__* %144, null
  br i1 %145, label %176, label %146

146:                                              ; preds = %143
  %147 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* %11, align 4
  br label %155

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i32 [ %153, %152 ], [ 0, %154 ]
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @hsize2hbits(i32 %157)
  %159 = call %struct.TYPE_56__* @lj_tab_new(i32 %149, i32 %156, i32 %158)
  store %struct.TYPE_56__* %159, %struct.TYPE_56__** %7, align 8
  %160 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %161 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %162 = call i32 @obj2gco(%struct.TYPE_56__* %161)
  %163 = load i32, i32* @LJ_TTAB, align 4
  %164 = call i64 @const_gc(%struct.TYPE_57__* %160, i32 %162, i32 %163)
  store i64 %164, i64* %19, align 8
  %165 = load i32, i32* @BC_TDUP, align 4
  %166 = load i64, i64* %13, align 8
  %167 = sub nsw i64 %166, 1
  %168 = load i64, i64* %19, align 8
  %169 = call i8* @BCINS_AD(i32 %165, i64 %167, i64 %168)
  %170 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_59__*, %struct.TYPE_59__** %171, align 8
  %173 = load i64, i64* %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %174, i32 0, i32 0
  store i8* %169, i8** %175, align 8
  br label %176

176:                                              ; preds = %155, %143
  store i32 0, i32* %8, align 4
  %177 = call i32 @expr_kvalue(i32* %17, %struct.TYPE_58__* %15)
  %178 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %182 = call i32* @lj_tab_set(i32 %180, %struct.TYPE_56__* %181, i32* %17)
  store i32* %182, i32** %18, align 8
  %183 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %187 = call i32 @lj_gc_anybarriert(i32 %185, %struct.TYPE_56__* %186)
  %188 = call i64 @expr_isk_nojump(%struct.TYPE_58__* %16)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %176
  %191 = load i32*, i32** %18, align 8
  %192 = call i32 @expr_kvalue(i32* %191, %struct.TYPE_58__* %16)
  br label %200

193:                                              ; preds = %176
  %194 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %18, align 8
  %198 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %199 = call i32 @settabV(i32 %196, i32* %197, %struct.TYPE_56__* %198)
  store i32 1, i32* %10, align 4
  br label %202

200:                                              ; preds = %190
  br label %221

201:                                              ; preds = %140, %130, %125
  br label %202

202:                                              ; preds = %201, %193
  %203 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %16, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @VCALL, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %209 = call i32 @expr_toanyreg(%struct.TYPE_57__* %208, %struct.TYPE_58__* %16)
  store i32 0, i32* %8, align 4
  br label %210

210:                                              ; preds = %207, %202
  %211 = call i64 @expr_isk(%struct.TYPE_58__* %15)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %215 = load %struct.TYPE_58__*, %struct.TYPE_58__** %4, align 8
  %216 = call i32 @expr_index(%struct.TYPE_57__* %214, %struct.TYPE_58__* %215, %struct.TYPE_58__* %15)
  br label %217

217:                                              ; preds = %213, %210
  %218 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %219 = load %struct.TYPE_58__*, %struct.TYPE_58__** %4, align 8
  %220 = call i32 @bcemit_store(%struct.TYPE_57__* %218, %struct.TYPE_58__* %219, %struct.TYPE_58__* %16)
  br label %221

221:                                              ; preds = %217, %200
  %222 = load i64, i64* %13, align 8
  %223 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %223, i32 0, i32 0
  store i64 %222, i64* %224, align 8
  %225 = load %struct.TYPE_55__*, %struct.TYPE_55__** %3, align 8
  %226 = call i32 @lex_opt(%struct.TYPE_55__* %225, i8 signext 44)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %221
  %229 = load %struct.TYPE_55__*, %struct.TYPE_55__** %3, align 8
  %230 = call i32 @lex_opt(%struct.TYPE_55__* %229, i8 signext 59)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  br label %234

233:                                              ; preds = %228, %221
  br label %50

234:                                              ; preds = %232, %50
  %235 = load %struct.TYPE_55__*, %struct.TYPE_55__** %3, align 8
  %236 = load i32, i32* %6, align 4
  %237 = call i32 @lex_match(%struct.TYPE_55__* %235, i8 signext 125, i8 signext 123, i32 %236)
  %238 = load i32, i32* %8, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %307

240:                                              ; preds = %234
  %241 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %241, i32 0, i32 3
  %243 = load %struct.TYPE_59__*, %struct.TYPE_59__** %242, align 8
  %244 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = sub nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %243, i64 %248
  store %struct.TYPE_59__* %249, %struct.TYPE_59__** %20, align 8
  %250 = load %struct.TYPE_59__*, %struct.TYPE_59__** %20, align 8
  %251 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = call i64 @bc_a(i8* %252)
  %254 = load i64, i64* %13, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %270

256:                                              ; preds = %240
  %257 = load %struct.TYPE_59__*, %struct.TYPE_59__** %20, align 8
  %258 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = call i64 @bc_op(i8* %259)
  %261 = load i32, i32* %11, align 4
  %262 = icmp sgt i32 %261, 256
  br i1 %262, label %263, label %265

263:                                              ; preds = %256
  %264 = load i64, i64* @BC_TSETV, align 8
  br label %267

265:                                              ; preds = %256
  %266 = load i64, i64* @BC_TSETB, align 8
  br label %267

267:                                              ; preds = %265, %263
  %268 = phi i64 [ %264, %263 ], [ %266, %265 ]
  %269 = icmp eq i64 %260, %268
  br label %270

270:                                              ; preds = %267, %240
  %271 = phi i1 [ false, %240 ], [ %269, %267 ]
  %272 = zext i1 %271 to i32
  %273 = call i32 @lua_assert(i32 %272)
  %274 = load i64, i64* @VKNUM, align 8
  %275 = call i32 @expr_init(%struct.TYPE_58__* %21, i64 %274, i64 0)
  %276 = load i32, i32* %11, align 4
  %277 = sub nsw i32 %276, 1
  %278 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %21, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %280, i32 0, i32 0
  store i32 %277, i32* %281, align 8
  %282 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %21, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %284, i32 0, i32 1
  store i32 1127219200, i32* %285, align 4
  %286 = load i32, i32* %11, align 4
  %287 = icmp sgt i32 %286, 256
  br i1 %287, label %288, label %295

288:                                              ; preds = %270
  %289 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = add nsw i32 %291, -1
  store i32 %292, i32* %290, align 8
  %293 = load %struct.TYPE_59__*, %struct.TYPE_59__** %20, align 8
  %294 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %293, i32 -1
  store %struct.TYPE_59__* %294, %struct.TYPE_59__** %20, align 8
  br label %295

295:                                              ; preds = %288, %270
  %296 = load i32, i32* @BC_TSETM, align 4
  %297 = load i64, i64* %13, align 8
  %298 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %299 = call i64 @const_num(%struct.TYPE_57__* %298, %struct.TYPE_58__* %21)
  %300 = call i8* @BCINS_AD(i32 %296, i64 %297, i64 %299)
  %301 = load %struct.TYPE_59__*, %struct.TYPE_59__** %20, align 8
  %302 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %301, i32 0, i32 0
  store i8* %300, i8** %302, align 8
  %303 = load %struct.TYPE_59__*, %struct.TYPE_59__** %20, align 8
  %304 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %303, i64 -1
  %305 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %304, i32 0, i32 0
  %306 = call i32 @setbc_b(i8** %305, i32 0)
  br label %307

307:                                              ; preds = %295, %234
  %308 = load i64, i64* %14, align 8
  %309 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = sub nsw i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = icmp eq i64 %308, %313
  br i1 %314, label %315, label %328

315:                                              ; preds = %307
  %316 = load i64, i64* %14, align 8
  %317 = load %struct.TYPE_58__*, %struct.TYPE_58__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %319, i32 0, i32 0
  store i64 %316, i64* %320, align 8
  %321 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = add nsw i64 %323, -1
  store i64 %324, i64* %322, align 8
  %325 = load i64, i64* @VRELOCABLE, align 8
  %326 = load %struct.TYPE_58__*, %struct.TYPE_58__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %326, i32 0, i32 0
  store i64 %325, i64* %327, align 8
  br label %332

328:                                              ; preds = %307
  %329 = load i64, i64* @VNONRELOC, align 8
  %330 = load %struct.TYPE_58__*, %struct.TYPE_58__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %330, i32 0, i32 0
  store i64 %329, i64* %331, align 8
  br label %332

332:                                              ; preds = %328, %315
  %333 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %334 = icmp ne %struct.TYPE_56__* %333, null
  br i1 %334, label %363, label %335

335:                                              ; preds = %332
  %336 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %336, i32 0, i32 3
  %338 = load %struct.TYPE_59__*, %struct.TYPE_59__** %337, align 8
  %339 = load i64, i64* %14, align 8
  %340 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %338, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %340, i32 0, i32 0
  store i8** %341, i8*** %22, align 8
  %342 = load i32, i32* %9, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %345, label %344

344:                                              ; preds = %335
  store i32 0, i32* %11, align 4
  br label %355

345:                                              ; preds = %335
  %346 = load i32, i32* %11, align 4
  %347 = icmp slt i32 %346, 3
  br i1 %347, label %348, label %349

348:                                              ; preds = %345
  store i32 3, i32* %11, align 4
  br label %354

349:                                              ; preds = %345
  %350 = load i32, i32* %11, align 4
  %351 = icmp sgt i32 %350, 2047
  br i1 %351, label %352, label %353

352:                                              ; preds = %349
  store i32 2047, i32* %11, align 4
  br label %353

353:                                              ; preds = %352, %349
  br label %354

354:                                              ; preds = %353, %348
  br label %355

355:                                              ; preds = %354, %344
  %356 = load i8**, i8*** %22, align 8
  %357 = load i32, i32* %11, align 4
  %358 = load i32, i32* %12, align 4
  %359 = call i32 @hsize2hbits(i32 %358)
  %360 = shl i32 %359, 11
  %361 = or i32 %357, %360
  %362 = call i32 @setbc_d(i8** %356, i32 %361)
  br label %425

363:                                              ; preds = %332
  %364 = load i32, i32* %9, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %380

366:                                              ; preds = %363
  %367 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* %11, align 4
  %371 = icmp slt i32 %369, %370
  br i1 %371, label %372, label %380

372:                                              ; preds = %366
  %373 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %377 = load i32, i32* %11, align 4
  %378 = sub nsw i32 %377, 1
  %379 = call i32 @lj_tab_reasize(i32 %375, %struct.TYPE_56__* %376, i32 %378)
  br label %380

380:                                              ; preds = %372, %366, %363
  %381 = load i32, i32* %10, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %420

383:                                              ; preds = %380
  %384 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = call %struct.TYPE_54__* @noderef(i32 %386)
  store %struct.TYPE_54__* %387, %struct.TYPE_54__** %23, align 8
  %388 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  store i32 %390, i32* %25, align 4
  store i32 0, i32* %24, align 4
  br label %391

391:                                              ; preds = %416, %383
  %392 = load i32, i32* %24, align 4
  %393 = load i32, i32* %25, align 4
  %394 = icmp sle i32 %392, %393
  br i1 %394, label %395, label %419

395:                                              ; preds = %391
  %396 = load %struct.TYPE_54__*, %struct.TYPE_54__** %23, align 8
  %397 = load i32, i32* %24, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %396, i64 %398
  store %struct.TYPE_54__* %399, %struct.TYPE_54__** %26, align 8
  %400 = load %struct.TYPE_54__*, %struct.TYPE_54__** %26, align 8
  %401 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %400, i32 0, i32 0
  %402 = call i64 @tvistab(i32* %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %415

404:                                              ; preds = %395
  %405 = load %struct.TYPE_54__*, %struct.TYPE_54__** %26, align 8
  %406 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %405, i32 0, i32 0
  %407 = call %struct.TYPE_56__* @tabV(i32* %406)
  %408 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %409 = icmp eq %struct.TYPE_56__* %407, %408
  %410 = zext i1 %409 to i32
  %411 = call i32 @lua_assert(i32 %410)
  %412 = load %struct.TYPE_54__*, %struct.TYPE_54__** %26, align 8
  %413 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %412, i32 0, i32 0
  %414 = call i32 @setnilV(i32* %413)
  br label %415

415:                                              ; preds = %404, %395
  br label %416

416:                                              ; preds = %415
  %417 = load i32, i32* %24, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %24, align 4
  br label %391

419:                                              ; preds = %391
  br label %420

420:                                              ; preds = %419, %380
  %421 = load %struct.TYPE_57__*, %struct.TYPE_57__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 4
  %424 = call i32 @lj_gc_check(i32 %423)
  br label %425

425:                                              ; preds = %420, %355
  ret void
}

declare dso_local i64 @bcemit_AD(%struct.TYPE_57__*, i32, i64, i32) #1

declare dso_local i32 @expr_init(%struct.TYPE_58__*, i64, i64) #1

declare dso_local i32 @bcreg_reserve(%struct.TYPE_57__*, i32) #1

declare dso_local i32 @lex_check(%struct.TYPE_55__*, i8 signext) #1

declare dso_local i32 @expr_bracket(%struct.TYPE_55__*, %struct.TYPE_58__*) #1

declare dso_local i64 @expr_isk(%struct.TYPE_58__*) #1

declare dso_local i32 @expr_index(%struct.TYPE_57__*, %struct.TYPE_58__*, %struct.TYPE_58__*) #1

declare dso_local i64 @expr_isnumk(%struct.TYPE_58__*) #1

declare dso_local i64 @expr_numiszero(%struct.TYPE_58__*) #1

declare dso_local signext i8 @lj_lex_lookahead(%struct.TYPE_55__*) #1

declare dso_local i32 @expr_str(%struct.TYPE_55__*, %struct.TYPE_58__*) #1

declare dso_local i32 @setintV(%struct.TYPE_50__*, i32) #1

declare dso_local i32 @expr(%struct.TYPE_55__*, %struct.TYPE_58__*) #1

declare dso_local i64 @expr_isk_nojump(%struct.TYPE_58__*) #1

declare dso_local %struct.TYPE_56__* @lj_tab_new(i32, i32, i32) #1

declare dso_local i32 @hsize2hbits(i32) #1

declare dso_local i64 @const_gc(%struct.TYPE_57__*, i32, i32) #1

declare dso_local i32 @obj2gco(%struct.TYPE_56__*) #1

declare dso_local i8* @BCINS_AD(i32, i64, i64) #1

declare dso_local i32 @expr_kvalue(i32*, %struct.TYPE_58__*) #1

declare dso_local i32* @lj_tab_set(i32, %struct.TYPE_56__*, i32*) #1

declare dso_local i32 @lj_gc_anybarriert(i32, %struct.TYPE_56__*) #1

declare dso_local i32 @settabV(i32, i32*, %struct.TYPE_56__*) #1

declare dso_local i32 @expr_toanyreg(%struct.TYPE_57__*, %struct.TYPE_58__*) #1

declare dso_local i32 @bcemit_store(%struct.TYPE_57__*, %struct.TYPE_58__*, %struct.TYPE_58__*) #1

declare dso_local i32 @lex_opt(%struct.TYPE_55__*, i8 signext) #1

declare dso_local i32 @lex_match(%struct.TYPE_55__*, i8 signext, i8 signext, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @bc_a(i8*) #1

declare dso_local i64 @bc_op(i8*) #1

declare dso_local i64 @const_num(%struct.TYPE_57__*, %struct.TYPE_58__*) #1

declare dso_local i32 @setbc_b(i8**, i32) #1

declare dso_local i32 @setbc_d(i8**, i32) #1

declare dso_local i32 @lj_tab_reasize(i32, %struct.TYPE_56__*, i32) #1

declare dso_local %struct.TYPE_54__* @noderef(i32) #1

declare dso_local i64 @tvistab(i32*) #1

declare dso_local %struct.TYPE_56__* @tabV(i32*) #1

declare dso_local i32 @setnilV(i32*) #1

declare dso_local i32 @lj_gc_check(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
