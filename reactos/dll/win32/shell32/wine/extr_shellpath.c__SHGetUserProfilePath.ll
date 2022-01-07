; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_shellpath.c__SHGetUserProfilePath.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_shellpath.c__SHGetUserProfilePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32* }

@.str = private unnamed_addr constant [21 x i8] c"%p,0x%08x,0x%02x,%p\0A\00", align 1
@CSIDL_Data = common dso_local global %struct.TYPE_3__* null, align 8
@E_INVALIDARG = common dso_local global i32 0, align 4
@CSIDL_Type_User = common dso_local global i64 0, align 8
@SHGFP_TYPE_DEFAULT = common dso_local global i32 0, align 4
@HKEY_USERS = common dso_local global i64 0, align 8
@DefaultW = common dso_local global i32* null, align 8
@HKEY_CURRENT_USER = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"returning 0x%08x (output path is %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i32)* @_SHGetUserProfilePath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_SHGetUserProfilePath(i32* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [40 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = ptrtoint i32* %15 to i32
  %17 = load i32, i32* %7, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i64 %18, i32 %19)
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CSIDL_Data, align 8
  %23 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %22)
  %24 = icmp uge i64 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %26, i32* %5, align 4
  br label %140

27:                                               ; preds = %4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CSIDL_Data, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CSIDL_Type_User, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %36, i32* %5, align 4
  br label %140

37:                                               ; preds = %27
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %41, i32* %5, align 4
  br label %140

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SHGFP_TYPE_DEFAULT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = call i32 (i64, i64, ...) @_SHGetDefaultValue(i64 %48, i64 %50)
  store i32 %51, i32* %12, align 4
  br label %133

52:                                               ; preds = %42
  store i32* null, i32** %13, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = icmp eq i32* %53, inttoptr (i64 -1 to i32*)
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, i64* @HKEY_USERS, align 8
  store i64 %56, i64* %14, align 8
  %57 = load i32*, i32** @DefaultW, align 8
  store i32* %57, i32** %13, align 8
  br label %73

58:                                               ; preds = %52
  %59 = load i32*, i32** %6, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i64, i64* @HKEY_CURRENT_USER, align 8
  store i64 %62, i64* %14, align 8
  br label %72

63:                                               ; preds = %58
  %64 = load i64, i64* @HKEY_USERS, align 8
  store i64 %64, i64* %14, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32* @_GetUserSidStringFromToken(i32* %65)
  store i32* %66, i32** %13, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @E_FAIL, align 4
  store i32 %70, i32* %12, align 4
  br label %134

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %61
  br label %73

73:                                               ; preds = %72, %55
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CSIDL_Data, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %10, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %73
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CSIDL_Data, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds [40 x i32], [40 x i32]* %11, i64 0, i64 0
  %88 = call i32 @StringFromGUID2(i32 %86, i32* %87, i32 39)
  %89 = getelementptr inbounds [40 x i32], [40 x i32]* %11, i64 0, i64 0
  store i32* %89, i32** %10, align 8
  br label %90

90:                                               ; preds = %81, %73
  %91 = load i64, i64* %14, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i32*
  %97 = call i32 (i64, i32*, i32*, i32*, ...) @_SHGetUserShellFolderPath(i64 %91, i32* %92, i32* %93, i32* %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @FAILED(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %90
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* @HKEY_LOCAL_MACHINE, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load i64, i64* @HKEY_LOCAL_MACHINE, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i32*
  %111 = call i32 (i64, i32*, i32*, i32*, ...) @_SHGetUserShellFolderPath(i64 %106, i32* null, i32* %107, i32* %110)
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %105, %101, %90
  %113 = load i32, i32* %12, align 4
  %114 = call i64 @FAILED(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i64, i64* %8, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = call i32 (i64, i64, ...) @_SHGetDefaultValue(i64 %117, i64 %119)
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %116, %112
  %122 = load i32*, i32** %13, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %132

124:                                              ; preds = %121
  %125 = load i32*, i32** %13, align 8
  %126 = load i32*, i32** @DefaultW, align 8
  %127 = icmp ne i32* %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i32*, i32** %13, align 8
  %130 = ptrtoint i32* %129 to i32
  %131 = call i32 @LocalFree(i32 %130)
  br label %132

132:                                              ; preds = %128, %124, %121
  br label %133

133:                                              ; preds = %132, %47
  br label %134

134:                                              ; preds = %133, %69
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @debugstr_w(i32 %136)
  %138 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %135, i32 %137)
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %134, %40, %35, %25
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @TRACE(i8*, i32, i32, ...) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @_SHGetDefaultValue(i64, i64, ...) #1

declare dso_local i32* @_GetUserSidStringFromToken(i32*) #1

declare dso_local i32 @StringFromGUID2(i32, i32*, i32) #1

declare dso_local i32 @_SHGetUserShellFolderPath(i64, i32*, i32*, i32*, ...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i32 @debugstr_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
