; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_tunnel_test.c_proxy_client_process.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_tunnel_test.c_proxy_client_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Incomplete request\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"CONNECT %63[^:]:%u HTTP/1.%1u%n\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"www.example.com\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Host: %63[^:]:%u\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"\0D\0AProxy-Authorization: Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==\0D\0A\00", align 1
@__const.proxy_client_process.resp = private unnamed_addr constant [25 x i8] c"HTTP/1.1 500 Failure\0D\0A\0D\0A\00", align 16
@SHUT_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @proxy_client_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proxy_client_process(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [25 x i8], align 16
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %30, %1
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %13 = load i64, i64* %4, align 8
  %14 = call i32* @strnstr(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load i32, i32* %2, align 4
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i64, i64* %4, align 8
  %22 = sub i64 1024, %21
  %23 = sub i64 %22, 1
  %24 = trunc i64 %23 to i32
  %25 = call i64 @recv(i32 %17, i8* %20, i32 %24, i32 0)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = call i32 @assert(i32 0)
  br label %30

30:                                               ; preds = %28, %16
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %4, align 8
  br label %11

34:                                               ; preds = %11
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %35
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %39 = call i32 (i8*, i8*, i8*, i32*, ...) @sscanf(i8* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %38, i32* %7, i32* %8, i32* %9)
  %40 = icmp eq i32 %39, 3
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 443
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 1
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %63 = call i32 (i8*, i8*, i8*, i32*, ...) @sscanf(i8* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %62, i32* %7)
  %64 = icmp eq i32 %63, 2
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 443
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %78 = call i32* @strstr(i8* %77, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  %79 = icmp ne i32* %78, null
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = bitcast [25 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %82, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.proxy_client_process.resp, i32 0, i32 0), i64 25, i1 false)
  %83 = load i32, i32* %2, align 4
  %84 = getelementptr inbounds [25 x i8], [25 x i8]* %10, i64 0, i64 0
  %85 = getelementptr inbounds [25 x i8], [25 x i8]* %10, i64 0, i64 0
  %86 = call i64 @strlen(i8* %85)
  %87 = call i64 @write(i32 %83, i8* %84, i64 %86)
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = getelementptr inbounds [25 x i8], [25 x i8]* %10, i64 0, i64 0
  %90 = call i64 @strlen(i8* %89)
  %91 = icmp eq i64 %88, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @SHUT_WR, align 4
  %96 = call i32 @shutdown(i32 %94, i32 %95)
  ret void
}

declare dso_local i32* @strnstr(i8*, i8*, i64) #1

declare dso_local i64 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @shutdown(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
