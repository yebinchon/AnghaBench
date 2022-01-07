; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_referer_module.c_ngx_http_referer_variable.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_referer_module.c_ngx_http_referer_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i8* }
%struct.TYPE_23__ = type { %struct.TYPE_21__*, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i8* }
%struct.TYPE_24__ = type { i32*, i32*, %struct.TYPE_16__, i64, i64 }
%struct.TYPE_16__ = type { i32*, i32*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }

@ngx_http_referer_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@ngx_http_variable_true_value = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_REFERER_NO_URI_PART = common dso_local global %struct.TYPE_22__* null, align 8
@ngx_http_variable_null_value = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*, i32*, i64)* @ngx_http_referer_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_referer_variable(%struct.TYPE_23__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca [256 x i8], align 16
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %18 = load i32, i32* @ngx_http_referer_module, align 4
  %19 = call %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_23__* %17, i32 %18)
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %15, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %3
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %202

39:                                               ; preds = %32, %26, %3
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = icmp eq %struct.TYPE_19__* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %202

51:                                               ; preds = %45
  br label %153

52:                                               ; preds = %39
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %11, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %9, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp uge i64 %67, 11
  br i1 %68, label %69, label %92

69:                                               ; preds = %52
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %10, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i64 @ngx_strncasecmp(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 7
  store i8* %78, i8** %9, align 8
  %79 = load i64, i64* %11, align 8
  %80 = sub i64 %79, 7
  store i64 %80, i64* %11, align 8
  br label %99

81:                                               ; preds = %69
  %82 = load i8*, i8** %9, align 8
  %83 = call i64 @ngx_strncasecmp(i8* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 8
  store i8* %87, i8** %9, align 8
  %88 = load i64, i64* %11, align 8
  %89 = sub i64 %88, 8
  store i64 %89, i64* %11, align 8
  br label %99

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91, %52
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %202

98:                                               ; preds = %92
  br label %153

99:                                               ; preds = %85, %76
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %100 = load i8*, i8** %9, align 8
  store i8* %100, i8** %8, align 8
  br label %101

101:                                              ; preds = %134, %99
  %102 = load i8*, i8** %8, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = icmp ult i8* %102, %103
  br i1 %104, label %105, label %137

105:                                              ; preds = %101
  %106 = load i8*, i8** %8, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 47
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load i8*, i8** %8, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 58
  br i1 %114, label %115, label %116

115:                                              ; preds = %110, %105
  br label %137

116:                                              ; preds = %110
  %117 = load i32, i32* %13, align 4
  %118 = icmp eq i32 %117, 256
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %153

120:                                              ; preds = %116
  %121 = load i8*, i8** %8, align 8
  %122 = load i8, i8* %121, align 1
  %123 = call signext i8 @ngx_tolower(i8 signext %122)
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 %125
  store i8 %123, i8* %126, align 1
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = call i32 @ngx_hash(i32 %127, i8 signext %132)
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %120
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %8, align 8
  br label %101

137:                                              ; preds = %115, %101
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 2
  %140 = load i32, i32* %14, align 4
  %141 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %142 = load i8*, i8** %8, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = ptrtoint i8* %142 to i64
  %145 = ptrtoint i8* %143 to i64
  %146 = sub i64 %144, %145
  %147 = trunc i64 %146 to i32
  %148 = call %struct.TYPE_22__* @ngx_hash_find_combined(%struct.TYPE_16__* %139, i32 %140, i8* %141, i32 %147)
  store %struct.TYPE_22__* %148, %struct.TYPE_22__** %12, align 8
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %150 = icmp ne %struct.TYPE_22__* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %137
  br label %157

152:                                              ; preds = %137
  br label %153

153:                                              ; preds = %200, %152, %119, %98, %51
  %154 = load i32, i32* @ngx_http_variable_true_value, align 4
  %155 = load i32*, i32** %6, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i64, i64* @NGX_OK, align 8
  store i64 %156, i64* %4, align 8
  br label %206

157:                                              ; preds = %151
  br label %158

158:                                              ; preds = %169, %157
  %159 = load i8*, i8** %8, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = icmp ult i8* %159, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %158
  %163 = load i8*, i8** %8, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 47
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %172

168:                                              ; preds = %162
  br label %169

169:                                              ; preds = %168
  %170 = load i8*, i8** %8, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %8, align 8
  br label %158

172:                                              ; preds = %167, %158
  %173 = load i8*, i8** %10, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = ptrtoint i8* %173 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  store i64 %177, i64* %11, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** @NGX_HTTP_REFERER_NO_URI_PART, align 8
  %180 = icmp eq %struct.TYPE_22__* %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %172
  br label %202

182:                                              ; preds = %172
  %183 = load i64, i64* %11, align 8
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = icmp ult i64 %183, %187
  br i1 %188, label %200, label %189

189:                                              ; preds = %182
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = load i8*, i8** %8, align 8
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = call i64 @ngx_strncmp(i8* %192, i8* %193, i64 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %189, %182
  br label %153

201:                                              ; preds = %189
  br label %202

202:                                              ; preds = %201, %181, %97, %50, %38
  %203 = load i32, i32* @ngx_http_variable_null_value, align 4
  %204 = load i32*, i32** %6, align 8
  store i32 %203, i32* %204, align 4
  %205 = load i64, i64* @NGX_OK, align 8
  store i64 %205, i64* %4, align 8
  br label %206

206:                                              ; preds = %202, %153
  %207 = load i64, i64* %4, align 8
  ret i64 %207
}

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @ngx_strncasecmp(i8*, i8*, i32) #1

declare dso_local signext i8 @ngx_tolower(i8 signext) #1

declare dso_local i32 @ngx_hash(i32, i8 signext) #1

declare dso_local %struct.TYPE_22__* @ngx_hash_find_combined(%struct.TYPE_16__*, i32, i8*, i32) #1

declare dso_local i64 @ngx_strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
