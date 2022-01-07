; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_proxy_http_generate_connection_request.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_proxy_http_generate_connection_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@__const.proxy_http_generate_connection_request.one = private unnamed_addr constant [9 x i8] c"CONNECT \00", align 1
@__const.proxy_http_generate_connection_request.two = private unnamed_addr constant [17 x i8] c" HTTP/1.1\0AHost: \00", align 16
@__const.proxy_http_generate_connection_request.three = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s%s:%hu%s%s:%hu%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @proxy_http_generate_connection_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_http_generate_connection_request(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca [9 x i8], align 1
  %5 = alloca [17 x i8], align 16
  %6 = alloca [5 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %12 = bitcast [9 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.proxy_http_generate_connection_request.one, i32 0, i32 0), i64 9, i1 false)
  %13 = bitcast [17 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.proxy_http_generate_connection_request.two, i32 0, i32 0), i64 17, i1 false)
  %14 = bitcast [5 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.proxy_http_generate_connection_request.three, i32 0, i32 0), i64 5, i1 false)
  %15 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = trunc i64 %16 to i32
  %23 = call i32 @ip_parse_addr(i32* %21, i8* %18, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %56

26:                                               ; preds = %1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ntohs(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i32, i32* @MAX_PACKET_SIZE, align 4
  %37 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %40 = load i32, i32* %10, align 4
  %41 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %42 = call i32 @snprintf(i8* %35, i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %18, i32 %38, i8* %39, i8* %18, i32 %40, i8* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %26
  %46 = load i32, i32* @MAX_PACKET_SIZE, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %26
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %56

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  store i32 1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %56

56:                                               ; preds = %50, %49, %25
  %57 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ip_parse_addr(i32*, i8*, i32) #3

declare dso_local i32 @ntohs(i32) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32, i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
