; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c__ltls_context_handshake.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c__ltls_context_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_context = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"handshake is finished\00", align 1
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"SSL_do_handshake error:%d ret:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @_ltls_context_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ltls_context_handshake(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tls_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.tls_context* @_check_context(i32* %11, i32 1)
  store %struct.tls_context* %12, %struct.tls_context** %4, align 8
  store i64 0, i64* %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @lua_tolstring(i32* %13, i32 2, i64* %5)
  store i8* %14, i8** %6, align 8
  %15 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %16 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @SSL_is_init_finished(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 (i32*, i8*, ...) @luaL_error(i32* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i64, i64* %5, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @_bio_write(i32* %30, %struct.tls_context* %31, i8* %32, i64 %33)
  br label %35

35:                                               ; preds = %29, %26, %23
  %36 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %37 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @SSL_is_init_finished(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %91, label %41

41:                                               ; preds = %35
  %42 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %43 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @SSL_do_handshake(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %92

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %49
  %53 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %54 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @SSL_get_error(i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61, %52
  %66 = load i32*, i32** %3, align 8
  %67 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %68 = call i32 @_bio_read(i32* %66, %struct.tls_context* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %2, align 4
  br label %92

72:                                               ; preds = %65
  br label %78

73:                                               ; preds = %61
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 (i32*, i8*, ...) @luaL_error(i32* %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %72
  br label %89

79:                                               ; preds = %49
  %80 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %81 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @SSL_get_error(i32 %82, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (i32*, i8*, ...) @luaL_error(i32* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %79, %78
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90, %35
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %71, %48
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.tls_context* @_check_context(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i64 @SSL_is_init_finished(i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @_bio_write(i32*, %struct.tls_context*, i8*, i64) #1

declare dso_local i32 @SSL_do_handshake(i32) #1

declare dso_local i32 @SSL_get_error(i32, i32) #1

declare dso_local i32 @_bio_read(i32*, %struct.tls_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
