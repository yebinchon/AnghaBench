; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_GetResponseHeaders.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_GetResponseHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i8*, i32, i32 }

@MAX_REPLY_LEN = common dso_local global i32 0, align 4
@ERROR_HTTP_INVALID_SERVER_RESPONSE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"-->\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@g_szHttp1_0 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"version [%s] status code [%s] status text [%s]\0A\00", align 1
@HTTP_STATUS_CONTINUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"No status line at head of response (%s)\0A\00", align 1
@HTTP_STATUS_OK = common dso_local global i64 0, align 8
@szOK = common dso_local global i8* null, align 8
@szStatus = common dso_local global i8* null, align 8
@HTTP_ADDHDR_FLAG_REPLACE = common dso_local global i32 0, align 4
@HTTP_ADDHDR_FLAG_ADD = common dso_local global i32 0, align 4
@emptyW = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"got line %s, now interpreting\0A\00", align 1
@HTTP_ADDREQ_FLAG_ADD = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"<--\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @HTTP_GetResponseHeaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTTP_GetResponseHeaders(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %16 = load i32, i32* @MAX_REPLY_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32, i32* @MAX_REPLY_LEN, align 4
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* @MAX_REPLY_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %24 = load i32, i32* @ERROR_HTTP_INVALID_SERVER_RESPONSE, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %14, align 4
  %26 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @is_valid_netconn(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  br label %212

33:                                               ; preds = %2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = call i32 @HTTP_clear_response_headers(%struct.TYPE_6__* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @NETCON_set_timeout(i32 %38, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %124, %33
  %45 = load i32, i32* @MAX_REPLY_LEN, align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = call i32 @read_line(%struct.TYPE_6__* %46, i8* %23, i32* %8)
  store i32 %47, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %212

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  br label %212

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @CP_ACP, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @MAX_REPLY_LEN, align 4
  %61 = call i32 @MultiByteToWideChar(i32 %58, i32 0, i8* %23, i32 %59, i8* %19, i32 %60)
  %62 = load i8*, i8** @g_szHttp1_0, align 8
  %63 = call i32 @strncmpW(i8* %19, i8* %62, i32 4)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %97, label %65

65:                                               ; preds = %54
  %66 = call i8* @strchrW(i8* %19, i8 signext 32)
  store i8* %66, i8** %11, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  br label %212

70:                                               ; preds = %65
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %11, align 8
  store i8 0, i8* %71, align 1
  %73 = load i8*, i8** %11, align 8
  %74 = call i8* @strchrW(i8* %73, i8 signext 32)
  store i8* %74, i8** %12, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i8*, i8** %12, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %12, align 8
  store i8 0, i8* %78, align 1
  br label %80

80:                                               ; preds = %77, %70
  %81 = load i8*, i8** %11, align 8
  %82 = call i64 @atoiW(i8* %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = call i32 @debugstr_w(i8* %19)
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @debugstr_w(i8* %86)
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 @debugstr_w(i8* %88)
  %90 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %87, i32 %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @HTTP_STATUS_CONTINUE, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %14, align 4
  br label %123

97:                                               ; preds = %54
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %122, label %100

100:                                              ; preds = %97
  %101 = call i32 @debugstr_w(i8* %19)
  %102 = call i32 @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @heap_free(i8* %105)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @heap_free(i8* %109)
  %111 = load i64, i64* @HTTP_STATUS_OK, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i8*, i8** @g_szHttp1_0, align 8
  %115 = call i8* @heap_strdupW(i8* %114)
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  %118 = load i8*, i8** @szOK, align 8
  %119 = call i8* @heap_strdupW(i8* %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  br label %212

122:                                              ; preds = %97
  br label %123

123:                                              ; preds = %122, %80
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %44, label %127

127:                                              ; preds = %124
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %129 = load i8*, i8** @szStatus, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = load i32, i32* @HTTP_ADDHDR_FLAG_REPLACE, align 4
  %132 = load i32, i32* @HTTP_ADDHDR_FLAG_ADD, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @HTTP_ProcessHeader(%struct.TYPE_6__* %128, i8* %129, i8* %130, i32 %133)
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @heap_free(i8* %137)
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @heap_free(i8* %141)
  %143 = call i8* @heap_strdupW(i8* %19)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %127
  %149 = load i8*, i8** %12, align 8
  br label %152

150:                                              ; preds = %127
  %151 = load i8*, i8** @emptyW, align 8
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i8* [ %149, %148 ], [ %151, %150 ]
  %154 = call i8* @heap_strdupW(i8* %153)
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 -1
  store i8 32, i8* %158, align 1
  %159 = load i8*, i8** %12, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %152
  %162 = load i8*, i8** %12, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 -1
  store i8 32, i8* %163, align 1
  br label %164

164:                                              ; preds = %161, %152
  br label %165

165:                                              ; preds = %209, %164
  %166 = load i32, i32* @MAX_REPLY_LEN, align 4
  store i32 %166, i32* %8, align 4
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %168 = call i32 @read_line(%struct.TYPE_6__* %167, i8* %23, i32* %8)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %201, label %170

170:                                              ; preds = %165
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %201

173:                                              ; preds = %170
  %174 = call i32 @debugstr_a(i8* %23)
  %175 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  %176 = getelementptr inbounds i8, i8* %23, i64 0
  %177 = load i8, i8* %176, align 16
  %178 = icmp ne i8 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %173
  br label %210

180:                                              ; preds = %173
  %181 = load i32, i32* @CP_ACP, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* @MAX_REPLY_LEN, align 4
  %184 = call i32 @MultiByteToWideChar(i32 %181, i32 0, i8* %23, i32 %182, i8* %19, i32 %183)
  %185 = call i8** @HTTP_InterpretHttpHeader(i8* %19)
  store i8** %185, i8*** %15, align 8
  %186 = load i8**, i8*** %15, align 8
  %187 = icmp ne i8** %186, null
  br i1 %187, label %188, label %200

188:                                              ; preds = %180
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %190 = load i8**, i8*** %15, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 0
  %192 = load i8*, i8** %191, align 8
  %193 = load i8**, i8*** %15, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 1
  %195 = load i8*, i8** %194, align 8
  %196 = load i32, i32* @HTTP_ADDREQ_FLAG_ADD, align 4
  %197 = call i32 @HTTP_ProcessHeader(%struct.TYPE_6__* %189, i8* %192, i8* %195, i32 %196)
  %198 = load i8**, i8*** %15, align 8
  %199 = call i32 @HTTP_FreeTokens(i8** %198)
  br label %200

200:                                              ; preds = %188, %180
  br label %208

201:                                              ; preds = %170, %165
  %202 = load i32, i32* %5, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %5, align 4
  %204 = load i32, i32* %5, align 4
  %205 = icmp sge i32 %204, 2
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %210

207:                                              ; preds = %201
  br label %208

208:                                              ; preds = %207, %200
  br label %209

209:                                              ; preds = %208
  br i1 true, label %165, label %210

210:                                              ; preds = %209, %206, %179
  %211 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %211, i32* %13, align 4
  br label %212

212:                                              ; preds = %210, %100, %69, %53, %49, %32
  %213 = load i32, i32* %9, align 4
  %214 = load i32*, i32** %4, align 8
  store i32 %213, i32* %214, align 4
  %215 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %216 = load i32, i32* %13, align 4
  %217 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %217)
  ret i32 %216
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i32 @is_valid_netconn(i32) #2

declare dso_local i32 @HTTP_clear_response_headers(%struct.TYPE_6__*) #2

declare dso_local i32 @NETCON_set_timeout(i32, i32, i32) #2

declare dso_local i32 @read_line(%struct.TYPE_6__*, i8*, i32*) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @strncmpW(i8*, i8*, i32) #2

declare dso_local i8* @strchrW(i8*, i8 signext) #2

declare dso_local i64 @atoiW(i8*) #2

declare dso_local i32 @debugstr_w(i8*) #2

declare dso_local i32 @WARN(i8*, i32) #2

declare dso_local i32 @heap_free(i8*) #2

declare dso_local i8* @heap_strdupW(i8*) #2

declare dso_local i32 @HTTP_ProcessHeader(%struct.TYPE_6__*, i8*, i8*, i32) #2

declare dso_local i32 @debugstr_a(i8*) #2

declare dso_local i8** @HTTP_InterpretHttpHeader(i8*) #2

declare dso_local i32 @HTTP_FreeTokens(i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
