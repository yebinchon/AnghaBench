; ModuleID = '/home/carl/AnghaBench/streem/src/extr_kvs.c_strm_kvs_init.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_kvs.c_strm_kvs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"kvs\00", align 1
@ns_kvs = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@kvs_get = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@kvs_put = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@kvs_update = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"txn\00", align 1
@kvs_txn = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@kvs_close = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@kvs_str = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"kvs_txn\00", align 1
@ns_txn = common dso_local global i32* null, align 8
@txn_get = common dso_local global i32 0, align 4
@txn_put = common dso_local global i32 0, align 4
@txn_update = common dso_local global i32 0, align 4
@txn_str = common dso_local global i32 0, align 4
@kvs_new = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strm_kvs_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32* @strm_ns_new(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %3, i32** @ns_kvs, align 8
  %4 = load i32*, i32** @ns_kvs, align 8
  %5 = load i32, i32* @kvs_get, align 4
  %6 = call i32 @strm_cfunc_value(i32 %5)
  %7 = call i32 @strm_var_def(i32* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = load i32*, i32** @ns_kvs, align 8
  %9 = load i32, i32* @kvs_put, align 4
  %10 = call i32 @strm_cfunc_value(i32 %9)
  %11 = call i32 @strm_var_def(i32* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load i32*, i32** @ns_kvs, align 8
  %13 = load i32, i32* @kvs_update, align 4
  %14 = call i32 @strm_cfunc_value(i32 %13)
  %15 = call i32 @strm_var_def(i32* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** @ns_kvs, align 8
  %17 = load i32, i32* @kvs_txn, align 4
  %18 = call i32 @strm_cfunc_value(i32 %17)
  %19 = call i32 @strm_var_def(i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** @ns_kvs, align 8
  %21 = load i32, i32* @kvs_close, align 4
  %22 = call i32 @strm_cfunc_value(i32 %21)
  %23 = call i32 @strm_var_def(i32* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** @ns_kvs, align 8
  %25 = load i32, i32* @kvs_str, align 4
  %26 = call i32 @strm_cfunc_value(i32 %25)
  %27 = call i32 @strm_var_def(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %26)
  %28 = call i32* @strm_ns_new(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32* %28, i32** @ns_txn, align 8
  %29 = load i32*, i32** @ns_txn, align 8
  %30 = load i32, i32* @txn_get, align 4
  %31 = call i32 @strm_cfunc_value(i32 %30)
  %32 = call i32 @strm_var_def(i32* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** @ns_txn, align 8
  %34 = load i32, i32* @txn_put, align 4
  %35 = call i32 @strm_cfunc_value(i32 %34)
  %36 = call i32 @strm_var_def(i32* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** @ns_txn, align 8
  %38 = load i32, i32* @txn_update, align 4
  %39 = call i32 @strm_cfunc_value(i32 %38)
  %40 = call i32 @strm_var_def(i32* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** @ns_kvs, align 8
  %42 = load i32, i32* @txn_str, align 4
  %43 = call i32 @strm_cfunc_value(i32 %42)
  %44 = call i32 @strm_var_def(i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* @kvs_new, align 4
  %47 = call i32 @strm_cfunc_value(i32 %46)
  %48 = call i32 @strm_var_def(i32* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %47)
  ret void
}

declare dso_local i32* @strm_ns_new(i32*, i8*) #1

declare dso_local i32 @strm_var_def(i32*, i8*, i32) #1

declare dso_local i32 @strm_cfunc_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
