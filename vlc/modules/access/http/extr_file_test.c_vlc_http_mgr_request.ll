; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_file_test.c_vlc_http_mgr_request.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_file_test.c_vlc_http_mgr_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_mgr = type { i32 }
%struct.vlc_http_msg = type { i32 }

@secure = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"www.example.com\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"www.example.com:8443\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"/dir/file.ext?a=b\00", align 1
@ua = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"Referer\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Accept\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"*/*\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Accept-Language\00", align 1
@lang = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"en_US\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Range\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"bytes=\00", align 1
@offset = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [20 x i8] c"If-Unmodified-Since\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"If-Match\00", align 1
@etags = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"\22foobar42\22\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@stream = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_http_msg* @vlc_http_mgr_request(%struct.vlc_http_mgr* %0, i32 %1, i8* %2, i32 %3, %struct.vlc_http_msg* %4) #0 {
  %6 = alloca %struct.vlc_http_mgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vlc_http_msg*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.vlc_http_mgr* %0, %struct.vlc_http_mgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.vlc_http_msg* %4, %struct.vlc_http_msg** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @secure, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.vlc_http_mgr*, %struct.vlc_http_mgr** %6, align 8
  %20 = icmp eq %struct.vlc_http_mgr* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 8443
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %34 = call i8* @vlc_http_msg_get_method(%struct.vlc_http_msg* %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %42 = call i8* @vlc_http_msg_get_scheme(%struct.vlc_http_msg* %41)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* @secure, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %48 = call i64 @strcmp(i8* %43, i8* %47)
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %54 = call i8* @vlc_http_msg_get_authority(%struct.vlc_http_msg* %53)
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %62 = call i8* @vlc_http_msg_get_path(%struct.vlc_http_msg* %61)
  store i8* %62, i8** %11, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %70 = call i8* @vlc_http_msg_get_agent(%struct.vlc_http_msg* %69)
  store i8* %70, i8** %11, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** @ua, align 8
  %73 = call i64 @strcmp(i8* %71, i8* %72)
  %74 = icmp ne i64 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %79 = call i8* @vlc_http_msg_get_header(%struct.vlc_http_msg* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i8* %79, i8** %11, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = icmp eq i8* %80, null
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %85 = call i8* @vlc_http_msg_get_header(%struct.vlc_http_msg* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i8* %85, i8** %11, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %5
  %89 = load i8*, i8** %11, align 8
  %90 = call i32* @strstr(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %91 = icmp ne i32* %90, null
  br label %92

92:                                               ; preds = %88, %5
  %93 = phi i1 [ true, %5 ], [ %91, %88 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %97 = call i8* @vlc_http_msg_get_header(%struct.vlc_http_msg* %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  store i8* %97, i8** %11, align 8
  %98 = load i64, i64* @lang, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %92
  %101 = load i8*, i8** %11, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i8*, i8** %11, align 8
  %105 = call i64 @strncmp(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 5)
  %106 = icmp eq i64 %105, 0
  br label %107

107:                                              ; preds = %103, %100
  %108 = phi i1 [ false, %100 ], [ %106, %103 ]
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i64, i64* @lang, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i64, i64* @lang, align 8
  %115 = add nsw i64 %114, -1
  store i64 %115, i64* @lang, align 8
  br label %116

116:                                              ; preds = %113, %107
  br label %122

117:                                              ; preds = %92
  %118 = load i8*, i8** %11, align 8
  %119 = icmp eq i8* %118, null
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  br label %122

122:                                              ; preds = %117, %116
  %123 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %124 = call i8* @vlc_http_msg_get_header(%struct.vlc_http_msg* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  store i8* %124, i8** %11, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %142

127:                                              ; preds = %122
  %128 = load i8*, i8** %11, align 8
  %129 = call i64 @strncmp(i8* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 6)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %127
  %132 = load i8*, i8** %11, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 6
  %134 = call i64 @strtoul(i8* %133, i8** %12, i32 10)
  %135 = load i64, i64* @offset, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = load i8*, i8** %12, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 45
  br label %142

142:                                              ; preds = %137, %131, %127, %122
  %143 = phi i1 [ false, %131 ], [ false, %127 ], [ false, %122 ], [ %141, %137 ]
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %147 = call i32 @vlc_http_msg_get_time(%struct.vlc_http_msg* %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  store i32 %147, i32* %13, align 4
  %148 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %149 = call i8* @vlc_http_msg_get_header(%struct.vlc_http_msg* %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  store i8* %149, i8** %11, align 8
  %150 = load i64, i64* @etags, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %184

152:                                              ; preds = %142
  %153 = load i64, i64* @offset, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %152
  %156 = load i8*, i8** %11, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load i8*, i8** %11, align 8
  %160 = call i64 @strcmp(i8* %159, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %161 = icmp ne i64 %160, 0
  %162 = xor i1 %161, true
  br label %163

163:                                              ; preds = %158, %155
  %164 = phi i1 [ false, %155 ], [ %162, %158 ]
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  br label %183

167:                                              ; preds = %152
  %168 = load i8*, i8** %11, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %182

170:                                              ; preds = %167
  %171 = load i8*, i8** %11, align 8
  %172 = call i64 @strcmp(i8* %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %170
  %175 = load i8*, i8** %11, align 8
  %176 = call i64 @strcmp(i8* %175, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %177 = icmp ne i64 %176, 0
  br label %178

178:                                              ; preds = %174, %170
  %179 = phi i1 [ true, %170 ], [ %177, %174 ]
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  br label %182

182:                                              ; preds = %178, %167
  br label %183

183:                                              ; preds = %182, %163
  br label %193

184:                                              ; preds = %142
  %185 = load i64, i64* @offset, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %184
  %188 = load i32, i32* %13, align 4
  %189 = icmp eq i32 %188, 1382386402
  %190 = zext i1 %189 to i32
  %191 = call i32 @assert(i32 %190)
  br label %192

192:                                              ; preds = %187, %184
  br label %193

193:                                              ; preds = %192, %183
  %194 = call %struct.vlc_http_msg* @vlc_http_msg_get_initial(i32* @stream)
  ret %struct.vlc_http_msg* %194
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @vlc_http_msg_get_method(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_scheme(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_authority(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_path(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_agent(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_header(%struct.vlc_http_msg*, i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @vlc_http_msg_get_time(%struct.vlc_http_msg*, i8*) #1

declare dso_local %struct.vlc_http_msg* @vlc_http_msg_get_initial(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
