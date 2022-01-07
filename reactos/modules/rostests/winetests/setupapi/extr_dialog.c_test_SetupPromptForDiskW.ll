; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_dialog.c_test_SetupPromptForDiskW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_dialog.c_test_SetupPromptForDiskW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_SetupPromptForDiskW.file = private unnamed_addr constant [13 x i8] c"kernel32.dll\00", align 1
@__const.test_SetupPromptForDiskW.title = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@__const.test_SetupPromptForDiskW.disk = private unnamed_addr constant [9 x i8] c"Testdisk\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@IDF_CHECKFIRST = common dso_local global i32 0, align 4
@DPROMPT_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Expected DPROMPT_SUCCESS, got %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Expect length %u, got %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Expected path %s, got %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Expected DPROMPT_SUCCESS, got %d\0A\00", align 1
@DPROMPT_BUFFERTOOSMALL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"Expected DPROMPT_BUFFERTOOSMALL, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetupPromptForDiskW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetupPromptForDiskW() #0 {
  %1 = alloca [13 x i8], align 1
  %2 = alloca [5 x i8], align 1
  %3 = alloca [9 x i8], align 1
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = bitcast [13 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.test_SetupPromptForDiskW.file, i32 0, i32 0), i64 13, i1 false)
  %10 = bitcast [5 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_SetupPromptForDiskW.title, i32 0, i32 0), i64 5, i1 false)
  %11 = bitcast [9 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.test_SetupPromptForDiskW.disk, i32 0, i32 0), i64 9, i1 false)
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = call i32 @GetSystemDirectoryW(i8* %15, i32 %19)
  %21 = trunc i64 %17 to i32
  %22 = call i32 @memset(i8* %18, i32 0, i32 %21)
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %24 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %25 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %26 = load i32, i32* @IDF_CHECKFIRST, align 4
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call i64 @SetupPromptForDiskW(i32 0, i8* %23, i8* %24, i8* %15, i8* %25, i32 0, i32 %26, i8* %18, i32 %28, i32* %8)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @DPROMPT_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %7, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 (i32, i8*, i32, ...) @ok(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @lstrlenW(i8* %15)
  %39 = add nsw i32 %38, 1
  %40 = icmp eq i32 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @lstrlenW(i8* %15)
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i32, i8*, i32, ...) @ok(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  %46 = call i64 @lstrcmpW(i8* %15, i8* %18)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @wine_dbgstr_w(i8* %15)
  %50 = call i32 @wine_dbgstr_w(i8* %18)
  %51 = call i32 (i32, i8*, i32, ...) @ok(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %50)
  %52 = trunc i64 %17 to i32
  %53 = call i32 @memset(i8* %18, i32 0, i32 %52)
  %54 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %55 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %56 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %57 = load i32, i32* @IDF_CHECKFIRST, align 4
  %58 = call i64 @SetupPromptForDiskW(i32 0, i8* %54, i8* %55, i8* %15, i8* %56, i32 0, i32 %57, i8* null, i32 0, i32* %8)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @DPROMPT_SUCCESS, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %7, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 (i32, i8*, i32, ...) @ok(i32 %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @lstrlenW(i8* %15)
  %68 = add nsw i32 %67, 1
  %69 = icmp eq i32 %66, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @lstrlenW(i8* %15)
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %8, align 4
  %74 = call i32 (i32, i8*, i32, ...) @ok(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73)
  %75 = trunc i64 %17 to i32
  %76 = call i32 @memset(i8* %18, i32 0, i32 %75)
  %77 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %78 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %79 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %80 = load i32, i32* @IDF_CHECKFIRST, align 4
  %81 = call i64 @SetupPromptForDiskW(i32 0, i8* %77, i8* %78, i8* %15, i8* %79, i32 0, i32 %80, i8* %18, i32 1, i32* %8)
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @DPROMPT_BUFFERTOOSMALL, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %7, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 (i32, i8*, i32, ...) @ok(i32 %85, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = trunc i64 %17 to i32
  %90 = call i32 @memset(i8* %18, i32 0, i32 %89)
  %91 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %92 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %93 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %94 = load i32, i32* @IDF_CHECKFIRST, align 4
  %95 = call i32 @lstrlenW(i8* %15)
  %96 = call i64 @SetupPromptForDiskW(i32 0, i8* %91, i8* %92, i8* %15, i8* %93, i32 0, i32 %94, i8* %18, i32 %95, i32* %8)
  store i64 %96, i64* %7, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* @DPROMPT_BUFFERTOOSMALL, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %7, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 (i32, i8*, i32, ...) @ok(i32 %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  %104 = trunc i64 %17 to i32
  %105 = call i32 @memset(i8* %18, i32 0, i32 %104)
  %106 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %107 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %108 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %109 = load i32, i32* @IDF_CHECKFIRST, align 4
  %110 = call i32 @lstrlenW(i8* %15)
  %111 = add nsw i32 %110, 1
  %112 = call i64 @SetupPromptForDiskW(i32 0, i8* %106, i8* %107, i8* %15, i8* %108, i32 0, i32 %109, i8* %18, i32 %111, i32* %8)
  store i64 %112, i64* %7, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* @DPROMPT_SUCCESS, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i64, i64* %7, align 8
  %118 = trunc i64 %117 to i32
  %119 = call i32 (i32, i8*, i32, ...) @ok(i32 %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @lstrlenW(i8* %15)
  %122 = add nsw i32 %121, 1
  %123 = icmp eq i32 %120, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @lstrlenW(i8* %15)
  %126 = add nsw i32 %125, 1
  %127 = load i32, i32* %8, align 4
  %128 = call i32 (i32, i8*, i32, ...) @ok(i32 %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %126, i32 %127)
  %129 = call i64 @lstrcmpW(i8* %15, i8* %18)
  %130 = icmp eq i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @wine_dbgstr_w(i8* %15)
  %133 = call i32 @wine_dbgstr_w(i8* %18)
  %134 = call i32 (i32, i8*, i32, ...) @ok(i32 %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %132, i32 %133)
  %135 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %135)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetSystemDirectoryW(i8*, i32) #3

declare dso_local i32 @memset(i8*, i32, i32) #3

declare dso_local i64 @SetupPromptForDiskW(i32, i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i32*) #3

declare dso_local i32 @ok(i32, i8*, i32, ...) #3

declare dso_local i32 @lstrlenW(i8*) #3

declare dso_local i64 @lstrcmpW(i8*, i8*) #3

declare dso_local i32 @wine_dbgstr_w(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
