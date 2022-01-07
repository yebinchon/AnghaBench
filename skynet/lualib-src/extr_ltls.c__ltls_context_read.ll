; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c__ltls_context_read.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c__ltls_context_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_context = type { i32 }

@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"SSL_read error:%d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid SSL_read:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @_ltls_context_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ltls_context_read(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.tls_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call %struct.tls_context* @_check_context(i32* %10, i32 1)
  store %struct.tls_context* %11, %struct.tls_context** %3, align 8
  store i64 0, i64* %4, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i8* @lua_tolstring(i32* %12, i32 2, i64* %4)
  store i8* %13, i8** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32*, i32** %2, align 8
  %21 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @_bio_write(i32* %20, %struct.tls_context* %21, i8* %22, i64 %23)
  br label %25

25:                                               ; preds = %19, %16, %1
  store i32 0, i32* %7, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @luaL_buffinit(i32* %26, i32* %8)
  br label %28

28:                                               ; preds = %68, %25
  %29 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %30 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %33 = call i32 @SSL_read(i32 %31, i8* %32, i32 4096)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %28
  %37 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %38 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @SSL_get_error(i32 %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %36
  br label %69

50:                                               ; preds = %45
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @luaL_error(i32* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %67

54:                                               ; preds = %28
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ule i64 %56, 4096
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @luaL_addlstring(i32* %8, i8* %59, i32 %60)
  br label %66

62:                                               ; preds = %54
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @luaL_error(i32* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %50
  br label %68

68:                                               ; preds = %67
  br i1 true, label %28, label %69

69:                                               ; preds = %68, %49
  %70 = call i32 @luaL_pushresult(i32* %8)
  ret i32 1
}

declare dso_local %struct.tls_context* @_check_context(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @_bio_write(i32*, %struct.tls_context*, i8*, i64) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @SSL_read(i32, i8*, i32) #1

declare dso_local i32 @SSL_get_error(i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
