; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test__llseek.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test__llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filename = common dso_local global i32 0, align 4
@HFILE_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"couldn't create file \22%s\22 (err=%d)\0A\00", align 1
@sillytext = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"_hwrite complains\0A\00", align 1
@FILE_CURRENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"should be able to seek\0A\00", align 1
@FILE_BEGIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"file read size error\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"_llseek error, it got lost seeking\0A\00", align 1
@FILE_END = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [66 x i8] c"should be able to seek past file; poor, poor Windows programmers\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"_lclose complains\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"DeleteFile failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__llseek() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca [1 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @filename, align 4
  %7 = call i64 @_lcreat(i32 %6, i32 0)
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @HFILE_ERROR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i32, i32* @filename, align 4
  %13 = call i32 (...) @GetLastError()
  %14 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  br label %111

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %28, %15
  %17 = load i32, i32* %1, align 4
  %18 = icmp slt i32 %17, 400
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i64, i64* %2, align 8
  %21 = load i8*, i8** @sillytext, align 8
  %22 = load i8*, i8** @sillytext, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = call i32 @_hwrite(i64 %20, i8* %21, i32 %23)
  %25 = icmp ne i32 %24, -1
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %16

31:                                               ; preds = %16
  %32 = load i64, i64* %2, align 8
  %33 = load i8*, i8** @sillytext, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = mul nsw i32 400, %34
  %36 = load i32, i32* @FILE_CURRENT, align 4
  %37 = call i32 @_llseek(i64 %32, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, -1
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i64, i64* %2, align 8
  %42 = load i8*, i8** @sillytext, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = mul nsw i32 35, %43
  %45 = add nsw i32 27, %44
  %46 = load i32, i32* @FILE_BEGIN, align 4
  %47 = call i32 @_llseek(i64 %41, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, -1
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i64, i64* %2, align 8
  %52 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i64 0, i64 0
  %53 = call i32 @_hread(i64 %51, i8* %52, i32 1)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 1, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %58 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i64 0, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8*, i8** @sillytext, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 27
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %60, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i64, i64* %2, align 8
  %69 = load i8*, i8** @sillytext, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = mul nsw i32 -400, %70
  %72 = load i32, i32* @FILE_END, align 4
  %73 = call i32 @_llseek(i64 %68, i32 %71, i32 %72)
  %74 = icmp ne i32 %73, -1
  %75 = zext i1 %74 to i32
  %76 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i64, i64* %2, align 8
  %78 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i64 0, i64 0
  %79 = call i32 @_hread(i64 %77, i8* %78, i32 1)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 1, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %84 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i64 0, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = load i8*, i8** @sillytext, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %86, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i64, i64* %2, align 8
  %95 = load i32, i32* @FILE_END, align 4
  %96 = call i32 @_llseek(i64 %94, i32 1000000, i32 %95)
  %97 = icmp ne i32 %96, -1
  %98 = zext i1 %97 to i32
  %99 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i64, i64* @HFILE_ERROR, align 8
  %101 = load i64, i64* %2, align 8
  %102 = call i64 @_lclose(i64 %101)
  %103 = icmp ne i64 %100, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %106 = load i32, i32* @filename, align 4
  %107 = call i32 @DeleteFileA(i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 (...) @GetLastError()
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %31, %11
  ret void
}

declare dso_local i64 @_lcreat(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @_hwrite(i64, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @_llseek(i64, i32, i32) #1

declare dso_local i32 @_hread(i64, i8*, i32) #1

declare dso_local i64 @_lclose(i64) #1

declare dso_local i32 @DeleteFileA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
