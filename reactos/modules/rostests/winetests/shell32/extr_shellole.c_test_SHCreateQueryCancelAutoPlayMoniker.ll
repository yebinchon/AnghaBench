; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellole.c_test_SHCreateQueryCancelAutoPlayMoniker.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellole.c_test_SHCreateQueryCancelAutoPlayMoniker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@MKSYS_CLASSMONIKER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@CLSID_ClassMoniker = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@autoplay_BindToObject = common dso_local global i32 0, align 4
@autoplay_GetClassObject = common dso_local global i32 0, align 4
@test_moniker = common dso_local global i32 0, align 4
@IID_IQueryCancelAutoPlay = common dso_local global i32 0, align 4
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHCreateQueryCancelAutoPlayMoniker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHCreateQueryCancelAutoPlayMoniker() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @pSHCreateQueryCancelAutoPlayMoniker(i32** null)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @E_INVALIDARG, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 @pSHCreateQueryCancelAutoPlayMoniker(i32** %2)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @S_OK, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 -1, i32* %6, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @IMoniker_IsSystemMoniker(i32* %21, i32* %6)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @S_OK, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MKSYS_CLASSMONIKER, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = call i32 @memset(i32* %4, i32 0, i32 4)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @IMoniker_GetClassID(i32* %36, i32* %4)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @S_OK, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = call i32 @IsEqualGUID(i32* %4, i32* @CLSID_ClassMoniker)
  %45 = call i32 @wine_dbgstr_guid(i32* %4)
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @autoplay_BindToObject, align 4
  %48 = call i32 @SET_EXPECT(i32 %47)
  %49 = load i32, i32* @autoplay_GetClassObject, align 4
  %50 = call i32 @SET_EXPECT(i32 %49)
  %51 = call i32 @CreateBindCtx(i32 0, i32** %1)
  %52 = load i32*, i32** %2, align 8
  %53 = load i32*, i32** %1, align 8
  %54 = bitcast i32** %3 to i8**
  %55 = call i32 @IMoniker_BindToObject(i32* %52, i32* %53, i32* @test_moniker, i32* @IID_IQueryCancelAutoPlay, i8** %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @E_NOTIMPL, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @IBindCtx_Release(i32* %62)
  %64 = load i32, i32* @autoplay_BindToObject, align 4
  %65 = call i32 @CHECK_CALLED(i32 %64)
  %66 = load i32, i32* @autoplay_GetClassObject, align 4
  %67 = call i32 @CHECK_CALLED(i32 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @IMoniker_Release(i32* %68)
  ret void
}

declare dso_local i32 @pSHCreateQueryCancelAutoPlayMoniker(i32**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IMoniker_IsSystemMoniker(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @IMoniker_GetClassID(i32*, i32*) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @wine_dbgstr_guid(i32*) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32 @CreateBindCtx(i32, i32**) #1

declare dso_local i32 @IMoniker_BindToObject(i32*, i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IBindCtx_Release(i32*) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
