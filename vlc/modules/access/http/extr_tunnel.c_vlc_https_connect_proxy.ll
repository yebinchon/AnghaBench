; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_tunnel.c_vlc_https_connect_proxy.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_tunnel.c_vlc_https_connect_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_15__* }
%struct.vlc_http_conn = type { i32 }
%struct.vlc_http_msg = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@vlc_tls_proxy_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"h2\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"http/1.1\00", align 1
@__const.vlc_https_connect_proxy.alpn = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @vlc_https_connect_proxy(i8* %0, i32* %1, i8* %2, i32 %3, i32* noalias %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_14__, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca %struct.vlc_http_conn*, align 8
  %20 = alloca %struct.vlc_http_msg*, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca [3 x i8*], align 16
  %23 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = icmp ne i8* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  store i32 443, i32* %11, align 4
  br label %31

31:                                               ; preds = %30, %6
  %32 = call i32 (...) @vlc_savecancel()
  store i32 %32, i32* %15, align 4
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @vlc_UrlParse(%struct.TYPE_14__* %14, i8* %33)
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @vlc_restorecancel(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %31
  %45 = call i32 @vlc_UrlClean(%struct.TYPE_14__* %14)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  br label %172

46:                                               ; preds = %40
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %16, align 8
  store i32 0, i32* %17, align 4
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @strcasecmp(i32* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.TYPE_15__* @vlc_https_connect(i32* %52, i32* %54, i32 %56, i32* %17)
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %16, align 8
  br label %79

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @strcasecmp(i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %58
  %64 = load i32*, i32** %9, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32*, i32** %9, align 8
  %68 = call i32* @vlc_object_parent(i32* %67)
  br label %70

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %66
  %71 = phi i32* [ %68, %66 ], [ null, %69 ]
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.TYPE_15__* @vlc_tls_SocketOpenTCP(i32* %71, i32* %73, i32 %75)
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %16, align 8
  br label %78

77:                                               ; preds = %58
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %16, align 8
  br label %78

78:                                               ; preds = %77, %70
  br label %79

79:                                               ; preds = %78, %51
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %81 = icmp eq %struct.TYPE_15__* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 @vlc_UrlClean(%struct.TYPE_14__* %14)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  br label %172

84:                                               ; preds = %79
  %85 = load i32, i32* %17, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = call %struct.TYPE_16__* @malloc(i32 24)
  store %struct.TYPE_16__* %90, %struct.TYPE_16__** %18, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %92 = icmp eq %struct.TYPE_16__* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = call i32 @vlc_UrlClean(%struct.TYPE_14__* %14)
  br label %169

98:                                               ; preds = %84
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  store i32* @vlc_tls_proxy_ops, i32** %101, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  store i32* null, i32** %104, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  store %struct.TYPE_15__* %105, %struct.TYPE_15__** %107, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = call %struct.vlc_http_conn* @vlc_h1_conn_create(i8* %108, %struct.TYPE_15__* %110, i32 0)
  store %struct.vlc_http_conn* %111, %struct.vlc_http_conn** %19, align 8
  %112 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %19, align 8
  %113 = icmp eq %struct.vlc_http_conn* %112, null
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %98
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = call i32 @vlc_tls_Close(%struct.TYPE_15__* %119)
  %121 = call i32 @vlc_UrlClean(%struct.TYPE_14__* %14)
  br label %169

122:                                              ; preds = %98
  %123 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %19, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = load i32, i32* %11, align 4
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.vlc_http_msg* @vlc_http_tunnel_open(%struct.vlc_http_conn* %123, i8* %124, i32 %125, i32 %127, i32 %129)
  store %struct.vlc_http_msg* %130, %struct.vlc_http_msg** %20, align 8
  %131 = call i32 @vlc_UrlClean(%struct.TYPE_14__* %14)
  %132 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %19, align 8
  %133 = call i32 @vlc_http_conn_release(%struct.vlc_http_conn* %132)
  %134 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %20, align 8
  %135 = icmp eq %struct.vlc_http_msg* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %122
  br label %169

137:                                              ; preds = %122
  %138 = bitcast [3 x i8*]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %138, i8* align 16 bitcast ([3 x i8*]* @__const.vlc_https_connect_proxy.alpn to i8*), i64 24, i1 false)
  %139 = load i32*, i32** %9, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 0
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %142, i64 %148
  %150 = call %struct.TYPE_15__* @vlc_tls_ClientSessionCreate(i32* %139, %struct.TYPE_15__* %140, i8* %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %149, i8** %23)
  store %struct.TYPE_15__* %150, %struct.TYPE_15__** %21, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %152 = icmp eq %struct.TYPE_15__* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %137
  br label %169

154:                                              ; preds = %137
  %155 = load i8*, i8** %23, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load i8*, i8** %23, align 8
  %159 = call i32 @strcmp(i8* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  br label %162

162:                                              ; preds = %157, %154
  %163 = phi i1 [ false, %154 ], [ %161, %157 ]
  %164 = zext i1 %163 to i32
  %165 = load i32*, i32** %12, align 8
  store i32 %164, i32* %165, align 4
  %166 = load i8*, i8** %23, align 8
  %167 = call i32 @free(i8* %166)
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %168, %struct.TYPE_15__** %7, align 8
  br label %172

169:                                              ; preds = %153, %136, %117, %96
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %171 = call i32 @vlc_tls_Close(%struct.TYPE_15__* %170)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  br label %172

172:                                              ; preds = %169, %162, %82, %44
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  ret %struct.TYPE_15__* %173
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @vlc_UrlParse(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

declare dso_local i32 @vlc_UrlClean(%struct.TYPE_14__*) #1

declare dso_local i32 @strcasecmp(i32*, i8*) #1

declare dso_local %struct.TYPE_15__* @vlc_https_connect(i32*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_15__* @vlc_tls_SocketOpenTCP(i32*, i32*, i32) #1

declare dso_local i32* @vlc_object_parent(i32*) #1

declare dso_local %struct.TYPE_16__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.vlc_http_conn* @vlc_h1_conn_create(i8*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @vlc_tls_Close(%struct.TYPE_15__*) #1

declare dso_local %struct.vlc_http_msg* @vlc_http_tunnel_open(%struct.vlc_http_conn*, i8*, i32, i32, i32) #1

declare dso_local i32 @vlc_http_conn_release(%struct.vlc_http_conn*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_15__* @vlc_tls_ClientSessionCreate(i32*, %struct.TYPE_15__*, i8*, i8*, i8**, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
