; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_spell.c_suggest_load_files.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_spell.c_suggest_load_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32, i32*, i64, i64 }
%struct.TYPE_16__ = type { i64, i64 }

@MAXWLEN = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_17__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c".spl\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".sug\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@VIMSUGMAGICL = common dso_local global i32 0, align 4
@VIMSUGMAGIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"E778: This does not look like a .sug file: %s\00", align 1
@VIMSUGVERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"E779: Old .sug file, needs to be updated: %s\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"E780: .sug file is for newer version of Vim: %s\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"E781: .sug file doesn't match .spl file: %s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"E782: error while reading .sug file: %s\00", align 1
@FAIL = common dso_local global i64 0, align 8
@NUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @suggest_load_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @suggest_load_files() #0 {
  %1 = alloca %struct.TYPE_15__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca i32, align 4
  %14 = load i32, i32* @MAXWLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %248, %0
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %19, %25
  br i1 %26, label %27, label %251

27:                                               ; preds = %18
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %2, align 4
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_15__* @LANGP_ENTRY(i32 %34, i32 %32)
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %1, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %3, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %247

43:                                               ; preds = %27
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %247, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* @TRUE, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 7
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = call i32* @vim_strrchr(i64 %54, i8 signext 46)
  store i32* %55, i32** %4, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %48
  %59 = load i32*, i32** %4, align 8
  %60 = call i64 @fnamecmp(i32* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %48
  br label %248

63:                                               ; preds = %58
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @STRCPY(i32* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32* @mch_fopen(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %70, i32** %5, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %238

74:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %86, %74
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @VIMSUGMAGICL, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load i32*, i32** %5, align 8
  %81 = call i8* @getc(i32* %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %17, i64 %84
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %75

89:                                               ; preds = %75
  %90 = load i32, i32* @VIMSUGMAGIC, align 4
  %91 = load i32, i32* @VIMSUGMAGICL, align 4
  %92 = call i64 @STRNCMP(i32* %17, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @EMSG2(i32 %95, i64 %98)
  br label %238

100:                                              ; preds = %89
  %101 = load i32*, i32** %5, align 8
  %102 = call i8* @getc(i32* %101)
  %103 = ptrtoint i8* %102 to i32
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @VIMSUGVERSION, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @EMSG2(i32 %108, i64 %111)
  br label %238

113:                                              ; preds = %100
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @VIMSUGVERSION, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @EMSG2(i32 %118, i64 %121)
  br label %238

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123
  %125 = load i32*, i32** %5, align 8
  %126 = call i64 @get8ctime(i32* %125)
  store i64 %126, i64* %9, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @EMSG2(i32 %133, i64 %136)
  br label %238

138:                                              ; preds = %124
  %139 = load i32*, i32** %5, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = load i32, i32* @FALSE, align 4
  %145 = call i64 @spell_read_tree(i32* %139, i32* %141, i32* %143, i32 %144, i32 0)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %138
  br label %148

148:                                              ; preds = %217, %189, %170, %164, %147
  %149 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @EMSG2(i32 %149, i64 %152)
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %155 = call i32 @slang_clear_sug(%struct.TYPE_14__* %154)
  br label %238

156:                                              ; preds = %138
  %157 = call i32* (...) @open_spellbuf()
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 5
  store i32* %157, i32** %159, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 5
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  br label %148

165:                                              ; preds = %156
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 @get4c(i32* %166)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %148

171:                                              ; preds = %165
  %172 = call i32 @ga_init2(%struct.TYPE_16__* %12, i32 1, i32 100)
  store i32 0, i32* %11, align 4
  br label %173

173:                                              ; preds = %219, %171
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %222

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %203, %177
  %180 = load i32*, i32** %5, align 8
  %181 = call i8* @getc(i32* %180)
  %182 = ptrtoint i8* %181 to i32
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %179
  %186 = call i64 @ga_grow(%struct.TYPE_16__* %12, i32 1)
  %187 = load i64, i64* @FAIL, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %185, %179
  br label %148

190:                                              ; preds = %185
  %191 = load i32, i32* %13, align 4
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to i32*
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %195, align 8
  %198 = getelementptr inbounds i32, i32* %194, i64 %196
  store i32 %191, i32* %198, align 4
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* @NUL, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %190
  br label %204

203:                                              ; preds = %190
  br label %179

204:                                              ; preds = %202
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 5
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %11, align 4
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @TRUE, align 8
  %214 = call i64 @ml_append_buf(i32* %207, i32 %208, i64 %210, i64 %212, i64 %213)
  %215 = load i64, i64* @FAIL, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %204
  br label %148

218:                                              ; preds = %204
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %11, align 4
  br label %173

222:                                              ; preds = %173
  %223 = call i32 @ga_clear(%struct.TYPE_16__* %12)
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @tree_count_words(i32 %226, i32 %229)
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @tree_count_words(i32 %233, i32 %236)
  br label %238

238:                                              ; preds = %222, %148, %132, %117, %107, %94, %73
  %239 = load i32*, i32** %5, align 8
  %240 = icmp ne i32* %239, null
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load i32*, i32** %5, align 8
  %243 = call i32 @fclose(i32* %242)
  br label %244

244:                                              ; preds = %241, %238
  %245 = load i32*, i32** %4, align 8
  %246 = call i32 @STRCPY(i32* %245, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %247

247:                                              ; preds = %244, %43, %27
  br label %248

248:                                              ; preds = %247, %62
  %249 = load i32, i32* %2, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %2, align 4
  br label %18

251:                                              ; preds = %18
  %252 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %252)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_15__* @LANGP_ENTRY(i32, i32) #2

declare dso_local i32* @vim_strrchr(i64, i8 signext) #2

declare dso_local i64 @fnamecmp(i32*, i8*) #2

declare dso_local i32 @STRCPY(i32*, i8*) #2

declare dso_local i32* @mch_fopen(i8*, i8*) #2

declare dso_local i8* @getc(i32*) #2

declare dso_local i64 @STRNCMP(i32*, i32, i32) #2

declare dso_local i32 @EMSG2(i32, i64) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @get8ctime(i32*) #2

declare dso_local i64 @spell_read_tree(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @slang_clear_sug(%struct.TYPE_14__*) #2

declare dso_local i32* @open_spellbuf(...) #2

declare dso_local i32 @get4c(i32*) #2

declare dso_local i32 @ga_init2(%struct.TYPE_16__*, i32, i32) #2

declare dso_local i64 @ga_grow(%struct.TYPE_16__*, i32) #2

declare dso_local i64 @ml_append_buf(i32*, i32, i64, i64, i64) #2

declare dso_local i32 @ga_clear(%struct.TYPE_16__*) #2

declare dso_local i32 @tree_count_words(i32, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
