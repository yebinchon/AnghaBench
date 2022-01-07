; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_append_number.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_append_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"must not be NaN or Inf\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@FPCONV_G_FMT_BUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i32*, i32)* @json_append_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_append_number(i32* %0, %struct.TYPE_4__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call double @lua_tonumber(i32* %11, i32 %12)
  store double %13, double* %9, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = load double, double* %9, align 8
  %20 = call i64 @isinf(double %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load double, double* %9, align 8
  %24 = call i64 @isnan(double %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22, %18
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @json_encode_exception(i32* %27, %struct.TYPE_4__* %28, i32* %29, i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %26, %22
  br label %59

33:                                               ; preds = %4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load double, double* %9, align 8
  %40 = call i64 @isnan(double %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @strbuf_append_mem(i32* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  br label %73

45:                                               ; preds = %38
  br label %58

46:                                               ; preds = %33
  %47 = load double, double* %9, align 8
  %48 = call i64 @isinf(double %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load double, double* %9, align 8
  %52 = call i64 @isnan(double %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %46
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @strbuf_append_mem(i32* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %73

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %45
  br label %59

59:                                               ; preds = %58, %32
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @FPCONV_G_FMT_BUFSIZE, align 4
  %62 = call i32 @strbuf_ensure_empty_length(i32* %60, i32 %61)
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @strbuf_empty_ptr(i32* %63)
  %65 = load double, double* %9, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @fpconv_g_fmt(i32 %64, double %65, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @strbuf_extend_length(i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %59, %54, %42
  ret void
}

declare dso_local double @lua_tonumber(i32*, i32) #1

declare dso_local i64 @isinf(double) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @json_encode_exception(i32*, %struct.TYPE_4__*, i32*, i32, i8*) #1

declare dso_local i32 @strbuf_append_mem(i32*, i8*, i32) #1

declare dso_local i32 @strbuf_ensure_empty_length(i32*, i32) #1

declare dso_local i32 @fpconv_g_fmt(i32, double, i32) #1

declare dso_local i32 @strbuf_empty_ptr(i32*) #1

declare dso_local i32 @strbuf_extend_length(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
