; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_browse_ctx.c_test_GetObject.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_browse_ctx.c_test_GetObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_GetObject.one = private unnamed_addr constant [2 x i8] c"1\00", align 1
@__const.test_GetObject.five = private unnamed_addr constant [2 x i8] c"5\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"CreateItemMoniker() failed: 0x%08x\0A\00", align 1
@IID_IHlinkBrowseContext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"HlinkCreateBrowseContext() failed: 0x%08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MK_E_UNAVAILABLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"expected MK_E_UNAVAILABLE, got 0x%08x\0A\00", align 1
@Unknown = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Register() failed: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"GetObject() failed: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"wrong object returned\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Revoke() failed: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetObject() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [2 x i8], align 1
  %5 = alloca [2 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = bitcast [2 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.test_GetObject.one, i32 0, i32 0), i64 2, i1 false)
  %9 = bitcast [2 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.test_GetObject.five, i32 0, i32 0), i64 2, i1 false)
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %12 = call i64 @CreateItemMoniker(i8* %10, i8* %11, i32** %2)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @S_OK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %7, align 8
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = bitcast i32** %1 to i8**
  %20 = call i64 @HlinkCreateBrowseContext(i32* null, i32* @IID_IHlinkBrowseContext, i8** %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %7, align 8
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i64 @IHlinkBrowseContext_GetObject(i32* %27, i32* %28, i32 %29, i32** %3)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @MK_E_UNAVAILABLE, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %7, align 8
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = call i64 @IHlinkBrowseContext_Register(i32* %37, i32 0, i32* @Unknown, i32* %38, i32* %6)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %7, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i64 @IHlinkBrowseContext_GetObject(i32* %46, i32* %47, i32 %48, i32** %3)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %7, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %54)
  %56 = load i32*, i32** %3, align 8
  %57 = icmp eq i32* %56, @Unknown
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32*, i32** %1, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @IHlinkBrowseContext_Revoke(i32* %60, i32 %61)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @S_OK, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %7, align 8
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %67)
  %69 = load i32*, i32** %1, align 8
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* @FALSE, align 4
  %72 = call i64 @IHlinkBrowseContext_GetObject(i32* %69, i32* %70, i32 %71, i32** %3)
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @MK_E_UNAVAILABLE, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %7, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @IHlinkBrowseContext_Release(i32* %79)
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @IMoniker_Release(i32* %81)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @CreateItemMoniker(i8*, i8*, i32**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @HlinkCreateBrowseContext(i32*, i32*, i8**) #2

declare dso_local i64 @IHlinkBrowseContext_GetObject(i32*, i32*, i32, i32**) #2

declare dso_local i64 @IHlinkBrowseContext_Register(i32*, i32, i32*, i32*, i32*) #2

declare dso_local i64 @IHlinkBrowseContext_Revoke(i32*, i32) #2

declare dso_local i32 @IHlinkBrowseContext_Release(i32*) #2

declare dso_local i32 @IMoniker_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
