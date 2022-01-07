; ModuleID = '/home/carl/AnghaBench/timescaledb/src/loader/extr_loader.c_do_load.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/loader/extr_loader.c_do_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SO_NAME_LEN = common dso_local global i32 0, align 4
@soversion = common dso_local global i32 0, align 4
@MAX_VERSION_LEN = common dso_local global i32 0, align 4
@loaded = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@EXTENSION_SO = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"0.9.0\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"0.9.1\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"timescaledb.loader_present\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@PGC_USERSET = common dso_local global i32 0, align 4
@PGC_S_SESSION = common dso_local global i32 0, align 4
@post_parse_analyze_hook = common dso_local global i32* null, align 8
@POST_LOAD_INIT_FN = common dso_local global i32 0, align 4
@extension_post_parse_analyze_hook = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_load() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = call i8* (...) @extension_version()
  store i8* %7, i8** %1, align 8
  %8 = load i32, i32* @MAX_SO_NAME_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  %12 = load i32, i32* @soversion, align 4
  %13 = load i8*, i8** %1, align 8
  %14 = load i32, i32* @MAX_VERSION_LEN, align 4
  %15 = call i32 @StrNCpy(i32 %12, i8* %13, i32 %14)
  %16 = load i32, i32* @loaded, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  store i32 1, i32* %5, align 4
  br label %58

19:                                               ; preds = %0
  %20 = load i32, i32* @MAX_SO_NAME_LEN, align 4
  %21 = load i8*, i8** @EXTENSION_SO, align 8
  %22 = load i8*, i8** %1, align 8
  %23 = call i32 @snprintf(i8* %11, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  store i32 1, i32* @loaded, align 4
  %24 = call i64 (...) @CalledInParallelWorker()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %58

27:                                               ; preds = %19
  %28 = load i8*, i8** %1, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %1, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @PGC_USERSET, align 4
  %37 = load i32, i32* @PGC_S_SESSION, align 4
  %38 = call i32 @SetConfigOption(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32*, i32** @post_parse_analyze_hook, align 8
  store i32* %40, i32** %4, align 8
  store i32* null, i32** @post_parse_analyze_hook, align 8
  %41 = call i32 (...) @PG_TRY()
  %42 = load i32, i32* @POST_LOAD_INIT_FN, align 4
  %43 = call i32* @load_external_function(i8* %11, i32 %42, i32 0, i32* null)
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @CharGetDatum(i32 0)
  %49 = call i32 @DirectFunctionCall1(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %39
  %51 = call i32 (...) @PG_CATCH()
  %52 = load i32*, i32** @post_parse_analyze_hook, align 8
  store i32* %52, i32** @extension_post_parse_analyze_hook, align 8
  %53 = load i32*, i32** %4, align 8
  store i32* %53, i32** @post_parse_analyze_hook, align 8
  %54 = call i32 (...) @PG_RE_THROW()
  %55 = call i32 (...) @PG_END_TRY()
  %56 = load i32*, i32** @post_parse_analyze_hook, align 8
  store i32* %56, i32** @extension_post_parse_analyze_hook, align 8
  %57 = load i32*, i32** %4, align 8
  store i32* %57, i32** @post_parse_analyze_hook, align 8
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %50, %26, %18
  %59 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %5, align 4
  switch i32 %60, label %62 [
    i32 0, label %61
    i32 1, label %61
  ]

61:                                               ; preds = %58, %58
  ret void

62:                                               ; preds = %58
  unreachable
}

declare dso_local i8* @extension_version(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @StrNCpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @CalledInParallelWorker(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @SetConfigOption(i8*, i8*, i32, i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32* @load_external_function(i8*, i32, i32, i32*) #1

declare dso_local i32 @DirectFunctionCall1(i32*, i32) #1

declare dso_local i32 @CharGetDatum(i32) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @PG_RE_THROW(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
