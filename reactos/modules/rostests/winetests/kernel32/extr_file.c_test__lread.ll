; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test__lread.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test__lread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filename = common dso_local global i32 0, align 4
@HFILE_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"couldn't create file \22%s\22 (err=%d)\0A\00", align 1
@sillytext = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"_hwrite complains\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"_lclose complains\0A\00", align 1
@OF_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"couldn't open file \22%s\22 again (err=%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"file read size error\0A\00", align 1
@FILE_BEGIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"_llseek complains\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"erratic _hread return value\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"that's not what's written\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"DeleteFile failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__lread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__lread() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [10000 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @filename, align 4
  %8 = call i64 @_lcreat(i32 %7, i32 0)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @HFILE_ERROR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = load i32, i32* @filename, align 4
  %14 = call i32 (...) @GetLastError()
  %15 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  br label %110

16:                                               ; preds = %0
  %17 = load i64, i64* @HFILE_ERROR, align 8
  %18 = load i64, i64* %1, align 8
  %19 = load i8*, i8** @sillytext, align 8
  %20 = load i8*, i8** @sillytext, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = call i64 @_hwrite(i64 %18, i8* %19, i64 %21)
  %23 = icmp ne i64 %17, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* @HFILE_ERROR, align 8
  %27 = load i64, i64* %1, align 8
  %28 = call i64 @_lclose(i64 %27)
  %29 = icmp ne i64 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @filename, align 4
  %33 = load i32, i32* @OF_READ, align 4
  %34 = call i64 @_lopen(i32 %32, i32 %33)
  store i64 %34, i64* %1, align 8
  %35 = load i64, i64* @HFILE_ERROR, align 8
  %36 = load i64, i64* %1, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @filename, align 4
  %40 = call i32 (...) @GetLastError()
  %41 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i64, i64* %1, align 8
  %43 = getelementptr inbounds [10000 x i8], [10000 x i8]* %2, i64 0, i64 0
  %44 = load i8*, i8** @sillytext, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = mul nsw i64 2, %45
  %47 = call i64 @_lread(i64 %42, i8* %43, i64 %46)
  store i64 %47, i64* %3, align 8
  %48 = load i8*, i8** @sillytext, align 8
  %49 = call i64 @lstrlenA(i8* %48)
  %50 = load i64, i64* %3, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %54

54:                                               ; preds = %95, %16
  %55 = load i64, i64* %4, align 8
  %56 = load i8*, i8** @sillytext, align 8
  %57 = call i64 @strlen(i8* %56)
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %59, label %98

59:                                               ; preds = %54
  %60 = load i64, i64* %1, align 8
  %61 = load i32, i32* @FILE_BEGIN, align 4
  %62 = call i64 @_llseek(i64 %60, i32 0, i32 %61)
  %63 = icmp eq i64 0, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i64, i64* %1, align 8
  %67 = getelementptr inbounds [10000 x i8], [10000 x i8]* %2, i64 0, i64 0
  %68 = load i64, i64* %4, align 8
  %69 = call i64 @_lread(i64 %66, i8* %67, i64 %68)
  %70 = load i64, i64* %4, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %74

74:                                               ; preds = %91, %59
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %4, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load i64, i64* %5, align 8
  %80 = getelementptr inbounds [10000 x i8], [10000 x i8]* %2, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = load i8*, i8** @sillytext, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %82, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %91

91:                                               ; preds = %78
  %92 = load i64, i64* %5, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %5, align 8
  br label %74

94:                                               ; preds = %74
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %4, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %4, align 8
  br label %54

98:                                               ; preds = %54
  %99 = load i64, i64* @HFILE_ERROR, align 8
  %100 = load i64, i64* %1, align 8
  %101 = call i64 @_lclose(i64 %100)
  %102 = icmp ne i64 %99, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* @filename, align 4
  %106 = call i32 @DeleteFileA(i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (...) @GetLastError()
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %98, %12
  ret void
}

declare dso_local i64 @_lcreat(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @_hwrite(i64, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @_lclose(i64) #1

declare dso_local i64 @_lopen(i32, i32) #1

declare dso_local i64 @_lread(i64, i8*, i64) #1

declare dso_local i64 @lstrlenA(i8*) #1

declare dso_local i64 @_llseek(i64, i32, i32) #1

declare dso_local i32 @DeleteFileA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
