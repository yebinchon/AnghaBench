; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_browse_ctx.c_test_SetInitialHlink.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_browse_ctx.c_test_SetInitialHlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_SetInitialHlink.one = private unnamed_addr constant [2 x i8] c"1\00", align 1
@__const.test_SetInitialHlink.five = private unnamed_addr constant [2 x i8] c"5\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"CreateBindCtx failed: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"CreateItemMoniker failed: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"GetDisplayName failed: 0x%08x\0A\00", align 1
@IID_IHlinkBrowseContext = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"HlinkCreateBrowseContext failed: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"SetInitialHlink failed: 0x%08x\0A\00", align 1
@CO_E_ALREADYINITIALIZED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@HLID_PREVIOUS = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i64 0, align 8
@HLID_NEXT = common dso_local global i32 0, align 4
@HLID_CURRENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"GetHlink failed: 0x%08x\0A\00", align 1
@HLINKGETREF_DEFAULT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"GetMonikerReference failed: 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Found display name should have been %s, was: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetInitialHlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetInitialHlink() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca [2 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = bitcast [2 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.test_SetInitialHlink.one, i32 0, i32 0), i64 2, i1 false)
  %12 = bitcast [2 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.test_SetInitialHlink.five, i32 0, i32 0), i64 2, i1 false)
  %13 = call i64 @CreateBindCtx(i32 0, i32** %5)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %10, align 8
  %19 = call i32 (i32, i8*, i64, ...) @ok(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %22 = call i64 @CreateItemMoniker(i8* %20, i8* %21, i32** %3)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %10, align 8
  %28 = call i32 (i32, i8*, i64, ...) @ok(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @IMoniker_GetDisplayName(i32* %29, i32* %30, i32* null, i8** %9)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %10, align 8
  %37 = call i32 (i32, i8*, i64, ...) @ok(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = bitcast i32** %1 to i8**
  %39 = call i64 @HlinkCreateBrowseContext(i32* null, i32* @IID_IHlinkBrowseContext, i8** %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %10, align 8
  %45 = call i32 (i32, i8*, i64, ...) @ok(i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %49 = call i64 @IHlinkBrowseContext_SetInitialHlink(i32* %46, i32* %47, i8* %48, i32* null)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %10, align 8
  %55 = call i32 (i32, i8*, i64, ...) @ok(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %59 = call i64 @IHlinkBrowseContext_SetInitialHlink(i32* %56, i32* %57, i8* %58, i32* null)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @CO_E_ALREADYINITIALIZED, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i64, i64* %10, align 8
  %65 = call i32 (i32, i8*, i64, ...) @ok(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %64)
  %66 = load i32*, i32** %1, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %69 = call i64 @IHlinkBrowseContext_SetInitialHlink(i32* %66, i32* %67, i8* %68, i32* null)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @CO_E_ALREADYINITIALIZED, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %10, align 8
  %75 = call i32 (i32, i8*, i64, ...) @ok(i32 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %74)
  %76 = load i32*, i32** %1, align 8
  %77 = load i32, i32* @HLID_PREVIOUS, align 4
  %78 = call i64 @IHlinkBrowseContext_GetHlink(i32* %76, i32 %77, i32** %2)
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @E_FAIL, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %10, align 8
  %84 = call i32 (i32, i8*, i64, ...) @ok(i32 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %83)
  %85 = load i32*, i32** %1, align 8
  %86 = load i32, i32* @HLID_NEXT, align 4
  %87 = call i64 @IHlinkBrowseContext_GetHlink(i32* %85, i32 %86, i32** %2)
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* @E_FAIL, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %10, align 8
  %93 = call i32 (i32, i8*, i64, ...) @ok(i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %92)
  %94 = load i32*, i32** %1, align 8
  %95 = load i32, i32* @HLID_CURRENT, align 4
  %96 = call i64 @IHlinkBrowseContext_GetHlink(i32* %94, i32 %95, i32** %2)
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @S_OK, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %10, align 8
  %102 = call i32 (i32, i8*, i64, ...) @ok(i32 %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %101)
  %103 = load i32*, i32** %2, align 8
  %104 = load i32, i32* @HLINKGETREF_DEFAULT, align 4
  %105 = call i64 @IHlink_GetMonikerReference(i32* %103, i32 %104, i32** %4, i32* null)
  store i64 %105, i64* %10, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* @S_OK, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %10, align 8
  %111 = call i32 (i32, i8*, i64, ...) @ok(i32 %109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i64 %110)
  %112 = load i32*, i32** %4, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = call i64 @IMoniker_GetDisplayName(i32* %112, i32* %113, i32* null, i8** %8)
  store i64 %114, i64* %10, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* @S_OK, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = load i64, i64* %10, align 8
  %120 = call i32 (i32, i8*, i64, ...) @ok(i32 %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %119)
  %121 = load i8*, i8** %8, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 @lstrcmpW(i8* %121, i8* %122)
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = load i8*, i8** %9, align 8
  %128 = call i32 @wine_dbgstr_w(i8* %127)
  %129 = sext i32 %128 to i64
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 @wine_dbgstr_w(i8* %130)
  %132 = call i32 (i32, i8*, i64, ...) @ok(i32 %126, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i64 %129, i32 %131)
  %133 = load i8*, i8** %9, align 8
  %134 = call i32 @CoTaskMemFree(i8* %133)
  %135 = load i8*, i8** %8, align 8
  %136 = call i32 @CoTaskMemFree(i8* %135)
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @IBindCtx_Release(i32* %137)
  %139 = load i32*, i32** %4, align 8
  %140 = call i32 @IMoniker_Release(i32* %139)
  %141 = load i32*, i32** %2, align 8
  %142 = call i32 @IHlink_Release(i32* %141)
  %143 = load i32*, i32** %1, align 8
  %144 = call i32 @IHlinkBrowseContext_Release(i32* %143)
  %145 = load i32*, i32** %3, align 8
  %146 = call i32 @IMoniker_Release(i32* %145)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @CreateBindCtx(i32, i32**) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i64 @CreateItemMoniker(i8*, i8*, i32**) #2

declare dso_local i64 @IMoniker_GetDisplayName(i32*, i32*, i32*, i8**) #2

declare dso_local i64 @HlinkCreateBrowseContext(i32*, i32*, i8**) #2

declare dso_local i64 @IHlinkBrowseContext_SetInitialHlink(i32*, i32*, i8*, i32*) #2

declare dso_local i64 @IHlinkBrowseContext_GetHlink(i32*, i32, i32**) #2

declare dso_local i64 @IHlink_GetMonikerReference(i32*, i32, i32**, i32*) #2

declare dso_local i32 @lstrcmpW(i8*, i8*) #2

declare dso_local i32 @wine_dbgstr_w(i8*) #2

declare dso_local i32 @CoTaskMemFree(i8*) #2

declare dso_local i32 @IBindCtx_Release(i32*) #2

declare dso_local i32 @IMoniker_Release(i32*) #2

declare dso_local i32 @IHlink_Release(i32*) #2

declare dso_local i32 @IHlinkBrowseContext_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
