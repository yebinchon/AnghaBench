; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_create_config.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_create_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@json_destroy_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@DEFAULT_SPARSE_CONVERT = common dso_local global i32 0, align 4
@DEFAULT_SPARSE_RATIO = common dso_local global i32 0, align 4
@DEFAULT_SPARSE_SAFE = common dso_local global i32 0, align 4
@DEFAULT_ENCODE_MAX_DEPTH = common dso_local global i32 0, align 4
@DEFAULT_DECODE_MAX_DEPTH = common dso_local global i32 0, align 4
@DEFAULT_ENCODE_INVALID_NUMBERS = common dso_local global i32 0, align 4
@DEFAULT_DECODE_INVALID_NUMBERS = common dso_local global i32 0, align 4
@DEFAULT_ENCODE_KEEP_BUFFER = common dso_local global i32 0, align 4
@DEFAULT_ENCODE_NUMBER_PRECISION = common dso_local global i32 0, align 4
@T_ERROR = common dso_local global i8* null, align 8
@T_OBJ_BEGIN = common dso_local global i8* null, align 8
@T_OBJ_END = common dso_local global i8* null, align 8
@T_ARR_BEGIN = common dso_local global i8* null, align 8
@T_ARR_END = common dso_local global i8* null, align 8
@T_COMMA = common dso_local global i8* null, align 8
@T_COLON = common dso_local global i8* null, align 8
@T_END = common dso_local global i8* null, align 8
@T_WHITESPACE = common dso_local global i8* null, align 8
@T_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @json_create_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_create_config(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.TYPE_3__* @lua_newuserdata(i32* %5, i32 56)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_newtable(i32* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @json_destroy_config, align 4
  %11 = call i32 @lua_pushcfunction(i32* %9, i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @lua_setfield(i32* %12, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @lua_setmetatable(i32* %14, i32 -2)
  %16 = load i32, i32* @DEFAULT_SPARSE_CONVERT, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 11
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @DEFAULT_SPARSE_RATIO, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @DEFAULT_SPARSE_SAFE, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @DEFAULT_ENCODE_MAX_DEPTH, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @DEFAULT_DECODE_MAX_DEPTH, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @DEFAULT_ENCODE_INVALID_NUMBERS, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @DEFAULT_DECODE_INVALID_NUMBERS, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @DEFAULT_ENCODE_KEEP_BUFFER, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @DEFAULT_ENCODE_NUMBER_PRECISION, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %54, %1
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 256
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load i8*, i8** @T_ERROR, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  store i8* %47, i8** %53, align 8
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %43

57:                                               ; preds = %43
  %58 = load i8*, i8** @T_OBJ_BEGIN, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 123
  store i8* %58, i8** %62, align 8
  %63 = load i8*, i8** @T_OBJ_END, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 125
  store i8* %63, i8** %67, align 8
  %68 = load i8*, i8** @T_ARR_BEGIN, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 91
  store i8* %68, i8** %72, align 8
  %73 = load i8*, i8** @T_ARR_END, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 93
  store i8* %73, i8** %77, align 8
  %78 = load i8*, i8** @T_COMMA, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 44
  store i8* %78, i8** %82, align 8
  %83 = load i8*, i8** @T_COLON, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 58
  store i8* %83, i8** %87, align 8
  %88 = load i8*, i8** @T_END, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  store i8* %88, i8** %92, align 8
  %93 = load i8*, i8** @T_WHITESPACE, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 32
  store i8* %93, i8** %97, align 8
  %98 = load i8*, i8** @T_WHITESPACE, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 9
  store i8* %98, i8** %102, align 8
  %103 = load i8*, i8** @T_WHITESPACE, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 10
  store i8* %103, i8** %107, align 8
  %108 = load i8*, i8** @T_WHITESPACE, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i8**, i8*** %110, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 13
  store i8* %108, i8** %112, align 8
  %113 = load i8*, i8** @T_UNKNOWN, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 102
  store i8* %113, i8** %117, align 8
  %118 = load i8*, i8** @T_UNKNOWN, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 105
  store i8* %118, i8** %122, align 8
  %123 = load i8*, i8** @T_UNKNOWN, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i8**, i8*** %125, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 73
  store i8* %123, i8** %127, align 8
  %128 = load i8*, i8** @T_UNKNOWN, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 110
  store i8* %128, i8** %132, align 8
  %133 = load i8*, i8** @T_UNKNOWN, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 78
  store i8* %133, i8** %137, align 8
  %138 = load i8*, i8** @T_UNKNOWN, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i8**, i8*** %140, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 116
  store i8* %138, i8** %142, align 8
  %143 = load i8*, i8** @T_UNKNOWN, align 8
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i8**, i8*** %145, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 34
  store i8* %143, i8** %147, align 8
  %148 = load i8*, i8** @T_UNKNOWN, align 8
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i8**, i8*** %150, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 43
  store i8* %148, i8** %152, align 8
  %153 = load i8*, i8** @T_UNKNOWN, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i8**, i8*** %155, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 45
  store i8* %153, i8** %157, align 8
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %170, %57
  %159 = load i32, i32* %4, align 4
  %160 = icmp slt i32 %159, 10
  br i1 %160, label %161, label %173

161:                                              ; preds = %158
  %162 = load i8*, i8** @T_UNKNOWN, align 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i8**, i8*** %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = add nsw i32 48, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %165, i64 %168
  store i8* %162, i8** %169, align 8
  br label %170

170:                                              ; preds = %161
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %4, align 4
  br label %158

173:                                              ; preds = %158
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %184, %173
  %175 = load i32, i32* %4, align 4
  %176 = icmp slt i32 %175, 256
  br i1 %176, label %177, label %187

177:                                              ; preds = %174
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  store i8 0, i8* %183, align 1
  br label %184

184:                                              ; preds = %177
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %4, align 4
  br label %174

187:                                              ; preds = %174
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 34
  store i8 34, i8* %191, align 1
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 92
  store i8 92, i8* %195, align 1
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 47
  store i8 47, i8* %199, align 1
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 98
  store i8 8, i8* %203, align 1
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 116
  store i8 9, i8* %207, align 1
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 110
  store i8 10, i8* %211, align 1
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 102
  store i8 12, i8* %215, align 1
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 114
  store i8 13, i8* %219, align 1
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 117
  store i8 117, i8* %223, align 1
  ret void
}

declare dso_local %struct.TYPE_3__* @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
