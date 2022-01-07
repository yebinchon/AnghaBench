; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_script.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_31__*, %struct.TYPE_27__*, %struct.TYPE_29__* }
%struct.TYPE_31__ = type { %struct.TYPE_31__*, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { %struct.TYPE_27__* }
%struct.TYPE_29__ = type { %struct.TYPE_29__* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_28__* }
%struct.TYPE_32__ = type { %struct.TYPE_32__* }
%struct.TYPE_30__ = type { %struct.TYPE_25__*, %struct.TYPE_31__*, %struct.TYPE_27__*, %struct.TYPE_29__*, %struct.TYPE_24__, %struct.TYPE_28__*, i32*, i32*, i64, i64, i32*, i32* }
%struct.TYPE_24__ = type { %struct.TYPE_32__*, i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@vbscript_disas = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compile_script(%struct.TYPE_26__* %0, i32* %1, i32* %2, %struct.TYPE_25__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_25__**, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca %struct.TYPE_30__, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_25__** %3, %struct.TYPE_25__*** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @parse_script(%struct.TYPE_24__* %18, i32* %19, i32* %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %5, align 4
  br label %219

27:                                               ; preds = %4
  %28 = load i32*, i32** %7, align 8
  %29 = call %struct.TYPE_25__* @alloc_vbscode(%struct.TYPE_30__* %13, i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  store %struct.TYPE_25__* %29, %struct.TYPE_25__** %30, align 8
  store %struct.TYPE_25__* %29, %struct.TYPE_25__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  %33 = icmp ne %struct.TYPE_25__* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %35, i32* %5, align 4
  br label %219

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 2
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 5
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 3
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 1
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 11
  store i32* null, i32** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 7
  store i32* null, i32** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 10
  store i32* null, i32** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 8
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 9
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 1
  %52 = call i32 @compile_func(%struct.TYPE_30__* %13, i32 %48, i32* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i64 @FAILED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %36
  %57 = call i32 @release_compiler(%struct.TYPE_30__* %13)
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %5, align 4
  br label %219

59:                                               ; preds = %36
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 6
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 7
  store i32* %61, i32** %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 5
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %63, align 8
  store %struct.TYPE_28__* %64, %struct.TYPE_28__** %11, align 8
  br label %65

65:                                               ; preds = %84, %59
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %67 = icmp ne %struct.TYPE_28__* %66, null
  br i1 %67, label %68, label %88

68:                                               ; preds = %65
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %70 = call i32 @create_function(%struct.TYPE_30__* %13, %struct.TYPE_28__* %69, %struct.TYPE_27__** %10)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i64 @FAILED(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = call i32 @release_compiler(%struct.TYPE_30__* %13)
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %5, align 4
  br label %219

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 2
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %78, align 8
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 0
  store %struct.TYPE_27__* %79, %struct.TYPE_27__** %81, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 2
  store %struct.TYPE_27__* %82, %struct.TYPE_27__** %83, align 8
  br label %84

84:                                               ; preds = %77
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %86, align 8
  store %struct.TYPE_28__* %87, %struct.TYPE_28__** %11, align 8
  br label %65

88:                                               ; preds = %65
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %90, align 8
  store %struct.TYPE_32__* %91, %struct.TYPE_32__** %12, align 8
  br label %92

92:                                               ; preds = %105, %88
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %94 = icmp ne %struct.TYPE_32__* %93, null
  br i1 %94, label %95, label %109

95:                                               ; preds = %92
  %96 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %97 = call i32 @compile_class(%struct.TYPE_30__* %13, %struct.TYPE_32__* %96)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = call i64 @FAILED(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = call i32 @release_compiler(%struct.TYPE_30__* %13)
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %5, align 4
  br label %219

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %107, align 8
  store %struct.TYPE_32__* %108, %struct.TYPE_32__** %12, align 8
  br label %92

109:                                              ; preds = %92
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %111 = call i32 @check_script_collisions(%struct.TYPE_30__* %13, %struct.TYPE_26__* %110)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = call i64 @FAILED(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = call i32 @release_compiler(%struct.TYPE_30__* %13)
  %117 = load i32, i32* %15, align 4
  store i32 %117, i32* %5, align 4
  br label %219

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 3
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %119, align 8
  %121 = icmp ne %struct.TYPE_29__* %120, null
  br i1 %121, label %122, label %145

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 3
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %123, align 8
  store %struct.TYPE_29__* %124, %struct.TYPE_29__** %16, align 8
  br label %125

125:                                              ; preds = %131, %122
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %127, align 8
  %129 = icmp ne %struct.TYPE_29__* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %133, align 8
  store %struct.TYPE_29__* %134, %struct.TYPE_29__** %16, align 8
  br label %125

135:                                              ; preds = %125
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %137, align 8
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 0
  store %struct.TYPE_29__* %138, %struct.TYPE_29__** %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 3
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %141, align 8
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 3
  store %struct.TYPE_29__* %142, %struct.TYPE_29__** %144, align 8
  br label %145

145:                                              ; preds = %135, %118
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 2
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %146, align 8
  %148 = icmp ne %struct.TYPE_27__* %147, null
  br i1 %148, label %149, label %172

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 2
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %150, align 8
  store %struct.TYPE_27__* %151, %struct.TYPE_27__** %10, align 8
  br label %152

152:                                              ; preds = %158, %149
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %154, align 8
  %156 = icmp ne %struct.TYPE_27__* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %157
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %160, align 8
  store %struct.TYPE_27__* %161, %struct.TYPE_27__** %10, align 8
  br label %152

162:                                              ; preds = %152
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %164, align 8
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 0
  store %struct.TYPE_27__* %165, %struct.TYPE_27__** %167, align 8
  %168 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 2
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %168, align 8
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 2
  store %struct.TYPE_27__* %169, %struct.TYPE_27__** %171, align 8
  br label %172

172:                                              ; preds = %162, %145
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 1
  %174 = load %struct.TYPE_31__*, %struct.TYPE_31__** %173, align 8
  %175 = icmp ne %struct.TYPE_31__* %174, null
  br i1 %175, label %176, label %202

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 1
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %177, align 8
  store %struct.TYPE_31__* %178, %struct.TYPE_31__** %17, align 8
  br label %179

179:                                              ; preds = %176, %188
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %181, i32 0, i32 1
  store %struct.TYPE_26__* %180, %struct.TYPE_26__** %182, align 8
  %183 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %184 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %184, align 8
  %186 = icmp ne %struct.TYPE_31__* %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %179
  br label %192

188:                                              ; preds = %179
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_31__*, %struct.TYPE_31__** %190, align 8
  store %struct.TYPE_31__* %191, %struct.TYPE_31__** %17, align 8
  br label %179

192:                                              ; preds = %187
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %194, align 8
  %196 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %196, i32 0, i32 0
  store %struct.TYPE_31__* %195, %struct.TYPE_31__** %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 1
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %198, align 8
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 1
  store %struct.TYPE_31__* %199, %struct.TYPE_31__** %201, align 8
  br label %202

202:                                              ; preds = %192, %172
  %203 = load i32, i32* @vbscript_disas, align 4
  %204 = call i64 @TRACE_ON(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = call i32 @dump_code(%struct.TYPE_30__* %13)
  br label %208

208:                                              ; preds = %206, %202
  %209 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %209, align 8
  %210 = call i32 @release_compiler(%struct.TYPE_30__* %13)
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 0
  %215 = call i32 @list_add_tail(i32* %212, i32* %214)
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %217 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %9, align 8
  store %struct.TYPE_25__* %216, %struct.TYPE_25__** %217, align 8
  %218 = load i32, i32* @S_OK, align 4
  store i32 %218, i32* %5, align 4
  br label %219

219:                                              ; preds = %208, %115, %101, %74, %56, %34, %25
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local i32 @parse_script(%struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local %struct.TYPE_25__* @alloc_vbscode(%struct.TYPE_30__*, i32*) #1

declare dso_local i32 @compile_func(%struct.TYPE_30__*, i32, i32*) #1

declare dso_local i32 @release_compiler(%struct.TYPE_30__*) #1

declare dso_local i32 @create_function(%struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_27__**) #1

declare dso_local i32 @compile_class(%struct.TYPE_30__*, %struct.TYPE_32__*) #1

declare dso_local i32 @check_script_collisions(%struct.TYPE_30__*, %struct.TYPE_26__*) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @dump_code(%struct.TYPE_30__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
