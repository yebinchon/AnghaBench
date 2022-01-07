; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c__init_bio.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c__init_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_context = type { i8*, i8*, i32 }
%struct.ssl_ctx = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"SSL_new faild\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"new in bio faild\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"new out bio faild\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.tls_context*, %struct.ssl_ctx*)* @_init_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_init_bio(i32* %0, %struct.tls_context* %1, %struct.ssl_ctx* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tls_context*, align 8
  %6 = alloca %struct.ssl_ctx*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.tls_context* %1, %struct.tls_context** %5, align 8
  store %struct.ssl_ctx* %2, %struct.ssl_ctx** %6, align 8
  %7 = load %struct.ssl_ctx*, %struct.ssl_ctx** %6, align 8
  %8 = getelementptr inbounds %struct.ssl_ctx, %struct.ssl_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @SSL_new(i32 %9)
  %11 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %12 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %14 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @luaL_error(i32* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %3
  %21 = call i32 (...) @BIO_s_mem()
  %22 = call i8* @BIO_new(i32 %21)
  %23 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %24 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %26 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @luaL_error(i32* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %20
  %33 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %34 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @BIO_set_mem_eof_return(i8* %35, i32 -1)
  %37 = call i32 (...) @BIO_s_mem()
  %38 = call i8* @BIO_new(i32 %37)
  %39 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %40 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %42 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %32
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @luaL_error(i32* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %32
  %49 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %50 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @BIO_set_mem_eof_return(i8* %51, i32 -1)
  %53 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %54 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %57 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %60 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @SSL_set_bio(i32 %55, i8* %58, i8* %61)
  ret void
}

declare dso_local i32 @SSL_new(i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i8* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @BIO_set_mem_eof_return(i8*, i32) #1

declare dso_local i32 @SSL_set_bio(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
