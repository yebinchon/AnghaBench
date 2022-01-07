; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_url.c_test_url_part.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_url.c_test_url_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERNET_MAX_URL_LENGTH = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"UrlGetPart for \22%s\22 gave: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"UrlGetPart for \22%s\22 gave size: %u\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"UrlGetPartA for \22%s\22 part 0x%08x returned 0x%x and \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"UrlGetPartW for \22%s\22 part 0x%08x returned 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"Strings didn't match between ascii and unicode UrlGetPart!\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Expected %s, but got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*)* @test_url_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_url_part(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %16 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @GetWideString(i8* %23)
  store i32 %24, i32* %12, align 4
  store i32 1, i32* %15, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @pUrlGetPartA(i8* %25, i8* %19, i32* %15, i32 %26, i32 %27)
  store i64 %28, i64* %14, align 8
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* @E_POINTER, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %33, i64 %34)
  %36 = load i32, i32* %15, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = add nsw i32 %38, 1
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %4
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 63
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* %15, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = icmp eq i32 %47, %49
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ false, %41 ], [ %50, %46 ]
  br label %53

53:                                               ; preds = %51, %4
  %54 = phi i1 [ true, %4 ], [ %52, %51 ]
  %55 = zext i1 %54 to i32
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %56, i32 %57)
  %59 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  store i32 %59, i32* %15, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @pUrlGetPartA(i8* %60, i8* %19, i32* %15, i32 %61, i32 %62)
  store i64 %63, i64* %14, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* @S_OK, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i64, i64* %14, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %68, i32 %69, i64 %70, i8* %19)
  br i1 true, label %72, label %94

72:                                               ; preds = %53
  %73 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @pUrlGetPartW(i32 %74, i32* %22, i32* %15, i32 %75, i32 %76)
  store i64 %77, i64* %14, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* @S_OK, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i64, i64* %14, align 8
  %85 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %82, i32 %83, i64 %84)
  %86 = call i32 @GetWideString(i8* %19)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i64 @lstrcmpW(i32* %22, i32 %87)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @FreeWideString(i32 %92)
  br label %94

94:                                               ; preds = %72, %53
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @FreeWideString(i32 %95)
  %97 = load i8*, i8** %8, align 8
  %98 = call i64 @strcmp(i8* %19, i8* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %94
  %101 = load i8*, i8** %8, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 63
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i8*, i8** %8, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = call i64 @strcmp(i8* %19, i8* %107)
  %109 = icmp ne i64 %108, 0
  %110 = xor i1 %109, true
  br label %111

111:                                              ; preds = %105, %100
  %112 = phi i1 [ false, %100 ], [ %110, %105 ]
  br label %113

113:                                              ; preds = %111, %94
  %114 = phi i1 [ true, %94 ], [ %112, %111 ]
  %115 = zext i1 %114 to i32
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %116, i8* %19)
  %118 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %118)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetWideString(i8*) #2

declare dso_local i64 @pUrlGetPartA(i8*, i8*, i32*, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @pUrlGetPartW(i32, i32*, i32*, i32, i32) #2

declare dso_local i64 @lstrcmpW(i32*, i32) #2

declare dso_local i32 @FreeWideString(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
