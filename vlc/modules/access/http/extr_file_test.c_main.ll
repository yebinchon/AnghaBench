; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_file_test.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_file_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_resource = type { i32 }

@jar = common dso_local global i32 0, align 4
@url = common dso_local global i8* null, align 8
@ua = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"john\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"HTTP/1.1 200 OK\0D\0AETag: \22foobar42\22\0D\0AContent-Type: video/mpeg\0D\0A\0D\0A\00", align 1
@replies = common dso_local global i8** null, align 8
@offset = common dso_local global i32 0, align 4
@etags = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"video/mpeg\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"HTTP/1.1 200 OK\0D\0AETag: \22foobar42\22\0D\0A\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [133 x i8] c"HTTP/1.1 206 Partial Content\0D\0AContent-Range: bytes 0-2344/2345\0D\0AETag: W/\22foobar42\22\0D\0ALast-Modified: Mon, 21 Oct 2013 20:13:22 GMT\0D\0A\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [136 x i8] c"HTTP/1.1 206 Partial Content\0D\0AContent-Range: bytes 1234-3455/3456\0D\0AETag: W/\22foobar42\22\0D\0ALast-Modified: Mon, 21 Oct 2013 20:13:22 GMT\0D\0A\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [134 x i8] c"HTTP/1.1 416 Range Not Satisfiable\0D\0AContent-Range: bytes */4567\0D\0AETag: W/\22foobar42\22\0D\0ALast-Modified: Mon, 21 Oct 2013 20:13:22 GMT\0D\0A\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [69 x i8] c"HTTP/1.1 301 Permanent Redirect\0D\0ALocation: /somewhere/else/#here\0D\0A\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"https://www.example.com:8443/somewhere/else/\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"HTTP/1.1 100 Standby\0D\0A\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"HTTP/1.1 200 OK\0D\0AContent-Length: 9999\0D\0A\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [113 x i8] c"HTTP/1.1 206 Partial Content\0D\0AContent-Range: bytes 0-2344/2345\0D\0ALast-Modified: Mon, 21 Oct 2013 20:13:22 GMT\0D\0A\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [116 x i8] c"HTTP/1.1 206 Partial Content\0D\0AContent-Range: bytes 1234-3455/3456\0D\0ALast-Modified: Mon, 21 Oct 2013 20:13:22 GMT\0D\0A\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [69 x i8] c"HTTP/1.1 206 Partial Content\0D\0AContent-Type: multipart/byteranges\0D\0A\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"HTTP/1.1 206 Partial Content\0D\0AContent-Range: seconds 60-120/180\0D\0A\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"HTTP/1.1 206 Partial Content\0D\0AContent-Range: bytes 0-1233/*\0D\0A\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"HTTP/1.1 200 OK\0D\0AContent-Range: bytes 0-1233/1234\0D\0A\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"HTTP/1.1 406 Not Acceptable\0D\0A\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"HTTP/1.1 206 OK\0D\0AContent-Range: bytes 0-1/2\0D\0A\0D\0A\00", align 1
@lang = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [38 x i8] c"HTTP/1.1 200 OK\0D\0APragma: features\0D\0A\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"HTTP/1.1 200 OK\0D\0AIcy-Name:CraptasticRadio\0D\0A\0D\0A\00", align 1
@secure = common dso_local global i32 0, align 4
@url_http = common dso_local global i8* null, align 8
@url_mmsh = common dso_local global i8* null, align 8
@url_icyx = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [20 x i8] c"ftp://localhost/foo\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"/foo\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"http://www.example.com\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.vlc_http_resource*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %4 = call i32 (...) @vlc_http_cookies_new()
  store i32 %4, i32* @jar, align 4
  %5 = load i8*, i8** @url, align 8
  %6 = load i32*, i32** @ua, align 8
  %7 = call %struct.vlc_http_resource* @vlc_http_file_create(i32* null, i8* %5, i32* %6, i32* null)
  store %struct.vlc_http_resource* %7, %struct.vlc_http_resource** %2, align 8
  %8 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %9 = icmp ne %struct.vlc_http_resource* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %13 = call i32 @vlc_http_res_set_login(%struct.vlc_http_resource* %12, i8* null, i8* null)
  %14 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %15 = call i32 @vlc_http_res_set_login(%struct.vlc_http_resource* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* null)
  %16 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %17 = call i32 @vlc_http_res_set_login(%struct.vlc_http_resource* %16, i8* null, i8* null)
  %18 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %19 = call i32 @vlc_http_res_set_login(%struct.vlc_http_resource* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %21 = call i32 @vlc_http_res_set_login(%struct.vlc_http_resource* %20, i8* null, i8* null)
  %22 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %23 = call i32 @vlc_http_file_seek(%struct.vlc_http_resource* %22, i32 0)
  %24 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %25 = call i32 @vlc_http_file_get_status(%struct.vlc_http_resource* %24)
  %26 = icmp slt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %30 = call i8* @vlc_http_file_get_redirect(%struct.vlc_http_resource* %29)
  %31 = icmp eq i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %35 = call i32 @vlc_http_file_get_size(%struct.vlc_http_resource* %34)
  %36 = icmp eq i32 %35, -1
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %40 = call i32 @vlc_http_file_can_seek(%struct.vlc_http_resource* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %46 = call i8* @vlc_http_file_get_type(%struct.vlc_http_resource* %45)
  %47 = icmp eq i8* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %51 = call i32* @vlc_http_file_read(%struct.vlc_http_resource* %50)
  %52 = icmp eq i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %56 = call i32 @vlc_http_res_destroy(%struct.vlc_http_resource* %55)
  %57 = load i8**, i8*** @replies, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8** %58, align 8
  store i32 0, i32* @offset, align 4
  store i32 1, i32* @etags, align 4
  %59 = load i8*, i8** @url, align 8
  %60 = load i32*, i32** @ua, align 8
  %61 = call %struct.vlc_http_resource* @vlc_http_file_create(i32* null, i8* %59, i32* %60, i32* null)
  store %struct.vlc_http_resource* %61, %struct.vlc_http_resource** %2, align 8
  %62 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %63 = icmp ne %struct.vlc_http_resource* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %67 = call i32 @vlc_http_file_get_status(%struct.vlc_http_resource* %66)
  %68 = icmp eq i32 %67, 200
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %72 = call i32 @vlc_http_file_can_seek(%struct.vlc_http_resource* %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %78 = call i32 @vlc_http_file_get_size(%struct.vlc_http_resource* %77)
  %79 = icmp eq i32 %78, -1
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %83 = call i8* @vlc_http_file_get_type(%struct.vlc_http_resource* %82)
  store i8* %83, i8** %3, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %0
  %87 = load i8*, i8** %3, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  %90 = xor i1 %89, true
  br label %91

91:                                               ; preds = %86, %0
  %92 = phi i1 [ false, %0 ], [ %90, %86 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i8*, i8** %3, align 8
  %96 = call i32 @free(i8* %95)
  %97 = load i8**, i8*** @replies, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8** %98, align 8
  %99 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  store i32 1234, i32* @offset, align 4
  %100 = call i32 @vlc_http_file_seek(%struct.vlc_http_resource* %99, i32 1234)
  %101 = icmp slt i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %105 = call i32 @vlc_http_file_destroy(%struct.vlc_http_resource* %104)
  %106 = load i8**, i8*** @replies, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 0
  store i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.5, i64 0, i64 0), i8** %107, align 8
  store i32 0, i32* @offset, align 4
  %108 = load i8*, i8** @url, align 8
  %109 = load i32*, i32** @ua, align 8
  %110 = call %struct.vlc_http_resource* @vlc_http_file_create(i32* null, i8* %108, i32* %109, i32* null)
  store %struct.vlc_http_resource* %110, %struct.vlc_http_resource** %2, align 8
  %111 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %112 = icmp ne %struct.vlc_http_resource* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %116 = call i32 @vlc_http_file_can_seek(%struct.vlc_http_resource* %115)
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %119 = call i32 @vlc_http_file_get_size(%struct.vlc_http_resource* %118)
  %120 = icmp eq i32 %119, 2345
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %124 = call i32* @vlc_http_file_read(%struct.vlc_http_resource* %123)
  %125 = icmp eq i32* %124, null
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load i8**, i8*** @replies, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 0
  store i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.6, i64 0, i64 0), i8** %129, align 8
  %130 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  store i32 1234, i32* @offset, align 4
  %131 = call i32 @vlc_http_file_seek(%struct.vlc_http_resource* %130, i32 1234)
  %132 = icmp eq i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %136 = call i32 @vlc_http_file_can_seek(%struct.vlc_http_resource* %135)
  %137 = call i32 @assert(i32 %136)
  %138 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %139 = call i32 @vlc_http_file_get_size(%struct.vlc_http_resource* %138)
  %140 = icmp eq i32 %139, 3456
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %144 = call i32* @vlc_http_file_read(%struct.vlc_http_resource* %143)
  %145 = icmp eq i32* %144, null
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load i8**, i8*** @replies, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 0
  store i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.7, i64 0, i64 0), i8** %149, align 8
  %150 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  store i32 5678, i32* @offset, align 4
  %151 = call i32 @vlc_http_file_seek(%struct.vlc_http_resource* %150, i32 5678)
  %152 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %153 = call i32 @vlc_http_file_can_seek(%struct.vlc_http_resource* %152)
  %154 = call i32 @assert(i32 %153)
  %155 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %156 = call i32 @vlc_http_file_get_size(%struct.vlc_http_resource* %155)
  %157 = icmp eq i32 %156, 4567
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %161 = call i32* @vlc_http_file_read(%struct.vlc_http_resource* %160)
  %162 = icmp eq i32* %161, null
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %166 = call i32 @vlc_http_file_destroy(%struct.vlc_http_resource* %165)
  %167 = load i8**, i8*** @replies, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 0
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.8, i64 0, i64 0), i8** %168, align 8
  store i32 0, i32* @offset, align 4
  %169 = load i8*, i8** @url, align 8
  %170 = load i32*, i32** @ua, align 8
  %171 = call %struct.vlc_http_resource* @vlc_http_file_create(i32* null, i8* %169, i32* %170, i32* null)
  store %struct.vlc_http_resource* %171, %struct.vlc_http_resource** %2, align 8
  %172 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %173 = icmp ne %struct.vlc_http_resource* %172, null
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %177 = call i32 @vlc_http_file_can_seek(%struct.vlc_http_resource* %176)
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  %182 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %183 = call i32 @vlc_http_file_get_size(%struct.vlc_http_resource* %182)
  %184 = icmp eq i32 %183, -1
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %188 = call i8* @vlc_http_file_get_redirect(%struct.vlc_http_resource* %187)
  store i8* %188, i8** %3, align 8
  %189 = load i8*, i8** %3, align 8
  %190 = icmp ne i8* %189, null
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load i8*, i8** %3, align 8
  %194 = call i64 @strcmp(i8* %193, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %195 = icmp ne i64 %194, 0
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  %198 = call i32 @assert(i32 %197)
  %199 = load i8*, i8** %3, align 8
  %200 = call i32 @free(i8* %199)
  %201 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %202 = call i32 @vlc_http_file_destroy(%struct.vlc_http_resource* %201)
  %203 = load i8**, i8*** @replies, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8** %204, align 8
  %205 = load i8**, i8*** @replies, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 1
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i8** %206, align 8
  store i32 0, i32* @offset, align 4
  %207 = load i8*, i8** @url, align 8
  %208 = load i32*, i32** @ua, align 8
  %209 = call %struct.vlc_http_resource* @vlc_http_file_create(i32* null, i8* %207, i32* %208, i32* null)
  store %struct.vlc_http_resource* %209, %struct.vlc_http_resource** %2, align 8
  %210 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %211 = icmp ne %struct.vlc_http_resource* %210, null
  %212 = zext i1 %211 to i32
  %213 = call i32 @assert(i32 %212)
  %214 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %215 = call i32 @vlc_http_file_get_size(%struct.vlc_http_resource* %214)
  %216 = icmp eq i32 %215, 9999
  %217 = zext i1 %216 to i32
  %218 = call i32 @assert(i32 %217)
  %219 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %220 = call i8* @vlc_http_file_get_redirect(%struct.vlc_http_resource* %219)
  %221 = icmp eq i8* %220, null
  %222 = zext i1 %221 to i32
  %223 = call i32 @assert(i32 %222)
  %224 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %225 = call i32 @vlc_http_file_destroy(%struct.vlc_http_resource* %224)
  %226 = load i8**, i8*** @replies, align 8
  %227 = getelementptr inbounds i8*, i8** %226, i64 0
  store i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.12, i64 0, i64 0), i8** %227, align 8
  store i32 0, i32* @offset, align 4
  store i32 0, i32* @etags, align 4
  %228 = load i8*, i8** @url, align 8
  %229 = load i32*, i32** @ua, align 8
  %230 = call %struct.vlc_http_resource* @vlc_http_file_create(i32* null, i8* %228, i32* %229, i32* null)
  store %struct.vlc_http_resource* %230, %struct.vlc_http_resource** %2, align 8
  %231 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %232 = icmp ne %struct.vlc_http_resource* %231, null
  %233 = zext i1 %232 to i32
  %234 = call i32 @assert(i32 %233)
  %235 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %236 = call i32 @vlc_http_file_can_seek(%struct.vlc_http_resource* %235)
  %237 = call i32 @assert(i32 %236)
  %238 = load i8**, i8*** @replies, align 8
  %239 = getelementptr inbounds i8*, i8** %238, i64 0
  store i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.13, i64 0, i64 0), i8** %239, align 8
  %240 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  store i32 1234, i32* @offset, align 4
  %241 = call i32 @vlc_http_file_seek(%struct.vlc_http_resource* %240, i32 1234)
  %242 = icmp eq i32 %241, 0
  %243 = zext i1 %242 to i32
  %244 = call i32 @assert(i32 %243)
  %245 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %246 = call i32 @vlc_http_file_destroy(%struct.vlc_http_resource* %245)
  %247 = load i8**, i8*** @replies, align 8
  %248 = getelementptr inbounds i8*, i8** %247, i64 0
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.14, i64 0, i64 0), i8** %248, align 8
  store i32 0, i32* @offset, align 4
  %249 = load i8*, i8** @url, align 8
  %250 = load i32*, i32** @ua, align 8
  %251 = call %struct.vlc_http_resource* @vlc_http_file_create(i32* null, i8* %249, i32* %250, i32* null)
  store %struct.vlc_http_resource* %251, %struct.vlc_http_resource** %2, align 8
  %252 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %253 = icmp ne %struct.vlc_http_resource* %252, null
  %254 = zext i1 %253 to i32
  %255 = call i32 @assert(i32 %254)
  %256 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %257 = call i32 @vlc_http_file_get_size(%struct.vlc_http_resource* %256)
  %258 = icmp eq i32 %257, -1
  %259 = zext i1 %258 to i32
  %260 = call i32 @assert(i32 %259)
  %261 = load i8**, i8*** @replies, align 8
  %262 = getelementptr inbounds i8*, i8** %261, i64 0
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i64 0, i64 0), i8** %262, align 8
  %263 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %264 = call i32 @vlc_http_file_seek(%struct.vlc_http_resource* %263, i32 0)
  %265 = icmp eq i32 %264, -1
  %266 = zext i1 %265 to i32
  %267 = call i32 @assert(i32 %266)
  %268 = load i8**, i8*** @replies, align 8
  %269 = getelementptr inbounds i8*, i8** %268, i64 0
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16, i64 0, i64 0), i8** %269, align 8
  %270 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %271 = call i32 @vlc_http_file_seek(%struct.vlc_http_resource* %270, i32 0)
  %272 = icmp eq i32 %271, 0
  %273 = zext i1 %272 to i32
  %274 = call i32 @assert(i32 %273)
  %275 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %276 = call i32 @vlc_http_file_get_size(%struct.vlc_http_resource* %275)
  %277 = icmp eq i32 %276, 1234
  %278 = zext i1 %277 to i32
  %279 = call i32 @assert(i32 %278)
  %280 = load i8**, i8*** @replies, align 8
  %281 = getelementptr inbounds i8*, i8** %280, i64 0
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i64 0, i64 0), i8** %281, align 8
  %282 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %283 = call i32 @vlc_http_file_seek(%struct.vlc_http_resource* %282, i32 0)
  %284 = icmp eq i32 %283, 0
  %285 = zext i1 %284 to i32
  %286 = call i32 @assert(i32 %285)
  %287 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %288 = call i32 @vlc_http_file_get_size(%struct.vlc_http_resource* %287)
  %289 = icmp eq i32 %288, -1
  %290 = zext i1 %289 to i32
  %291 = call i32 @assert(i32 %290)
  %292 = load i8**, i8*** @replies, align 8
  %293 = getelementptr inbounds i8*, i8** %292, i64 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8** %293, align 8
  %294 = load i8**, i8*** @replies, align 8
  %295 = getelementptr inbounds i8*, i8** %294, i64 1
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0), i8** %295, align 8
  store i32 1, i32* @lang, align 4
  %296 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %297 = call i32 @vlc_http_file_seek(%struct.vlc_http_resource* %296, i32 0)
  %298 = icmp eq i32 %297, 0
  %299 = zext i1 %298 to i32
  %300 = call i32 @assert(i32 %299)
  %301 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %302 = call i32 @vlc_http_file_can_seek(%struct.vlc_http_resource* %301)
  %303 = call i32 @assert(i32 %302)
  %304 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %305 = call i32 @vlc_http_file_get_size(%struct.vlc_http_resource* %304)
  %306 = icmp eq i32 %305, 2
  %307 = zext i1 %306 to i32
  %308 = call i32 @assert(i32 %307)
  %309 = load i8**, i8*** @replies, align 8
  %310 = getelementptr inbounds i8*, i8** %309, i64 0
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i8** %310, align 8
  %311 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %312 = call i32 @vlc_http_file_seek(%struct.vlc_http_resource* %311, i32 0)
  %313 = icmp eq i32 %312, 0
  %314 = zext i1 %313 to i32
  %315 = call i32 @assert(i32 %314)
  %316 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %317 = call i8* @vlc_http_file_get_redirect(%struct.vlc_http_resource* %316)
  %318 = icmp eq i8* %317, null
  %319 = zext i1 %318 to i32
  %320 = call i32 @assert(i32 %319)
  %321 = load i8**, i8*** @replies, align 8
  %322 = getelementptr inbounds i8*, i8** %321, i64 0
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0), i8** %322, align 8
  %323 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %324 = call i32 @vlc_http_file_seek(%struct.vlc_http_resource* %323, i32 0)
  %325 = icmp eq i32 %324, 0
  %326 = zext i1 %325 to i32
  %327 = call i32 @assert(i32 %326)
  %328 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %329 = call i8* @vlc_http_file_get_redirect(%struct.vlc_http_resource* %328)
  %330 = icmp eq i8* %329, null
  %331 = zext i1 %330 to i32
  %332 = call i32 @assert(i32 %331)
  %333 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %334 = call i32 @vlc_http_file_destroy(%struct.vlc_http_resource* %333)
  store i32 0, i32* @secure, align 4
  store i32 -1, i32* @lang, align 4
  %335 = load i8*, i8** @url_http, align 8
  %336 = load i32*, i32** @ua, align 8
  %337 = call %struct.vlc_http_resource* @vlc_http_file_create(i32* null, i8* %335, i32* %336, i32* null)
  store %struct.vlc_http_resource* %337, %struct.vlc_http_resource** %2, align 8
  %338 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %339 = icmp ne %struct.vlc_http_resource* %338, null
  %340 = zext i1 %339 to i32
  %341 = call i32 @assert(i32 %340)
  %342 = load i8**, i8*** @replies, align 8
  %343 = getelementptr inbounds i8*, i8** %342, i64 0
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i8** %343, align 8
  %344 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %345 = call i8* @vlc_http_file_get_redirect(%struct.vlc_http_resource* %344)
  store i8* %345, i8** %3, align 8
  %346 = load i8*, i8** %3, align 8
  %347 = icmp ne i8* %346, null
  br i1 %347, label %348, label %353

348:                                              ; preds = %91
  %349 = load i8*, i8** %3, align 8
  %350 = load i8*, i8** @url_mmsh, align 8
  %351 = call i64 @strcmp(i8* %349, i8* %350)
  %352 = icmp eq i64 %351, 0
  br label %353

353:                                              ; preds = %348, %91
  %354 = phi i1 [ false, %91 ], [ %352, %348 ]
  %355 = zext i1 %354 to i32
  %356 = call i32 @assert(i32 %355)
  %357 = load i8*, i8** %3, align 8
  %358 = call i32 @free(i8* %357)
  %359 = load i8**, i8*** @replies, align 8
  %360 = getelementptr inbounds i8*, i8** %359, i64 0
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0), i8** %360, align 8
  %361 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %362 = call i32 @vlc_http_file_seek(%struct.vlc_http_resource* %361, i32 0)
  %363 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %364 = call i8* @vlc_http_file_get_redirect(%struct.vlc_http_resource* %363)
  store i8* %364, i8** %3, align 8
  %365 = load i8*, i8** %3, align 8
  %366 = icmp ne i8* %365, null
  br i1 %366, label %367, label %372

367:                                              ; preds = %353
  %368 = load i8*, i8** %3, align 8
  %369 = load i8*, i8** @url_icyx, align 8
  %370 = call i64 @strcmp(i8* %368, i8* %369)
  %371 = icmp eq i64 %370, 0
  br label %372

372:                                              ; preds = %367, %353
  %373 = phi i1 [ false, %353 ], [ %371, %367 ]
  %374 = zext i1 %373 to i32
  %375 = call i32 @assert(i32 %374)
  %376 = load i8*, i8** %3, align 8
  %377 = call i32 @free(i8* %376)
  %378 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %379 = call i32 @vlc_http_file_destroy(%struct.vlc_http_resource* %378)
  %380 = call %struct.vlc_http_resource* @vlc_http_file_create(i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32* null, i32* null)
  store %struct.vlc_http_resource* %380, %struct.vlc_http_resource** %2, align 8
  %381 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %382 = icmp eq %struct.vlc_http_resource* %381, null
  %383 = zext i1 %382 to i32
  %384 = call i32 @assert(i32 %383)
  %385 = call %struct.vlc_http_resource* @vlc_http_file_create(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32* null, i32* null)
  store %struct.vlc_http_resource* %385, %struct.vlc_http_resource** %2, align 8
  %386 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %387 = icmp eq %struct.vlc_http_resource* %386, null
  %388 = zext i1 %387 to i32
  %389 = call i32 @assert(i32 %388)
  %390 = call %struct.vlc_http_resource* @vlc_http_file_create(i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32* null, i32* null)
  store %struct.vlc_http_resource* %390, %struct.vlc_http_resource** %2, align 8
  %391 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %392 = icmp ne %struct.vlc_http_resource* %391, null
  %393 = zext i1 %392 to i32
  %394 = call i32 @assert(i32 %393)
  %395 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %2, align 8
  %396 = call i32 @vlc_http_file_destroy(%struct.vlc_http_resource* %395)
  %397 = load i32, i32* @jar, align 4
  %398 = call i32 @vlc_http_cookies_destroy(i32 %397)
  ret i32 0
}

declare dso_local i32 @vlc_http_cookies_new(...) #1

declare dso_local %struct.vlc_http_resource* @vlc_http_file_create(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_http_res_set_login(%struct.vlc_http_resource*, i8*, i8*) #1

declare dso_local i32 @vlc_http_file_seek(%struct.vlc_http_resource*, i32) #1

declare dso_local i32 @vlc_http_file_get_status(%struct.vlc_http_resource*) #1

declare dso_local i8* @vlc_http_file_get_redirect(%struct.vlc_http_resource*) #1

declare dso_local i32 @vlc_http_file_get_size(%struct.vlc_http_resource*) #1

declare dso_local i32 @vlc_http_file_can_seek(%struct.vlc_http_resource*) #1

declare dso_local i8* @vlc_http_file_get_type(%struct.vlc_http_resource*) #1

declare dso_local i32* @vlc_http_file_read(%struct.vlc_http_resource*) #1

declare dso_local i32 @vlc_http_res_destroy(%struct.vlc_http_resource*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_http_file_destroy(%struct.vlc_http_resource*) #1

declare dso_local i32 @vlc_http_cookies_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
