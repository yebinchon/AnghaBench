; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_hlink.c_test_HlinkMoniker.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_hlink.c_test_HlinkMoniker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_HlinkMoniker.emptyW = internal constant [1 x i8] zeroinitializer, align 1
@test_HlinkMoniker.wordsW = internal constant [6 x i8] c"words\00", align 1
@test_HlinkMoniker.aW = internal constant [2 x i8] c"a\00", align 1
@test_HlinkMoniker.bW = internal constant [2 x i8] c"b\00", align 1
@IID_IHlink = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"HlinkCreateFromString failed: 0x%08x\0A\00", align 1
@HLINKGETREF_RELATIVE = common dso_local global i32 0, align 4
@HLINKSETF_TARGET = common dso_local global i32 0, align 4
@HLINKSETF_LOCATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Moniker from %s target should not be NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"CreateFileMoniker failed: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_HlinkMoniker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_HlinkMoniker() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = bitcast i32** %1 to i8**
  %6 = call i64 @HlinkCreateFromString(i32* null, i32* null, i32* null, i32* null, i32 0, i32* null, i32* @IID_IHlink, i8** %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @getStringRef(i32* %13, i8* null, i8* null)
  %15 = load i32*, i32** %1, align 8
  %16 = load i32, i32* @HLINKGETREF_RELATIVE, align 4
  %17 = call i32* @getMonikerRef(i32* %15, i32* null, i8* null, i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = load i32, i32* @HLINKSETF_TARGET, align 4
  %20 = load i32, i32* @HLINKSETF_LOCATION, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @setStringRef(i32* %18, i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_HlinkMoniker.aW, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_HlinkMoniker.wordsW, i64 0, i64 0))
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @getStringRef(i32* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_HlinkMoniker.aW, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_HlinkMoniker.wordsW, i64 0, i64 0))
  %25 = load i32*, i32** %1, align 8
  %26 = load i32, i32* @HLINKGETREF_RELATIVE, align 4
  %27 = call i32* @getMonikerRef(i32* %25, i32* inttoptr (i64 4294967295 to i32*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_HlinkMoniker.wordsW, i64 0, i64 0), i32 %26)
  store i32* %27, i32** %2, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i64 @wine_dbgstr_w(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_HlinkMoniker.aW, i64 0, i64 0))
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %0
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @IMoniker_Release(i32* %36)
  br label %38

38:                                               ; preds = %35, %0
  %39 = load i32*, i32** %1, align 8
  %40 = load i32, i32* @HLINKSETF_TARGET, align 4
  %41 = load i32, i32* @HLINKSETF_LOCATION, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @setStringRef(i32* %39, i32 %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_HlinkMoniker.emptyW, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_HlinkMoniker.emptyW, i64 0, i64 0))
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @getStringRef(i32* %44, i8* null, i8* null)
  %46 = load i32*, i32** %1, align 8
  %47 = load i32, i32* @HLINKGETREF_RELATIVE, align 4
  %48 = call i32* @getMonikerRef(i32* %46, i32* null, i8* null, i32 %47)
  %49 = call i64 @CreateFileMoniker(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_HlinkMoniker.bW, i64 0, i64 0), i32** %3)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = load i32, i32* @HLINKSETF_TARGET, align 4
  %58 = load i32, i32* @HLINKSETF_LOCATION, align 4
  %59 = or i32 %57, %58
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @setMonikerRef(i32* %56, i32 %59, i32* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_HlinkMoniker.wordsW, i64 0, i64 0))
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @getStringRef(i32* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_HlinkMoniker.bW, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_HlinkMoniker.wordsW, i64 0, i64 0))
  %64 = load i32*, i32** %1, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* @HLINKGETREF_RELATIVE, align 4
  %67 = call i32* @getMonikerRef(i32* %64, i32* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_HlinkMoniker.wordsW, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @IMoniker_Release(i32* %68)
  %70 = load i32*, i32** %1, align 8
  %71 = call i32 @IHlink_Release(i32* %70)
  ret void
}

declare dso_local i64 @HlinkCreateFromString(i32*, i32*, i32*, i32*, i32, i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @getStringRef(i32*, i8*, i8*) #1

declare dso_local i32* @getMonikerRef(i32*, i32*, i8*, i32) #1

declare dso_local i32 @setStringRef(i32*, i32, i8*, i8*) #1

declare dso_local i64 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i64 @CreateFileMoniker(i8*, i32**) #1

declare dso_local i32 @setMonikerRef(i32*, i32, i32*, i8*) #1

declare dso_local i32 @IHlink_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
