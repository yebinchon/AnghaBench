; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c__lctx_cert.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c__lctx_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_ctx = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"need certfile\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"need private key\00", align 1
@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"SSL_CTX_use_certificate_file error:%d\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"SSL_CTX_use_PrivateKey_file error:%d\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"SSL_CTX_check_private_key error:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @_lctx_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_lctx_cert(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.ssl_ctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.ssl_ctx* @_check_sslctx(i32* %7, i32 1)
  store %struct.ssl_ctx* %8, %struct.ssl_ctx** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i8* @lua_tostring(i32* %9, i32 2)
  store i8* %10, i8** %4, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i8* @lua_tostring(i32* %11, i32 3)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 (i32*, i8*, ...) @luaL_error(i32* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 (i32*, i8*, ...) @luaL_error(i32* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.ssl_ctx*, %struct.ssl_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.ssl_ctx, %struct.ssl_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %30 = call i32 @SSL_CTX_use_certificate_file(i32 %27, i8* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i32*, i8*, ...) @luaL_error(i32* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %24
  %38 = load %struct.ssl_ctx*, %struct.ssl_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.ssl_ctx, %struct.ssl_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %43 = call i32 @SSL_CTX_use_PrivateKey_file(i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i32*, i8*, ...) @luaL_error(i32* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %37
  %51 = load %struct.ssl_ctx*, %struct.ssl_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.ssl_ctx, %struct.ssl_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @SSL_CTX_check_private_key(i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (i32*, i8*, ...) @luaL_error(i32* %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %50
  ret i32 0
}

declare dso_local %struct.ssl_ctx* @_check_sslctx(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @SSL_CTX_use_certificate_file(i32, i8*, i32) #1

declare dso_local i32 @SSL_CTX_use_PrivateKey_file(i32, i8*, i32) #1

declare dso_local i32 @SSL_CTX_check_private_key(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
