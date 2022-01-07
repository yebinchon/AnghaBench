; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c__ltls_context_write.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c__ltls_context_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_context = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"SSL_write error:%d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid SSL_write:%d\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @_ltls_context_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ltls_context_write(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.tls_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call %struct.tls_context* @_check_context(i32* %9, i32 1)
  store %struct.tls_context* %10, %struct.tls_context** %3, align 8
  store i64 0, i64* %4, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @lua_tolstring(i32* %11, i32 2, i64* %4)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %5, align 8
  br label %14

14:                                               ; preds = %54, %1
  %15 = load i64, i64* %4, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  %18 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %19 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @SSL_write(i32 %20, i8* %21, i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %28 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @SSL_get_error(i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @luaL_error(i32* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %54

35:                                               ; preds = %17
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %4, align 8
  %39 = icmp ule i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %4, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %4, align 8
  br label %53

49:                                               ; preds = %35
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @luaL_error(i32* %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %40
  br label %54

54:                                               ; preds = %53, %26
  br label %14

55:                                               ; preds = %14
  %56 = load i32*, i32** %2, align 8
  %57 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %58 = call i32 @_bio_read(i32* %56, %struct.tls_context* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @lua_pushstring(i32* %62, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %55
  ret i32 1
}

declare dso_local %struct.tls_context* @_check_context(i32*, i32) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @SSL_write(i32, i8*, i64) #1

declare dso_local i32 @SSL_get_error(i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @_bio_read(i32*, %struct.tls_context*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
