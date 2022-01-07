; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_seafile_generate_magic_and_random_key.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_seafile_generate_magic_and_random_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_BAD_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Argument should not be null\00", align 1
@SEAFILE_TYPE_ENCRYPTION_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"repo_id\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"passwd\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"enc_version\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"random_key\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"salt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @seafile_generate_magic_and_random_key(i32 %0, i8* %1, i8* %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca [65 x i32], align 16
  %11 = alloca [65 x i32], align 16
  %12 = alloca [97 x i32], align 16
  %13 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32** %3, i32*** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16, %4
  %20 = load i32**, i32*** %9, align 8
  %21 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %22 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %23 = call i32 @g_set_error(i32** %20, i32 %21, i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %65

24:                                               ; preds = %16
  %25 = bitcast [65 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 260, i1 false)
  %26 = bitcast [65 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 260, i1 false)
  %27 = bitcast [97 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 388, i1 false)
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %28, 3
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = getelementptr inbounds [65 x i32], [65 x i32]* %10, i64 0, i64 0
  %32 = call i64 @seafile_generate_repo_salt(i32* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32* null, i32** %5, align 8
  br label %65

35:                                               ; preds = %30, %24
  %36 = load i32, i32* %6, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds [65 x i32], [65 x i32]* %10, i64 0, i64 0
  %40 = getelementptr inbounds [65 x i32], [65 x i32]* %11, i64 0, i64 0
  %41 = call i32 @seafile_generate_magic(i32 %36, i8* %37, i8* %38, i32* %39, i32* %40)
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = getelementptr inbounds [65 x i32], [65 x i32]* %10, i64 0, i64 0
  %45 = getelementptr inbounds [97 x i32], [97 x i32]* %12, i64 0, i64 0
  %46 = call i64 @seafile_generate_random_key(i8* %42, i32 %43, i32* %44, i32* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store i32* null, i32** %5, align 8
  br label %65

49:                                               ; preds = %35
  %50 = load i32, i32* @SEAFILE_TYPE_ENCRYPTION_INFO, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = getelementptr inbounds [65 x i32], [65 x i32]* %11, i64 0, i64 0
  %55 = getelementptr inbounds [97 x i32], [97 x i32]* %12, i64 0, i64 0
  %56 = call i32* @g_object_new(i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %55, i32* null)
  store i32* %56, i32** %13, align 8
  %57 = load i32, i32* %6, align 4
  %58 = icmp sge i32 %57, 3
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i32*, i32** %13, align 8
  %61 = getelementptr inbounds [65 x i32], [65 x i32]* %10, i64 0, i64 0
  %62 = call i32 @g_object_set(i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %61, i32* null)
  br label %63

63:                                               ; preds = %59, %49
  %64 = load i32*, i32** %13, align 8
  store i32* %64, i32** %5, align 8
  br label %65

65:                                               ; preds = %63, %48, %34, %19
  %66 = load i32*, i32** %5, align 8
  ret i32* %66
}

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @seafile_generate_repo_salt(i32*) #1

declare dso_local i32 @seafile_generate_magic(i32, i8*, i8*, i32*, i32*) #1

declare dso_local i64 @seafile_generate_random_key(i8*, i32, i32*, i32*) #1

declare dso_local i32* @g_object_new(i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @g_object_set(i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
