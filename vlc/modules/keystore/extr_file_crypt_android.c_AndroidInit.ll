; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_file_crypt_android.c_AndroidInit.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_file_crypt_android.c_AndroidInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"LibVLCAndroid\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"AndroidKeyStore\00", align 1
@KeyStore = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@s_jkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @AndroidInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AndroidInit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %9 = call i32* (...) @GET_ENV()
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %108

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @InitJni(i32* %14, i32* %15)
  %17 = load i64, i64* @VLC_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %108

20:                                               ; preds = %13
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %21 = call i32* @NEW_STR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %7, align 8
  %22 = call i64 (...) @CHECK_EXCEPTION()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %78

25:                                               ; preds = %20
  %26 = call i32* @NEW_STR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32* %26, i32** %8, align 8
  %27 = call i64 (...) @CHECK_EXCEPTION()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %78

30:                                               ; preds = %25
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @KeyStore, i32 0, i32 3), align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_5__* @KeyStore to { i64, i64 }*), i32 0, i32 0), align 4
  %34 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_5__* @KeyStore to { i64, i64 }*), i32 0, i32 1), align 4
  %35 = call i32* @CALL_STATICOBJ(i64 %33, i64 %34, i32 %31, i32* %32)
  store i32* %35, i32** %4, align 8
  %36 = call i64 (...) @CHECK_EXCEPTION()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %78

39:                                               ; preds = %30
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @KeyStore, i32 0, i32 2), align 4
  %42 = call i32 @CALL_VOID(i32* %40, i32 %41, i32* null)
  %43 = call i64 (...) @CHECK_EXCEPTION()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %78

46:                                               ; preds = %39
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @KeyStore, i32 0, i32 1), align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i32* (i32*, i32, ...) @CALL_OBJ(i32* %47, i32 %48, i32* %49, i8* null)
  store i32* %50, i32** %5, align 8
  %51 = call i64 (...) @CHECK_EXCEPTION()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %78

54:                                               ; preds = %46
  %55 = load i32*, i32** %5, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @KeyStore, i32 0, i32 0, i32 0), align 4
  %60 = call i32* (i32*, i32, ...) @CALL_OBJ(i32* %58, i32 %59)
  store i32* %60, i32** %6, align 8
  %61 = call i64 (...) @CHECK_EXCEPTION()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %78

64:                                               ; preds = %57
  br label %75

65:                                               ; preds = %54
  %66 = load i32*, i32** %2, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = call i32* @GenerateKey(i32* %66, i32* %67, i32* %68, i32* %69)
  store i32* %70, i32** %6, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %78

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %64
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @NEW_GREF(i32* %76)
  store i32 %77, i32* @s_jkey, align 4
  br label %78

78:                                               ; preds = %75, %73, %63, %53, %45, %38, %29, %24
  %79 = load i32*, i32** %7, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @DEL_LREF(i32* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32*, i32** %8, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @DEL_LREF(i32* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32*, i32** %4, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @DEL_LREF(i32* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32*, i32** %5, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @DEL_LREF(i32* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32*, i32** %6, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @DEL_LREF(i32* %106)
  br label %108

108:                                              ; preds = %12, %19, %105, %102
  ret void
}

declare dso_local i32* @GET_ENV(...) #1

declare dso_local i64 @InitJni(i32*, i32*) #1

declare dso_local i32* @NEW_STR(i8*) #1

declare dso_local i64 @CHECK_EXCEPTION(...) #1

declare dso_local i32* @CALL_STATICOBJ(i64, i64, i32, i32*) #1

declare dso_local i32 @CALL_VOID(i32*, i32, i32*) #1

declare dso_local i32* @CALL_OBJ(i32*, i32, ...) #1

declare dso_local i32* @GenerateKey(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @NEW_GREF(i32*) #1

declare dso_local i32 @DEL_LREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
