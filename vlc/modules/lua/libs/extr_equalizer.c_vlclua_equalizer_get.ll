; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_equalizer.c_vlclua_equalizer_get.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_equalizer.c_vlclua_equalizer_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"audio-filter\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"equalizer\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"equalizer-bands\00", align 1
@LC_NUMERIC_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"band id=\22%u\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_equalizer_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_equalizer_get(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 10, i32* %4, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @vlclua_get_aout_internal(i32* %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

20:                                               ; preds = %1
  %21 = load i32*, i32** %5, align 8
  %22 = call i8* @var_GetNonEmptyString(i32* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = call i32* @strstr(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %20
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @aout_Release(i32* %32)
  store i32 0, i32* %2, align 4
  br label %98

34:                                               ; preds = %25
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i8* @var_GetNonEmptyString(i32* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i8* %38, i8** %8, align 8
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @aout_Release(i32* %42)
  store i32 0, i32* %2, align 4
  br label %98

44:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  %45 = load i32, i32* @LC_NUMERIC_MASK, align 4
  %46 = call i64 @newlocale(i32 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i64 @uselocale(i64 %47)
  store i64 %48, i64* %11, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @lua_newtable(i32* %49)
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %78, %44
  %52 = load i32, i32* %12, align 4
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %81

54:                                               ; preds = %51
  %55 = load i8*, i8** %8, align 8
  %56 = call float @strtof(i8* %55, i8** %8)
  store float %56, float* %13, align 4
  %57 = load float, float* %13, align 4
  %58 = fptoui float %57 to i32
  %59 = call i32 @asprintf(i8** %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 1, i32* %9, align 4
  br label %81

62:                                               ; preds = %54
  %63 = load i32*, i32** %3, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = call i32 @lua_pushstring(i32* %63, i8* %64)
  %66 = load i8*, i8** %14, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @asprintf(i8** %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 1, i32* %9, align 4
  br label %81

72:                                               ; preds = %62
  %73 = load i32*, i32** %3, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 @lua_setfield(i32* %73, i32 -2, i8* %74)
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 @free(i8* %76)
  br label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %12, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %51

81:                                               ; preds = %71, %61, %51
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i64, i64* %10, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i64, i64* %11, align 8
  %88 = call i64 @uselocale(i64 %87)
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @freelocale(i64 %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @aout_Release(i32* %92)
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 0, i32 1
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %91, %41, %29, %19
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32* @vlclua_get_aout_internal(i32*) #1

declare dso_local i8* @var_GetNonEmptyString(i32*, i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @aout_Release(i32*) #1

declare dso_local i64 @newlocale(i32, i8*, i32*) #1

declare dso_local i64 @uselocale(i64) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local float @strtof(i8*, i8**) #1

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @freelocale(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
