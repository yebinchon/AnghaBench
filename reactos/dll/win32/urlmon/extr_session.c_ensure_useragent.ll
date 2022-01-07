; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_session.c_ensure_useragent.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_session.c_ensure_useragent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@__const.ensure_useragent.info = private unnamed_addr constant %struct.TYPE_3__ { i32 24, i64 0, i32 0, i32 0 }, align 8
@ensure_useragent.formatW = internal constant [66 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows %s%d.%d; %sTrident/5.0\00", align 16
@ensure_useragent.post_platform_keyW = internal constant [89 x i8] c"SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\5.0\\User Agent\\Post Platform\00", align 16
@ensure_useragent.ntW = internal constant [4 x i8] c"NT \00", align 1
@ensure_useragent.win64W = internal constant [13 x i8] c"Win64; x64; \00", align 1
@ensure_useragent.wow64W = internal constant [8 x i8] c"WOW64; \00", align 1
@ensure_useragent.emptyW = internal constant [1 x i8] zeroinitializer, align 1
@user_agent = common dso_local global i8* null, align 8
@VER_PLATFORM_WIN32_NT = common dso_local global i64 0, align 8
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Using user agent %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ensure_useragent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ensure_useragent() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [512 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_3__* @__const.ensure_useragent.info to i8*), i64 24, i1 false)
  store i64 0, i64* %8, align 8
  %15 = load i8*, i8** @user_agent, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  br label %129

18:                                               ; preds = %0
  %19 = call i32 @GetVersionExW(%struct.TYPE_3__* %1)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VER_PLATFORM_WIN32_NT, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ensure_useragent.ntW, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @ensure_useragent.emptyW, i64 0, i64 0)
  store i8* %25, i8** %3, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @ensure_useragent.win64W, i64 0, i64 0), i8** %2, align 8
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @sprintfW(i8* %26, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @ensure_useragent.formatW, i64 0, i64 0), i8* %27, i32 %29, i32 %31, i8* %32)
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %35 = call i64 @strlenW(i8* %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, 40
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = mul i64 %38, 1
  %40 = call i8* @heap_alloc(i64 %39)
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %18
  br label %129

44:                                               ; preds = %18
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %47 = load i64, i64* %9, align 8
  %48 = mul i64 %47, 1
  %49 = call i32 @memcpy(i8* %45, i8* %46, i64 %48)
  %50 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %51 = call i64 @RegOpenKeyW(i32 %50, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @ensure_useragent.post_platform_keyW, i64 0, i64 0), i32* %12)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @ERROR_SUCCESS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %116

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %94
  %57 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %58 = call i64 @ARRAY_SIZE(i8* %57)
  store i64 %58, i64* %13, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %62 = call i64 @RegEnumValueW(i32 %59, i64 %60, i8* %61, i64* %13, i32* null, i32* null, i32* null, i32* null)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @ERROR_SUCCESS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %113

67:                                               ; preds = %56
  %68 = load i64, i64* %8, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %13, align 8
  %72 = add i64 %70, %71
  %73 = add i64 %72, 2
  %74 = add i64 %73, 1
  %75 = load i64, i64* %10, align 8
  %76 = icmp uge i64 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %67
  %78 = load i8*, i8** %5, align 8
  %79 = load i64, i64* %10, align 8
  %80 = mul i64 %79, 2
  %81 = load i64, i64* %13, align 8
  %82 = add i64 %80, %81
  %83 = mul i64 %82, 1
  %84 = call i8* @heap_realloc(i8* %78, i64 %83)
  store i8* %84, i8** %6, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %77
  br label %113

88:                                               ; preds = %77
  %89 = load i8*, i8** %6, align 8
  store i8* %89, i8** %5, align 8
  %90 = load i64, i64* %10, align 8
  %91 = mul i64 %90, 2
  %92 = load i64, i64* %13, align 8
  %93 = add i64 %91, %92
  store i64 %93, i64* %10, align 8
  br label %94

94:                                               ; preds = %88, %67
  %95 = load i8*, i8** %5, align 8
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %9, align 8
  %98 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8 59, i8* %98, align 1
  %99 = load i8*, i8** %5, align 8
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %9, align 8
  %102 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 32, i8* %102, align 1
  %103 = load i8*, i8** %5, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %107 = load i64, i64* %13, align 8
  %108 = mul i64 %107, 1
  %109 = call i32 @memcpy(i8* %105, i8* %106, i64 %108)
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %9, align 8
  br label %56

113:                                              ; preds = %87, %66
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @RegCloseKey(i32 %114)
  br label %116

116:                                              ; preds = %113, %44
  %117 = load i8*, i8** %5, align 8
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %9, align 8
  %120 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8 41, i8* %120, align 1
  %121 = load i8*, i8** %5, align 8
  %122 = load i64, i64* %9, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %9, align 8
  %124 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8 0, i8* %124, align 1
  %125 = load i8*, i8** %5, align 8
  store i8* %125, i8** @user_agent, align 8
  %126 = load i8*, i8** @user_agent, align 8
  %127 = call i32 @debugstr_w(i8* %126)
  %128 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %116, %43, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GetVersionExW(%struct.TYPE_3__*) #2

declare dso_local i32 @sprintfW(i8*, i8*, i8*, i32, i32, i8*) #2

declare dso_local i64 @strlenW(i8*) #2

declare dso_local i8* @heap_alloc(i64) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i64 @RegOpenKeyW(i32, i8*, i32*) #2

declare dso_local i64 @ARRAY_SIZE(i8*) #2

declare dso_local i64 @RegEnumValueW(i32, i64, i8*, i64*, i32*, i32*, i32*, i32*) #2

declare dso_local i8* @heap_realloc(i8*, i64) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
