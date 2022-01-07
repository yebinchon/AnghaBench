; ModuleID = '/home/carl/AnghaBench/streem/src/extr_exec.c_lambda_call.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_exec.c_lambda_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32, i32, i32 }
%struct.strm_lambda = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { i32*, i32, i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_18__ = type { i64, i64, i64, i32 }

@NODE_LAMBDA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@NODE_PLAMBDA = common dso_local global i64 0, align 8
@STRM_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"match failure\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@NODE_ERROR_RETURN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32, i32*, i32*)* @lambda_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lambda_call(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.strm_lambda*, align 8
  %13 = alloca %struct.TYPE_17__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.strm_lambda* @strm_value_lambda(i32 %22)
  store %struct.strm_lambda* %23, %struct.strm_lambda** %12, align 8
  %24 = bitcast %struct.TYPE_17__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 16, i1 false)
  %25 = load %struct.strm_lambda*, %struct.strm_lambda** %12, align 8
  %26 = getelementptr inbounds %struct.strm_lambda, %struct.strm_lambda* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load %struct.strm_lambda*, %struct.strm_lambda** %12, align 8
  %30 = getelementptr inbounds %struct.strm_lambda, %struct.strm_lambda* %29, i32 0, i32 0
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NODE_LAMBDA, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %98

36:                                               ; preds = %5
  %37 = load %struct.strm_lambda*, %struct.strm_lambda** %12, align 8
  %38 = getelementptr inbounds %struct.strm_lambda, %struct.strm_lambda* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = bitcast %struct.TYPE_15__* %39 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %40, %struct.TYPE_19__** %17, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %44, %struct.TYPE_21__** %18, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %46 = icmp eq %struct.TYPE_21__* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %59

51:                                               ; preds = %47
  br label %63

52:                                               ; preds = %36
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %50
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = call i32 @strm_raise(%struct.TYPE_16__* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %206

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %51
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %88, %63
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %64
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @node_to_sym(i32 %75)
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @strm_var_set(%struct.TYPE_17__* %13, i32 %76, i32 %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %68
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %6, align 4
  br label %235

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %64

91:                                               ; preds = %64
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @exec_expr(%struct.TYPE_16__* %92, %struct.TYPE_17__* %13, i64 %95, i32* %96)
  store i32 %97, i32* %15, align 4
  br label %178

98:                                               ; preds = %5
  %99 = load %struct.strm_lambda*, %struct.strm_lambda** %12, align 8
  %100 = getelementptr inbounds %struct.strm_lambda, %struct.strm_lambda* %99, i32 0, i32 0
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @NODE_PLAMBDA, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %175

106:                                              ; preds = %98
  %107 = load %struct.strm_lambda*, %struct.strm_lambda** %12, align 8
  %108 = getelementptr inbounds %struct.strm_lambda, %struct.strm_lambda* %107, i32 0, i32 0
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = bitcast %struct.TYPE_15__* %109 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %110, %struct.TYPE_18__** %19, align 8
  store i32 0, i32* %20, align 4
  br label %111

111:                                              ; preds = %162, %106
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %113 = icmp ne %struct.TYPE_18__* %112, null
  br i1 %113, label %114, label %168

114:                                              ; preds = %111
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @pattern_match(%struct.TYPE_16__* %115, %struct.TYPE_17__* %13, i32 %118, i32 %119, i32* %120)
  %122 = load i32, i32* @STRM_OK, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %162

124:                                              ; preds = %114
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %152

129:                                              ; preds = %124
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @exec_expr(%struct.TYPE_16__* %130, %struct.TYPE_17__* %13, i64 %133, i32* %21)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* @STRM_OK, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %129
  %139 = load i32, i32* %21, align 4
  %140 = call i64 @strm_value_bool(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load i32, i32* %20, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %20, align 4
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i32*, i32** %11, align 8
  %150 = call i32 @exec_expr(%struct.TYPE_16__* %145, %struct.TYPE_17__* %13, i64 %148, i32* %149)
  store i32 %150, i32* %15, align 4
  br label %168

151:                                              ; preds = %138, %129
  br label %161

152:                                              ; preds = %124
  %153 = load i32, i32* %20, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %20, align 4
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i32*, i32** %11, align 8
  %160 = call i32 @exec_expr(%struct.TYPE_16__* %155, %struct.TYPE_17__* %13, i64 %158, i32* %159)
  store i32 %160, i32* %15, align 4
  br label %168

161:                                              ; preds = %151
  br label %162

162:                                              ; preds = %161, %114
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  store i32* null, i32** %163, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %167, %struct.TYPE_18__** %19, align 8
  br label %111

168:                                              ; preds = %152, %142, %111
  %169 = load i32, i32* %20, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %173 = call i32 @strm_raise(%struct.TYPE_16__* %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %206

174:                                              ; preds = %168
  br label %177

175:                                              ; preds = %98
  %176 = load i32, i32* @STRM_NG, align 4
  store i32 %176, i32* %6, align 4
  br label %235

177:                                              ; preds = %174
  br label %178

178:                                              ; preds = %177, %91
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* @STRM_NG, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %204

182:                                              ; preds = %178
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %184 = icmp ne %struct.TYPE_16__* %183, null
  br i1 %184, label %185, label %204

185:                                              ; preds = %182
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %187, align 8
  store %struct.TYPE_20__* %188, %struct.TYPE_20__** %16, align 8
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %190 = icmp ne %struct.TYPE_20__* %189, null
  br i1 %190, label %191, label %203

191:                                              ; preds = %185
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @NODE_ERROR_RETURN, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %191
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load i32*, i32** %11, align 8
  store i32 %200, i32* %201, align 4
  %202 = load i32, i32* @STRM_OK, align 4
  store i32 %202, i32* %6, align 4
  br label %235

203:                                              ; preds = %191, %185
  br label %204

204:                                              ; preds = %203, %182, %178
  %205 = load i32, i32* %15, align 4
  store i32 %205, i32* %6, align 4
  br label %235

206:                                              ; preds = %171, %59
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %208 = icmp ne %struct.TYPE_16__* %207, null
  br i1 %208, label %209, label %233

209:                                              ; preds = %206
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %211, align 8
  %213 = icmp ne %struct.TYPE_20__* %212, null
  br i1 %213, label %214, label %233

214:                                              ; preds = %209
  %215 = load %struct.strm_lambda*, %struct.strm_lambda** %12, align 8
  %216 = getelementptr inbounds %struct.strm_lambda, %struct.strm_lambda* %215, i32 0, i32 0
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 2
  store i32 %219, i32* %223, align 4
  %224 = load %struct.strm_lambda*, %struct.strm_lambda** %12, align 8
  %225 = getelementptr inbounds %struct.strm_lambda, %struct.strm_lambda* %224, i32 0, i32 0
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 1
  store i32 %228, i32* %232, align 8
  br label %233

233:                                              ; preds = %214, %209, %206
  %234 = load i32, i32* @STRM_NG, align 4
  store i32 %234, i32* %6, align 4
  br label %235

235:                                              ; preds = %233, %204, %197, %175, %85
  %236 = load i32, i32* %6, align 4
  ret i32 %236
}

declare dso_local %struct.strm_lambda* @strm_value_lambda(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @strm_raise(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @strm_var_set(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @node_to_sym(i32) #1

declare dso_local i32 @exec_expr(%struct.TYPE_16__*, %struct.TYPE_17__*, i64, i32*) #1

declare dso_local i32 @pattern_match(%struct.TYPE_16__*, %struct.TYPE_17__*, i32, i32, i32*) #1

declare dso_local i64 @strm_value_bool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
