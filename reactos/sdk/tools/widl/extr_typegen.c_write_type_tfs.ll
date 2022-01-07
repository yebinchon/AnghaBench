; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_type_tfs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_type_tfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }

@TDT_ALL_TYPES = common dso_local global i32 0, align 4
@TYPE_CONTEXT_TOPLEVELPARAM = common dso_local global i32 0, align 4
@TYPE_CONTEXT_CONTAINER = common dso_local global i32 0, align 4
@TYPE_CONTEXT_CONTAINER_NO_POINTERS = common dso_local global i32 0, align 4
@FC_RP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/* %d */\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"0x%x, 0x0,\09/* %s */\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"NdrFcShort(0x%hx),\09/* Offset= %hd (%u) */\0A\00", align 1
@ATTR_RANGE = common dso_local global i32 0, align 4
@TYPE_CONTEXT_PARAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"invalid type %s for var %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, %struct.TYPE_25__*, i8*, i32, i32*)* @write_type_tfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_type_tfs(i32* %0, i32 %1, i32* %2, %struct.TYPE_25__* %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i16, align 2
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_25__*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* @TDT_ALL_TYPES, align 4
  %27 = call i32 @typegen_detect_type(%struct.TYPE_25__* %24, i32* %25, i32 %26)
  switch i32 %27, label %256 [
    i32 138, label %28
    i32 137, label %28
    i32 128, label %38
    i32 131, label %43
    i32 140, label %51
    i32 130, label %146
    i32 129, label %152
    i32 136, label %158
    i32 139, label %158
    i32 132, label %159
    i32 135, label %176
    i32 133, label %182
    i32 134, label %255
  ]

28:                                               ; preds = %7, %7
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @TYPE_CONTEXT_TOPLEVELPARAM, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32*, i32** %15, align 8
  %37 = call i32 @write_contexthandle_tfs(i32* %29, i32* %30, %struct.TYPE_25__* %31, i32 %35, i32* %36)
  store i32 %37, i32* %8, align 4
  br label %262

38:                                               ; preds = %7
  %39 = load i32*, i32** %9, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @write_user_tfs(i32* %39, %struct.TYPE_25__* %40, i32* %41)
  store i32 %42, i32* %8, align 4
  br label %262

43:                                               ; preds = %7
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = call i32 @write_string_tfs(i32* %44, i32* %45, %struct.TYPE_25__* %46, i32 %47, i8* %48, i32* %49)
  store i32 %50, i32* %8, align 4
  br label %262

51:                                               ; preds = %7
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @TYPE_CONTEXT_CONTAINER, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @TYPE_CONTEXT_CONTAINER_NO_POINTERS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %55, %51
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %61 = call i32 @is_conformant_array(%struct.TYPE_25__* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %65 = call i32 @type_array_is_decl_as_ptr(%struct.TYPE_25__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63, %59, %55
  %68 = load i32*, i32** %9, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = call i32 @write_array_tfs(i32* %68, i32* %69, %struct.TYPE_25__* %70, i8* %71, i32* %72)
  store i32 %73, i32* %17, align 4
  br label %75

74:                                               ; preds = %63
  store i32 0, i32* %17, align 4
  br label %75

75:                                               ; preds = %74, %67
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @TYPE_CONTEXT_CONTAINER, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %144

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @TYPE_CONTEXT_CONTAINER_NO_POINTERS, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %144

83:                                               ; preds = %79
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @TYPE_CONTEXT_TOPLEVELPARAM, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @get_pointer_fc(%struct.TYPE_25__* %84, i32* %85, i32 %89)
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* @FC_RP, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %83
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %96 = call i32 @type_array_is_decl_as_ptr(%struct.TYPE_25__* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %138

98:                                               ; preds = %94, %83
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %19, align 4
  %103 = load i32*, i32** %15, align 8
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %104, 2
  %106 = sub i32 %102, %105
  %107 = trunc i32 %106 to i16
  store i16 %107, i16* %20, align 2
  %108 = load i32*, i32** %15, align 8
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %17, align 4
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %17, align 4
  %112 = trunc i32 %111 to i16
  %113 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %110, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i16 signext %112)
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %18, align 4
  %116 = trunc i32 %115 to i16
  %117 = load i32, i32* %18, align 4
  %118 = call i32 @string_of_type(i32 %117)
  %119 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %114, i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i16 signext %116, i32 %118)
  %120 = load i32*, i32** %9, align 8
  %121 = load i16, i16* %20, align 2
  %122 = load i16, i16* %20, align 2
  %123 = sext i16 %122 to i32
  %124 = load i32, i32* %19, align 4
  %125 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %120, i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i16 signext %121, i32 %123, i32 %124)
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* @FC_RP, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %98
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %131 = load i32, i32* %17, align 4
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @update_tfsoff(%struct.TYPE_25__* %130, i32 %131, i32* %132)
  br label %134

134:                                              ; preds = %129, %98
  %135 = load i32*, i32** %15, align 8
  %136 = load i32, i32* %135, align 4
  %137 = add i32 %136, 4
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %134, %94
  %139 = load i32, i32* %17, align 4
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  store i32 %139, i32* %143, align 4
  br label %144

144:                                              ; preds = %138, %79, %75
  %145 = load i32, i32* %17, align 4
  store i32 %145, i32* %8, align 4
  br label %262

146:                                              ; preds = %7
  %147 = load i32*, i32** %9, align 8
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %149 = load i8*, i8** %13, align 8
  %150 = load i32*, i32** %15, align 8
  %151 = call i32 @write_struct_tfs(i32* %147, %struct.TYPE_25__* %148, i8* %149, i32* %150)
  store i32 %151, i32* %8, align 4
  br label %262

152:                                              ; preds = %7
  %153 = load i32*, i32** %9, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %156 = load i32*, i32** %15, align 8
  %157 = call i32 @write_union_tfs(i32* %153, i32* %154, %struct.TYPE_25__* %155, i32* %156)
  store i32 %157, i32* %8, align 4
  br label %262

158:                                              ; preds = %7, %7
  store i32 0, i32* %8, align 4
  br label %262

159:                                              ; preds = %7
  %160 = load i32*, i32** %11, align 8
  %161 = load i32, i32* @ATTR_RANGE, align 4
  %162 = call i32* @get_attrp(i32* %160, i32 %161)
  store i32* %162, i32** %21, align 8
  %163 = load i32*, i32** %21, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %159
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %167 = load i32, i32* @ATTR_RANGE, align 4
  %168 = call i32* @get_aliaschain_attrp(%struct.TYPE_25__* %166, i32 %167)
  store i32* %168, i32** %21, align 8
  br label %169

169:                                              ; preds = %165, %159
  %170 = load i32*, i32** %9, align 8
  %171 = load i32*, i32** %11, align 8
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %173 = load i32*, i32** %21, align 8
  %174 = load i32*, i32** %15, align 8
  %175 = call i32 @write_range_tfs(i32* %170, i32* %171, %struct.TYPE_25__* %172, i32* %173, i32* %174)
  store i32 %175, i32* %8, align 4
  br label %262

176:                                              ; preds = %7
  %177 = load i32*, i32** %9, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %180 = load i32*, i32** %15, align 8
  %181 = call i32 @write_ip_tfs(i32* %177, i32* %178, %struct.TYPE_25__* %179, i32* %180)
  store i32 %181, i32* %8, align 4
  br label %262

182:                                              ; preds = %7
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %184 = call %struct.TYPE_25__* @type_pointer_get_ref(%struct.TYPE_25__* %183)
  store %struct.TYPE_25__* %184, %struct.TYPE_25__** %23, align 8
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* @TYPE_CONTEXT_TOPLEVELPARAM, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = load i32, i32* @TYPE_CONTEXT_PARAM, align 4
  store i32 %189, i32* %22, align 4
  br label %199

190:                                              ; preds = %182
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* @TYPE_CONTEXT_CONTAINER_NO_POINTERS, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i32, i32* @TYPE_CONTEXT_CONTAINER, align 4
  store i32 %195, i32* %22, align 4
  br label %198

196:                                              ; preds = %190
  %197 = load i32, i32* %14, align 4
  store i32 %197, i32* %22, align 4
  br label %198

198:                                              ; preds = %196, %194
  br label %199

199:                                              ; preds = %198, %188
  %200 = load i32*, i32** %11, align 8
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %202 = call i32 @is_string_type(i32* %200, %struct.TYPE_25__* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %233

204:                                              ; preds = %199
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* @TYPE_CONTEXT_CONTAINER_NO_POINTERS, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %218

208:                                              ; preds = %204
  %209 = load i32*, i32** %9, align 8
  %210 = load i32*, i32** %11, align 8
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %212 = load i32*, i32** %15, align 8
  %213 = load i32, i32* %212, align 4
  %214 = add i32 %213, 4
  %215 = load i32, i32* %14, align 4
  %216 = load i32*, i32** %15, align 8
  %217 = call i32 @write_pointer_tfs(i32* %209, i32* %210, %struct.TYPE_25__* %211, i32 %214, i32 %215, i32* %216)
  br label %218

218:                                              ; preds = %208, %204
  %219 = load i32*, i32** %9, align 8
  %220 = load i32, i32* %10, align 4
  %221 = load i32*, i32** %11, align 8
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %223 = load i8*, i8** %13, align 8
  %224 = load i32, i32* %22, align 4
  %225 = load i32*, i32** %15, align 8
  %226 = call i32 @write_type_tfs(i32* %219, i32 %220, i32* %221, %struct.TYPE_25__* %222, i8* %223, i32 %224, i32* %225)
  store i32 %226, i32* %16, align 4
  %227 = load i32, i32* %14, align 4
  %228 = load i32, i32* @TYPE_CONTEXT_CONTAINER_NO_POINTERS, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %218
  store i32 0, i32* %8, align 4
  br label %262

231:                                              ; preds = %218
  %232 = load i32, i32* %16, align 4
  store i32 %232, i32* %8, align 4
  br label %262

233:                                              ; preds = %199
  %234 = load i32*, i32** %9, align 8
  %235 = load i32, i32* %10, align 4
  %236 = load i32*, i32** %11, align 8
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %238 = call %struct.TYPE_25__* @type_pointer_get_ref(%struct.TYPE_25__* %237)
  %239 = load i8*, i8** %13, align 8
  %240 = load i32, i32* %22, align 4
  %241 = load i32*, i32** %15, align 8
  %242 = call i32 @write_type_tfs(i32* %234, i32 %235, i32* %236, %struct.TYPE_25__* %238, i8* %239, i32 %240, i32* %241)
  store i32 %242, i32* %16, align 4
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* @TYPE_CONTEXT_CONTAINER_NO_POINTERS, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %233
  store i32 0, i32* %8, align 4
  br label %262

247:                                              ; preds = %233
  %248 = load i32*, i32** %9, align 8
  %249 = load i32*, i32** %11, align 8
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %251 = load i32, i32* %16, align 4
  %252 = load i32, i32* %14, align 4
  %253 = load i32*, i32** %15, align 8
  %254 = call i32 @write_pointer_tfs(i32* %248, i32* %249, %struct.TYPE_25__* %250, i32 %251, i32 %252, i32* %253)
  store i32 %254, i32* %8, align 4
  br label %262

255:                                              ; preds = %7
  br label %256

256:                                              ; preds = %7, %255
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i8*, i8** %13, align 8
  %261 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %259, i8* %260)
  store i32 0, i32* %8, align 4
  br label %262

262:                                              ; preds = %256, %247, %246, %231, %230, %176, %169, %158, %152, %146, %144, %43, %38, %28
  %263 = load i32, i32* %8, align 4
  ret i32 %263
}

declare dso_local i32 @typegen_detect_type(%struct.TYPE_25__*, i32*, i32) #1

declare dso_local i32 @write_contexthandle_tfs(i32*, i32*, %struct.TYPE_25__*, i32, i32*) #1

declare dso_local i32 @write_user_tfs(i32*, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @write_string_tfs(i32*, i32*, %struct.TYPE_25__*, i32, i8*, i32*) #1

declare dso_local i32 @is_conformant_array(%struct.TYPE_25__*) #1

declare dso_local i32 @type_array_is_decl_as_ptr(%struct.TYPE_25__*) #1

declare dso_local i32 @write_array_tfs(i32*, i32*, %struct.TYPE_25__*, i8*, i32*) #1

declare dso_local i32 @get_pointer_fc(%struct.TYPE_25__*, i32*, i32) #1

declare dso_local i32 @print_file(i32*, i32, i8*, i16 signext, ...) #1

declare dso_local i32 @string_of_type(i32) #1

declare dso_local i32 @update_tfsoff(%struct.TYPE_25__*, i32, i32*) #1

declare dso_local i32 @write_struct_tfs(i32*, %struct.TYPE_25__*, i8*, i32*) #1

declare dso_local i32 @write_union_tfs(i32*, i32*, %struct.TYPE_25__*, i32*) #1

declare dso_local i32* @get_attrp(i32*, i32) #1

declare dso_local i32* @get_aliaschain_attrp(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @write_range_tfs(i32*, i32*, %struct.TYPE_25__*, i32*, i32*) #1

declare dso_local i32 @write_ip_tfs(i32*, i32*, %struct.TYPE_25__*, i32*) #1

declare dso_local %struct.TYPE_25__* @type_pointer_get_ref(%struct.TYPE_25__*) #1

declare dso_local i32 @is_string_type(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @write_pointer_tfs(i32*, i32*, %struct.TYPE_25__*, i32, i32, i32*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
