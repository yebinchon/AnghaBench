; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_names_ids.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_names_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_names_ids.rgDispId = private unnamed_addr constant [2 x i32] [i32 -559038737, i32 -559038737], align 4
@IID_IFontDisp = common dso_local global i32 0, align 4
@IID_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"GetIDsOfNames: \22%s\22, \22%s\22 returns 0x%08x, expected 0x%08x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"GetIDsOfNames: \22%s\22 gets DISPID 0x%08x, expected 0x%08x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"GetIDsOfNames: ..., \22%s\22 gets DISPID 0x%08x, expected 0x%08x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*, i8*, i32, i32, i32, i32, i32)* @test_names_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_names_ids(i32* %0, i8* %1, i32* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca [2 x i32], align 4
  %23 = alloca [2 x i32*], align 16
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %24 = bitcast [2 x i32]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast ([2 x i32]* @__const.test_names_ids.rgDispId to i8*), i64 8, i1 false)
  %25 = getelementptr inbounds [2 x i32*], [2 x i32*]* %23, i64 0, i64 0
  %26 = load i32*, i32** %10, align 8
  store i32* %26, i32** %25, align 8
  %27 = getelementptr inbounds i32*, i32** %25, i64 1
  %28 = load i32*, i32** %12, align 8
  store i32* %28, i32** %27, align 8
  %29 = call i32 @pOleCreateFontIndirect(i32* null, i32* @IID_IFontDisp, i32** %19)
  %30 = load i32*, i32** %19, align 8
  store i32* %30, i32** %20, align 8
  %31 = load i32*, i32** %20, align 8
  %32 = getelementptr inbounds [2 x i32*], [2 x i32*]* %23, i64 0, i64 0
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* %14, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %36 = call i32 @IFontDisp_GetIDsOfNames(i32* %31, i32* @IID_NULL, i32** %32, i32 %33, i32 %34, i32* %35)
  store i32 %36, i32* %21, align 4
  %37 = load i32, i32* %21, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %17, align 4
  %45 = call i32 (i32, i8*, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %42, i32 %43, i32 %44)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i8*, i8** %11, align 8
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %15, align 4
  %55 = call i32 (i32, i8*, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %51, i32 %53, i32 %54)
  %56 = load i32, i32* %18, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %69

58:                                               ; preds = %9
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i8*, i8** %13, align 8
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i32 (i32, i8*, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i8* %64, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %58, %9
  %70 = load i32*, i32** %20, align 8
  %71 = call i32 @IFontDisp_Release(i32* %70)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pOleCreateFontIndirect(i32*, i32*, i32**) #2

declare dso_local i32 @IFontDisp_GetIDsOfNames(i32*, i32*, i32**, i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, i8*, ...) #2

declare dso_local i32 @IFontDisp_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
