; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-env-util.c_test_env_strv_get_n.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-env-util.c_test_env_strv_get_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"FOO=NO NO NO\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"FOO=BAR BAR\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"BAR=waldo\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"PATH=unset\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"FOO__\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"BAR BAR\00", align 1
@REPLACE_ENV_USE_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"FOO\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"PATH__\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_env_strv_get_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_env_strv_get_n() #0 {
  %1 = alloca [5 x i8*], align 16
  %2 = alloca i8**, align 8
  %3 = bitcast [5 x i8*]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false)
  %4 = bitcast i8* %3 to [5 x i8*]*
  %5 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8** %5, align 16
  %6 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8** %6, align 8
  %7 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i32 0, i32 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8** %7, align 16
  %8 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i32 0, i32 3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8** %8, align 8
  %9 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 0
  store i8** %9, i8*** %2, align 8
  %10 = load i8**, i8*** %2, align 8
  %11 = call i32 @strv_env_get_n(i8** %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 3, i32 0)
  %12 = call i32 @streq(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %13 = call i32 @assert_se(i32 %12)
  %14 = load i8**, i8*** %2, align 8
  %15 = load i32, i32* @REPLACE_ENV_USE_ENVIRONMENT, align 4
  %16 = call i32 @strv_env_get_n(i8** %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 3, i32 %15)
  %17 = call i32 @streq(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %18 = call i32 @assert_se(i32 %17)
  %19 = load i8**, i8*** %2, align 8
  %20 = call i32 @strv_env_get_n(i8** %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3, i32 0)
  %21 = call i32 @streq(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %22 = call i32 @assert_se(i32 %21)
  %23 = load i8**, i8*** %2, align 8
  %24 = load i32, i32* @REPLACE_ENV_USE_ENVIRONMENT, align 4
  %25 = call i32 @strv_env_get_n(i8** %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3, i32 %24)
  %26 = call i32 @streq(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %27 = call i32 @assert_se(i32 %26)
  %28 = load i8**, i8*** %2, align 8
  %29 = call i32 @strv_env_get_n(i8** %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 4, i32 0)
  %30 = call i32 @streq(i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %31 = call i32 @assert_se(i32 %30)
  %32 = load i8**, i8*** %2, align 8
  %33 = call i32 @strv_env_get_n(i8** %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4, i32 0)
  %34 = call i32 @streq(i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %35 = call i32 @assert_se(i32 %34)
  %36 = load i8**, i8*** %2, align 8
  %37 = load i32, i32* @REPLACE_ENV_USE_ENVIRONMENT, align 4
  %38 = call i32 @strv_env_get_n(i8** %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 4, i32 %37)
  %39 = call i32 @streq(i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %40 = call i32 @assert_se(i32 %39)
  %41 = load i8**, i8*** %2, align 8
  %42 = load i32, i32* @REPLACE_ENV_USE_ENVIRONMENT, align 4
  %43 = call i32 @strv_env_get_n(i8** %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4, i32 %42)
  %44 = call i32 @streq(i32 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %45 = call i32 @assert_se(i32 %44)
  %46 = load i8**, i8*** %2, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 3
  store i8* null, i8** %47, align 8
  %48 = load i8**, i8*** %2, align 8
  %49 = call i32 @strv_env_get_n(i8** %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 4, i32 0)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert_se(i32 %52)
  %54 = load i8**, i8*** %2, align 8
  %55 = call i32 @strv_env_get_n(i8** %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4, i32 0)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert_se(i32 %58)
  %60 = load i8**, i8*** %2, align 8
  %61 = load i32, i32* @REPLACE_ENV_USE_ENVIRONMENT, align 4
  %62 = call i32 @strv_env_get_n(i8** %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 4, i32 %61)
  %63 = call i32 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %64 = call i32 @streq_ptr(i32 %62, i32 %63)
  %65 = call i32 @assert_se(i32 %64)
  %66 = load i8**, i8*** %2, align 8
  %67 = load i32, i32* @REPLACE_ENV_USE_ENVIRONMENT, align 4
  %68 = call i32 @strv_env_get_n(i8** %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4, i32 %67)
  %69 = call i32 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %70 = call i32 @streq_ptr(i32 %68, i32 %69)
  %71 = call i32 @assert_se(i32 %70)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @streq(i32, i8*) #2

declare dso_local i32 @strv_env_get_n(i8**, i8*, i32, i32) #2

declare dso_local i32 @streq_ptr(i32, i32) #2

declare dso_local i32 @getenv(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
