; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_GetRfc1766FromLcid.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_GetRfc1766FromLcid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@MAX_RFC1766_NAME = common dso_local global i32 0, align 4
@lcid_table = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"#%02d: HRESULT 0x%x (expected 0x%x)\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@LCMAP_LOWERCASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"#%02d: got '%s' (expected '%s')\0A\00", align 1
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"got 0x%x (expected E_INVALIDARG)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_GetRfc1766FromLcid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetRfc1766FromLcid(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32, i32* @MAX_RFC1766_NAME, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @MAX_RFC1766_NAME, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %93, %1
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %20 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %19)
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %96

22:                                               ; preds = %17
  %23 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %23, align 16
  store i32* null, i32** %8, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @IMultiLanguage2_GetRfc1766FromLcid(i32* %24, i32 %29, i32** %8)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %31, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, i64, ...) @ok(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %39, i32 %40, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @S_OK, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %22
  br label %93

51:                                               ; preds = %22
  %52 = load i32, i32* @CP_ACP, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = trunc i64 %15 to i32
  %55 = call i32 @WideCharToMultiByte(i32 %52, i32 0, i32* %53, i32 -1, i8* %16, i32 %54, i32* null, i32* null)
  %56 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %57 = load i32, i32* @LCMAP_LOWERCASE, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @lstrlenA(i32 %67)
  %69 = add nsw i64 %68, 1
  %70 = load i32, i32* @MAX_RFC1766_NAME, align 4
  %71 = call i32 @LCMapStringA(i32 %56, i32 %57, i32 %62, i64 %69, i8* %12, i32 %70)
  %72 = call i32 @lstrcmpA(i8* %16, i8* %12)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %51
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @lstrcmpA(i8* %16, i8* %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @broken(i32 %83)
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %74, %51
  %87 = phi i1 [ true, %51 ], [ %85, %74 ]
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %6, align 8
  %90 = call i32 (i32, i8*, i64, ...) @ok(i32 %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %89, i8* %16, i8* %12)
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @SysFreeString(i32* %91)
  br label %93

93:                                               ; preds = %86, %50
  %94 = load i64, i64* %6, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %6, align 8
  br label %17

96:                                               ; preds = %17
  %97 = load i32*, i32** %2, align 8
  %98 = load i32, i32* @LANG_ENGLISH, align 4
  %99 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %100 = call i32 @MAKELANGID(i32 %98, i32 %99)
  %101 = call i32 @IMultiLanguage2_GetRfc1766FromLcid(i32* %97, i32 %100, i32** null)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @E_INVALIDARG, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = call i32 (i32, i8*, i64, ...) @ok(i32 %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %107)
  %109 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %109)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i32 @IMultiLanguage2_GetRfc1766FromLcid(i32*, i32, i32**) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32*, i32*) #2

declare dso_local i32 @LCMapStringA(i32, i32, i32, i64, i8*, i32) #2

declare dso_local i64 @lstrlenA(i32) #2

declare dso_local i32 @lstrcmpA(i8*, i8*) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @SysFreeString(i32*) #2

declare dso_local i32 @MAKELANGID(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
