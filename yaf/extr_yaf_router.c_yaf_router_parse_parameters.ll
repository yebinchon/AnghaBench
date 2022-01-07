; ModuleID = '/home/carl/AnghaBench/yaf/extr_yaf_router.c_yaf_router_parse_parameters.c'
source_filename = "/home/carl/AnghaBench/yaf/extr_yaf_router.c_yaf_router_parse_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YAF_ROUTER_URL_DELIMIETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yaf_router_parse_parameters(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @array_init(i32* %11)
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @estrdup(i8* %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* @YAF_ROUTER_URL_DELIMIETER, align 4
  %17 = call i8* @php_strtok_r(i8* %15, i32 %16, i8** %6)
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %46, %2
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load i32, i32* @YAF_ROUTER_URL_DELIMIETER, align 4
  %28 = call i8* @php_strtok_r(i8* null, i32 %27, i8** %6)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @ZVAL_STRING(i32* %9, i8* %36)
  br label %40

38:                                               ; preds = %31, %26
  %39 = call i32 @ZVAL_NULL(i32* %9)
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @Z_ARRVAL_P(i32* %41)
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @zend_hash_str_update(i32 %42, i8* %43, i64 %44, i32* %9)
  br label %46

46:                                               ; preds = %40, %21
  %47 = load i32, i32* @YAF_ROUTER_URL_DELIMIETER, align 4
  %48 = call i8* @php_strtok_r(i8* null, i32 %47, i8** %6)
  store i8* %48, i8** %5, align 8
  br label %18

49:                                               ; preds = %18
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @efree(i8* %50)
  ret void
}

declare dso_local i32 @array_init(i32*) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i8* @php_strtok_r(i8*, i32, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ZVAL_STRING(i32*, i8*) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @zend_hash_str_update(i32, i8*, i64, i32*) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
