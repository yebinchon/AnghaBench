; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_dialog.c_test_SetupPromptForDiskA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_dialog.c_test_SetupPromptForDiskA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_SetupPromptForDiskA.file = private unnamed_addr constant [13 x i8] c"kernel32.dll\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Testdisk\00", align 1
@IDF_CHECKFIRST = common dso_local global i32 0, align 4
@DPROMPT_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Expected DPROMPT_SUCCESS, got %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Expect length %u, got %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Expected path %s, got %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Expected DPROMPT_SUCCESS, got %d\0A\00", align 1
@DPROMPT_BUFFERTOOSMALL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"Expected DPROMPT_BUFFERTOOSMALL, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetupPromptForDiskA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetupPromptForDiskA() #0 {
  %1 = alloca [13 x i8], align 1
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast [13 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.test_SetupPromptForDiskA.file, i32 0, i32 0), i64 13, i1 false)
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = call i32 @GetSystemDirectoryA(i8* %11, i32 %15)
  %17 = trunc i64 %13 to i32
  %18 = call i32 @memset(i8* %14, i32 0, i32 %17)
  %19 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %20 = load i32, i32* @IDF_CHECKFIRST, align 4
  %21 = sub i64 %13, 1
  %22 = trunc i64 %21 to i32
  %23 = call i32 @SetupPromptForDiskA(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %11, i8* %19, i32 0, i32 %20, i8* %14, i32 %22, i32* %6)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @DPROMPT_SUCCESS, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @strlen(i8* %11)
  %32 = add nsw i32 %31, 1
  %33 = icmp eq i32 %30, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @strlen(i8* %11)
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %36, i32 %37)
  %39 = call i64 @strcmp(i8* %11, i8* %14)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %11, i8* %14)
  %43 = trunc i64 %13 to i32
  %44 = call i32 @memset(i8* %14, i32 0, i32 %43)
  %45 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %46 = load i32, i32* @IDF_CHECKFIRST, align 4
  %47 = call i32 @SetupPromptForDiskA(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %11, i8* %45, i32 0, i32 %46, i8* null, i32 0, i32* %6)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @DPROMPT_SUCCESS, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @strlen(i8* %11)
  %56 = add nsw i32 %55, 1
  %57 = icmp eq i32 %54, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @strlen(i8* %11)
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %61)
  %63 = trunc i64 %13 to i32
  %64 = call i32 @memset(i8* %14, i32 0, i32 %63)
  %65 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %66 = load i32, i32* @IDF_CHECKFIRST, align 4
  %67 = call i32 @SetupPromptForDiskA(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %11, i8* %65, i32 0, i32 %66, i8* %14, i32 1, i32* %6)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @DPROMPT_BUFFERTOOSMALL, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %5, align 4
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  %74 = trunc i64 %13 to i32
  %75 = call i32 @memset(i8* %14, i32 0, i32 %74)
  %76 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %77 = load i32, i32* @IDF_CHECKFIRST, align 4
  %78 = call i32 @strlen(i8* %11)
  %79 = call i32 @SetupPromptForDiskA(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %11, i8* %76, i32 0, i32 %77, i8* %14, i32 %78, i32* %6)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @DPROMPT_BUFFERTOOSMALL, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %5, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  %86 = trunc i64 %13 to i32
  %87 = call i32 @memset(i8* %14, i32 0, i32 %86)
  %88 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %89 = load i32, i32* @IDF_CHECKFIRST, align 4
  %90 = call i32 @strlen(i8* %11)
  %91 = add nsw i32 %90, 1
  %92 = call i32 @SetupPromptForDiskA(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %11, i8* %88, i32 0, i32 %89, i8* %14, i32 %91, i32* %6)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @DPROMPT_SUCCESS, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @strlen(i8* %11)
  %101 = add nsw i32 %100, 1
  %102 = icmp eq i32 %99, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @strlen(i8* %11)
  %105 = add nsw i32 %104, 1
  %106 = load i32, i32* %6, align 4
  %107 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %106)
  %108 = call i64 @strcmp(i8* %11, i8* %14)
  %109 = icmp eq i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %11, i8* %14)
  %112 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %112)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetSystemDirectoryA(i8*, i32) #3

declare dso_local i32 @memset(i8*, i32, i32) #3

declare dso_local i32 @SetupPromptForDiskA(i32, i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i32*) #3

declare dso_local i32 @ok(i32, i8*, ...) #3

declare dso_local i32 @strlen(i8*) #3

declare dso_local i64 @strcmp(i8*, i8*) #3

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
