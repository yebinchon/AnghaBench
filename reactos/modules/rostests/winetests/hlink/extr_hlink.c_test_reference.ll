; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_hlink.c_test_reference.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_hlink.c_test_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_reference.url = private unnamed_addr constant [18 x i8] c"http://winehq.org\00", align 16
@__const.test_reference.url2 = private unnamed_addr constant [19 x i8] c"http://winehq.org/\00", align 16
@IID_IHlink = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to create link\0A\00", align 1
@HLINKGETREF_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"no moniker\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"string should be null\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"moniker refcount wrong\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"failed, r=%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"url wrong\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reference() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [18 x i8], align 16
  %5 = alloca [19 x i8], align 16
  %6 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %7 = bitcast [18 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([18 x i8], [18 x i8]* @__const.test_reference.url, i32 0, i32 0), i64 18, i1 false)
  %8 = bitcast [19 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([19 x i8], [19 x i8]* @__const.test_reference.url2, i32 0, i32 0), i64 19, i1 false)
  store i32* null, i32** %6, align 8
  %9 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 0
  %10 = bitcast i32** %2 to i32*
  %11 = call i32 @HlinkCreateFromString(i8* %9, i32* null, i32* null, i32* null, i32 0, i32* null, i32* @IID_IHlink, i32* %10)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @S_OK, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %1, align 4
  %18 = call i64 @FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  br label %134

21:                                               ; preds = %0
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @HLINKGETREF_DEFAULT, align 4
  %24 = call i32 @IHlink_GetMonikerReference(i32* %22, i32 %23, i32** null, i32** null)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @S_OK, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @HLINKGETREF_DEFAULT, align 4
  %32 = call i32 @IHlink_GetMonikerReference(i32* %30, i32 %31, i32** %3, i32** %6)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @S_OK, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32*, i32** %3, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32*, i32** %6, align 8
  %43 = icmp eq i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @IMoniker_Release(i32* %46)
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %1, align 4
  %49 = icmp eq i32 %48, 1
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @IHlink_GetStringReference(i32* %52, i32 -1, i32** %6, i32** null)
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* %1, align 4
  %55 = load i32, i32* @S_OK, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @CoTaskMemFree(i32* %59)
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @IHlink_GetStringReference(i32* %61, i32 -1, i32** null, i32** null)
  store i32 %62, i32* %1, align 4
  %63 = load i32, i32* %1, align 4
  %64 = load i32, i32* @S_OK, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %1, align 4
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @IHlink_GetStringReference(i32* %69, i32 -1, i32** null, i32** %6)
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* %1, align 4
  %72 = load i32, i32* @S_OK, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %1, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = load i32*, i32** %6, align 8
  %78 = icmp eq i32* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32*, i32** %2, align 8
  %82 = load i32, i32* @HLINKGETREF_DEFAULT, align 4
  %83 = call i32 @IHlink_GetStringReference(i32* %81, i32 %82, i32** %6, i32** null)
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* %1, align 4
  %85 = load i32, i32* @S_OK, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0
  %91 = call i32 @lstrcmpW(i32* %89, i8* %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @CoTaskMemFree(i32* %96)
  %98 = load i32*, i32** %2, align 8
  %99 = load i32, i32* @HLINKGETREF_DEFAULT, align 4
  %100 = call i32 @IHlink_GetStringReference(i32* %98, i32 %99, i32** null, i32** null)
  store i32 %100, i32* %1, align 4
  %101 = load i32, i32* %1, align 4
  %102 = load i32, i32* @S_OK, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32*, i32** %2, align 8
  %107 = load i32, i32* @HLINKGETREF_DEFAULT, align 4
  %108 = call i32 @IHlink_GetStringReference(i32* %106, i32 %107, i32** null, i32** %6)
  store i32 %108, i32* %1, align 4
  %109 = load i32, i32* %1, align 4
  %110 = load i32, i32* @S_OK, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32*, i32** %6, align 8
  %115 = icmp eq i32* %114, null
  %116 = zext i1 %115 to i32
  %117 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 @IHlink_GetAdditionalParams(i32* %118, i32* null)
  store i32 %119, i32* %1, align 4
  %120 = load i32, i32* %1, align 4
  %121 = load i32, i32* @E_NOTIMPL, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32*, i32** %2, align 8
  %126 = call i32 @IHlink_SetAdditionalParams(i32* %125, i32* null)
  store i32 %126, i32* %1, align 4
  %127 = load i32, i32* %1, align 4
  %128 = load i32, i32* @E_NOTIMPL, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32*, i32** %2, align 8
  %133 = call i32 @IHlink_Release(i32* %132)
  br label %134

134:                                              ; preds = %21, %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @HlinkCreateFromString(i8*, i32*, i32*, i32*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @IHlink_GetMonikerReference(i32*, i32, i32**, i32**) #2

declare dso_local i32 @IMoniker_Release(i32*) #2

declare dso_local i32 @IHlink_GetStringReference(i32*, i32, i32**, i32**) #2

declare dso_local i32 @CoTaskMemFree(i32*) #2

declare dso_local i32 @lstrcmpW(i32*, i8*) #2

declare dso_local i32 @IHlink_GetAdditionalParams(i32*, i32*) #2

declare dso_local i32 @IHlink_SetAdditionalParams(i32*, i32*) #2

declare dso_local i32 @IHlink_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
