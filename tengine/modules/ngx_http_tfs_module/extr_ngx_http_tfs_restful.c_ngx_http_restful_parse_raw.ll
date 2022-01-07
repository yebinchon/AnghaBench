; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_restful.c_ngx_http_restful_parse_raw.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_restful.c_ngx_http_restful_parse_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@NGX_HTTP_TFS_YES = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_GET = common dso_local global i64 0, align 8
@NGX_HTTP_DELETE = common dso_local global i64 0, align 8
@NGX_HTTP_PUT = common dso_local global i64 0, align 8
@NGX_HTTP_HEAD = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_MAX_FILE_NAME_LEN = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i8*)* @ngx_http_restful_parse_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_restful_parse_raw(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %17, i64 %22
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %10, align 8
  store i8* null, i8** %12, align 8
  %25 = load i8*, i8** %7, align 8
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %90, %3
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ult i8* %27, %28
  br i1 %29, label %30, label %93

30:                                               ; preds = %26
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %9, align 1
  %33 = load i32, i32* %13, align 4
  switch i32 %33, label %89 [
    i32 0, label %34
    i32 1, label %61
    i32 2, label %88
  ]

34:                                               ; preds = %30
  %35 = load i8, i8* %9, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 47
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 8
  store i32 1, i32* %13, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %38
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %12, align 8
  br label %59

59:                                               ; preds = %56, %38
  br label %60

60:                                               ; preds = %59, %34
  br label %89

61:                                               ; preds = %30
  %62 = load i8, i8* %9, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 47
  br i1 %64, label %65, label %87

65:                                               ; preds = %61
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @ngx_memcmp(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8*, i8** %11, align 8
  %73 = icmp ult i8* %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i32, i32* @NGX_HTTP_TFS_YES, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i8* %79, i8** %82, align 8
  store i32 2, i32* %13, align 4
  br label %85

83:                                               ; preds = %69
  %84 = load i32, i32* @NGX_ERROR, align 4
  store i32 %84, i32* %4, align 4
  br label %206

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %65
  br label %87

87:                                               ; preds = %86, %61
  br label %88

88:                                               ; preds = %30, %87
  br label %89

89:                                               ; preds = %30, %88, %60
  br label %90

90:                                               ; preds = %89
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %8, align 8
  br label %26

93:                                               ; preds = %26
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @NGX_HTTP_GET, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %117, label %99

99:                                               ; preds = %93
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @NGX_HTTP_DELETE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %117, label %105

105:                                              ; preds = %99
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NGX_HTTP_PUT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NGX_HTTP_HEAD, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %176

117:                                              ; preds = %111, %105, %99, %93
  %118 = load i32, i32* %13, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, i32* @NGX_ERROR, align 4
  store i32 %121, i32* %4, align 4
  br label %206

122:                                              ; preds = %117
  %123 = load i32, i32* %13, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i8*, i8** %12, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  store i8* %126, i8** %129, align 8
  br label %130

130:                                              ; preds = %125, %122
  %131 = load i32, i32* %13, align 4
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %133, label %148

133:                                              ; preds = %130
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @NGX_HTTP_DELETE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %145, label %139

139:                                              ; preds = %133
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @NGX_HTTP_PUT, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %139, %133
  %146 = load i32, i32* @NGX_ERROR, align 4
  store i32 %146, i32* %4, align 4
  br label %206

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %147, %130
  %149 = load i8*, i8** %8, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = ptrtoint i8* %149 to i64
  %155 = ptrtoint i8* %153 to i64
  %156 = sub i64 %154, %155
  %157 = trunc i64 %156 to i32
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %164, 1
  br i1 %165, label %173, label %166

166:                                              ; preds = %148
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @NGX_HTTP_TFS_MAX_FILE_NAME_LEN, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %166, %148
  %174 = load i32, i32* @NGX_ERROR, align 4
  store i32 %174, i32* %4, align 4
  br label %206

175:                                              ; preds = %166
  br label %204

176:                                              ; preds = %111
  %177 = load i32, i32* %13, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %176
  %180 = load i8*, i8** %8, align 8
  %181 = load i8*, i8** %10, align 8
  %182 = ptrtoint i8* %180 to i64
  %183 = ptrtoint i8* %181 to i64
  %184 = sub i64 %182, %183
  %185 = trunc i64 %184 to i32
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  store i32 %185, i32* %188, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %179
  %195 = load i32, i32* @NGX_ERROR, align 4
  store i32 %195, i32* %4, align 4
  br label %206

196:                                              ; preds = %179
  %197 = load i8*, i8** %10, align 8
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  store i8* %197, i8** %200, align 8
  br label %203

201:                                              ; preds = %176
  %202 = load i32, i32* @NGX_ERROR, align 4
  store i32 %202, i32* %4, align 4
  br label %206

203:                                              ; preds = %196
  br label %204

204:                                              ; preds = %203, %175
  %205 = load i32, i32* @NGX_OK, align 4
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %204, %201, %194, %173, %145, %120, %83
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i32 @ngx_memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
