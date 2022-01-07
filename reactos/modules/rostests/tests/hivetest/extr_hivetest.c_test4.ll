; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/hivetest/extr_hivetest.c_test4.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/hivetest/extr_hivetest.c_test4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"RegOpenKeyExW HKLM\\System\\Setup: \00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [13 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 92, i32 83, i32 101, i32 116, i32 117, i32 112, i32 0], align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"\09\09dwError =%x\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"RegQueryInfoKeyW: \00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\09\09\09\09dwError %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"\09nb of subkeys=%d,last write : %d/%d/%d %d:%02.2d'%02.2d''%03.3d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"RegOpenKeyExW: \00", align 1
@.str.7 = private unnamed_addr constant [37 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 92, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 48, i32 48, i32 49, i32 92, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 115, i32 92, i32 83, i32 101, i32 114, i32 105, i32 97, i32 108, i32 0], align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"\09\09\09\09\09dwError %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"RegQueryValueExW: \00", align 1
@.str.10 = private unnamed_addr constant [16 x i32] [i32 70, i32 111, i32 114, i32 99, i32 101, i32 70, i32 105, i32 102, i32 111, i32 69, i32 110, i32 97, i32 98, i32 108, i32 101, i32 0], align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"\09\09\09\09dwError =%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"\09Value:DT=%d, DS=%d, Value=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"RegCreateKeyExW: \00", align 1
@.str.14 = private unnamed_addr constant [21 x i32] [i32 80, i32 97, i32 114, i32 97, i32 109, i32 101, i32 116, i32 101, i32 114, i32 115, i32 92, i32 83, i32 101, i32 114, i32 105, i32 97, i32 108, i32 48, i32 48, i32 49, i32 0], align 4
@.str.15 = private unnamed_addr constant [27 x i32] [i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 92, i32 116, i32 101, i32 115, i32 116, i32 52, i32 114, i32 101, i32 97, i32 99, i32 116, i32 111, i32 115, i32 92, i32 116, i32 101, i32 115, i32 116, i32 0], align 4
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"\09\09\09\09dwError %x \00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"dwDisposition %x\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"RegSetValueExW: \00", align 1
@.str.19 = private unnamed_addr constant [10 x i32] [i32 84, i32 101, i32 115, i32 116, i32 86, i32 97, i32 108, i32 117, i32 101, i32 0], align 4
@REG_SZ = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [11 x i32] [i32 84, i32 101, i32 115, i32 116, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 0], align 4
@.str.21 = private unnamed_addr constant [14 x i8] c"RegCloseKey: \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i32] [i32 115, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 92, i32 84, i32 101, i32 115, i32 116, i32 0], align 4
@REG_OPTION_VOLATILE = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [16 x i8] c"\0ATests done...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test4() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [260 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_3__, align 4
  store i32* null, i32** %1, align 8
  %21 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  %23 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %24 = call i64 @RegOpenKeyExW(i32* %22, i8* bitcast ([13 x i32]* @.str.1 to i8*), i32 0, i32 %23, i32** %2)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @ERROR_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %0
  %31 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i64 260, i64* %11, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = getelementptr inbounds [260 x i32], [260 x i32]* %10, i64 0, i64 0
  %34 = call i64 @RegQueryInfoKeyW(i32* %32, i32* %33, i64* %11, i32* null, i64* %12, i64* %13, i64* %14, i64* %15, i64* %16, i64* %17, i64* %18, i32* %19)
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %35)
  %37 = call i32 @FileTimeToSystemTime(i32* %19, %struct.TYPE_3__* %20)
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i64 %38, i32 %40, i32 %42, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %30, %0
  %55 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %56 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  %57 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %58 = call i64 @RegOpenKeyExW(i32* %56, i8* bitcast ([37 x i32]* @.str.7 to i8*), i32 0, i32 %57, i32** %1)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i64 %59)
  store i64 4, i64* %6, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @ERROR_SUCCESS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %54
  %65 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %66 = load i32*, i32** %1, align 8
  %67 = ptrtoint i32* %7 to i32
  %68 = call i64 @RegQueryValueExW(i32* %66, i8* bitcast ([16 x i32]* @.str.10 to i8*), i32* null, i64* %5, i32 %67, i64* %6)
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i64 %69)
  %71 = load i64, i64* %4, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i64 %74, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %64
  br label %79

79:                                               ; preds = %78, %54
  %80 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %81 = load i32*, i32** %1, align 8
  %82 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %83 = call i64 @RegCreateKeyExW(i32* %81, i8* bitcast ([21 x i32]* @.str.14 to i8*), i32 0, i32* null, i32 0, i32 %82, i32* null, i32** %8, i64* %9)
  store i64 %83, i64* %4, align 8
  %84 = load i64, i64* %4, align 8
  %85 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %84)
  %86 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %87 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  %88 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %89 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %90 = call i64 @RegCreateKeyExW(i32* %87, i8* bitcast ([27 x i32]* @.str.15 to i8*), i32 0, i32* null, i32 %88, i32 %89, i32* null, i32** %1, i64* %3)
  store i64 %90, i64* %4, align 8
  %91 = load i64, i64* %4, align 8
  %92 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i64 %91)
  %93 = load i64, i64* %3, align 8
  %94 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i64 %93)
  %95 = load i64, i64* %4, align 8
  %96 = load i64, i64* @ERROR_SUCCESS, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %79
  %99 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %100 = load i32*, i32** %1, align 8
  %101 = load i32, i32* @REG_SZ, align 4
  %102 = call i64 @RegSetValueExW(i32* %100, i8* bitcast ([10 x i32]* @.str.19 to i8*), i32 0, i32 %101, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @.str.20, i64 0, i64 0), i32 20)
  store i64 %102, i64* %4, align 8
  %103 = load i64, i64* %4, align 8
  %104 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %103)
  %105 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  %106 = load i32*, i32** %1, align 8
  %107 = call i64 @RegCloseKey(i32* %106)
  store i64 %107, i64* %4, align 8
  %108 = load i64, i64* %4, align 8
  %109 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i64 %108)
  br label %110

110:                                              ; preds = %98, %79
  %111 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  %112 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %113 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  %114 = load i32, i32* @REG_OPTION_VOLATILE, align 4
  %115 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %116 = call i64 @RegCreateKeyExW(i32* %113, i8* bitcast ([14 x i32]* @.str.23 to i8*), i32 0, i32* null, i32 %114, i32 %115, i32* null, i32** %1, i64* %3)
  store i64 %116, i64* %4, align 8
  %117 = load i64, i64* %4, align 8
  %118 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i64 %117)
  %119 = load i64, i64* %3, align 8
  %120 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i64 %119)
  %121 = load i64, i64* %4, align 8
  %122 = load i64, i64* @ERROR_SUCCESS, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %153

124:                                              ; preds = %110
  %125 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i64 260, i64* %11, align 8
  %126 = load i32*, i32** %1, align 8
  %127 = getelementptr inbounds [260 x i32], [260 x i32]* %10, i64 0, i64 0
  %128 = call i64 @RegQueryInfoKeyW(i32* %126, i32* %127, i64* %11, i32* null, i64* %12, i64* %13, i64* %14, i64* %15, i64* %16, i64* %17, i64* %18, i32* %19)
  store i64 %128, i64* %4, align 8
  %129 = load i64, i64* %4, align 8
  %130 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %129)
  %131 = call i32 @FileTimeToSystemTime(i32* %19, %struct.TYPE_3__* %20)
  %132 = load i64, i64* %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i64 %132, i32 %134, i32 %136, i32 %138, i32 %140, i32 %142, i32 %144, i32 %146)
  %148 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  %149 = load i32*, i32** %1, align 8
  %150 = call i64 @RegCloseKey(i32* %149)
  store i64 %150, i64* %4, align 8
  %151 = load i64, i64* %4, align 8
  %152 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i64 %151)
  br label %153

153:                                              ; preds = %124, %110
  %154 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i64 @RegOpenKeyExW(i32*, i8*, i32, i32, i32**) #1

declare dso_local i64 @RegQueryInfoKeyW(i32*, i32*, i64*, i32*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i32*) #1

declare dso_local i32 @FileTimeToSystemTime(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @RegQueryValueExW(i32*, i8*, i32*, i64*, i32, i64*) #1

declare dso_local i64 @RegCreateKeyExW(i32*, i8*, i32, i32*, i32, i32, i32*, i32**, i64*) #1

declare dso_local i64 @RegSetValueExW(i32*, i8*, i32, i32, i32*, i32) #1

declare dso_local i64 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
