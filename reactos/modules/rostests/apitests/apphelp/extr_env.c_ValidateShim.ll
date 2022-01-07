; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_env.c_ValidateShim.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_env.c_ValidateShim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDB_DATABASE_MAIN_SHIM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Expected a valid handle\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Expected pSdbTagRefToTagID to succeed\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Expected pdb to be a valid pointer\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Expected tagid to be a valid tag id, was: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Expected tag to be 0x700b, was 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @ValidateShim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ValidateShim(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [256 x i32], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @SDB_DATABASE_MAIN_SHIM, align 4
  %12 = call i32* @pSdbInitDatabase(i32 %11, i32* null)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %62

19:                                               ; preds = %2
  store i32* null, i32** %6, align 8
  store i32 -559038737, i32* %7, align 4
  %20 = bitcast [256 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 1024, i1 false)
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i32 @mbstowcs(i32* %21, i8* %22, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @pSdbTagRefToTagID(i32* %26, i32 %27, i32** %6, i32* %7)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @TRUE, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %19
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, -559038737
  br label %46

46:                                               ; preds = %43, %36
  %47 = phi i1 [ false, %36 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @pSdbGetTagFromTagID(i32* %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 28683
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %10, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %46, %19
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @pSdbReleaseDatabase(i32* %60)
  br label %62

62:                                               ; preds = %59, %2
  ret void
}

declare dso_local i32* @pSdbInitDatabase(i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mbstowcs(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @pSdbTagRefToTagID(i32*, i32, i32**, i32*) #1

declare dso_local i32 @pSdbGetTagFromTagID(i32*, i32) #1

declare dso_local i32 @pSdbReleaseDatabase(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
