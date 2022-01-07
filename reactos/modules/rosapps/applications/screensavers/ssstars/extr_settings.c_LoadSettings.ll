; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/ssstars/extr_settings.c_LoadSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/ssstars/extr_settings.c_LoadSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64 }

@Settings = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@FactoryDefaults = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Software\\Microsoft\\ScreenSavers\\Ssstars\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"NumberOfStars\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Speed\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"TypeOfRotation\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"DoBlending\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"FinePerspective\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"EnableFiltering\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"SmoothShading\00", align 1
@MIN_STARS = common dso_local global i64 0, align 8
@MAX_STARS = common dso_local global i64 0, align 8
@MIN_SPEED = common dso_local global i64 0, align 8
@MAX_SPEED = common dso_local global i64 0, align 8
@ROTATION_NONE = common dso_local global i64 0, align 8
@ROTATION_LINEAR = common dso_local global i64 0, align 8
@ROTATION_PERIODIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadSettings() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_3__* @Settings to i8*), i8* align 8 bitcast (%struct.TYPE_3__* @FactoryDefaults to i8*), i64 56, i1 false)
  %3 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %4 = call i32 @_T(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @_T(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @KEY_READ, align 4
  %7 = call i64 @RegCreateKeyEx(i32 %3, i32 %4, i32 0, i32 %5, i32 0, i32 %6, i32* null, i32* %1, i32* null)
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @ERROR_SUCCESS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %90

12:                                               ; preds = %0
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 0), align 8
  %16 = call i8* @QueryDWORD(i32 %13, i32 %14, i64 %15)
  %17 = ptrtoint i8* %16 to i64
  store i64 %17, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 0), align 8
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 1), align 8
  %21 = call i8* @QueryDWORD(i32 %18, i32 %19, i64 %20)
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 1), align 8
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @_T(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 2), align 8
  %26 = call i8* @QueryDWORD(i32 %23, i32 %24, i64 %25)
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 2), align 8
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 3), align 8
  %31 = call i8* @QueryDWORD(i32 %28, i32 %29, i64 %30)
  %32 = ptrtoint i8* %31 to i64
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 3), align 8
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @_T(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 4), align 8
  %36 = call i8* @QueryDWORD(i32 %33, i32 %34, i64 %35)
  %37 = ptrtoint i8* %36 to i64
  store i64 %37, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 4), align 8
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @_T(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 5), align 8
  %41 = call i8* @QueryDWORD(i32 %38, i32 %39, i64 %40)
  %42 = ptrtoint i8* %41 to i64
  store i64 %42, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 5), align 8
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 6), align 8
  %46 = call i8* @QueryDWORD(i32 %43, i32 %44, i64 %45)
  %47 = ptrtoint i8* %46 to i64
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 6), align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 0), align 8
  %49 = load i64, i64* @MIN_STARS, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %12
  %52 = load i64, i64* @MIN_STARS, align 8
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 0), align 8
  br label %60

53:                                               ; preds = %12
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 0), align 8
  %55 = load i64, i64* @MAX_STARS, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* @MAX_STARS, align 8
  store i64 %58, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 0), align 8
  br label %59

59:                                               ; preds = %57, %53
  br label %60

60:                                               ; preds = %59, %51
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 1), align 8
  %62 = load i64, i64* @MIN_SPEED, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i64, i64* @MIN_SPEED, align 8
  store i64 %65, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 1), align 8
  br label %73

66:                                               ; preds = %60
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 1), align 8
  %68 = load i64, i64* @MAX_SPEED, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* @MAX_SPEED, align 8
  store i64 %71, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 1), align 8
  br label %72

72:                                               ; preds = %70, %66
  br label %73

73:                                               ; preds = %72, %64
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 2), align 8
  %75 = load i64, i64* @ROTATION_NONE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 2), align 8
  %79 = load i64, i64* @ROTATION_LINEAR, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 2), align 8
  %83 = load i64, i64* @ROTATION_PERIODIC, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i64, i64* @ROTATION_PERIODIC, align 8
  store i64 %86, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Settings, i32 0, i32 2), align 8
  br label %87

87:                                               ; preds = %85, %81, %77, %73
  %88 = load i32, i32* %1, align 4
  %89 = call i32 @RegCloseKey(i32 %88)
  br label %90

90:                                               ; preds = %87, %11
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @RegCreateKeyEx(i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @_T(i8*) #2

declare dso_local i8* @QueryDWORD(i32, i32, i64) #2

declare dso_local i32 @RegCloseKey(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
