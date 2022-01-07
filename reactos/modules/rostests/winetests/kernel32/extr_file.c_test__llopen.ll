; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test__llopen.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test__llopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filename = common dso_local global i32 0, align 4
@HFILE_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"couldn't create file \22%s\22 (err=%d)\0A\00", align 1
@sillytext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"_hwrite complains\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"_lclose complains\0A\00", align 1
@OF_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"_hwrite shouldn't be able to write!\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"file read size error\0A\00", align 1
@OF_READWRITE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"_hwrite should write just fine\0A\00", align 1
@OF_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"you should only be able to write this file\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"DeleteFile failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__llopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__llopen() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca [10000 x i8], align 16
  %4 = alloca i32, align 4
  %5 = load i32, i32* @filename, align 4
  %6 = call i64 @_lcreat(i32 %5, i32 0)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @HFILE_ERROR, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32, i32* @filename, align 4
  %12 = call i32 (...) @GetLastError()
  %13 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  br label %121

14:                                               ; preds = %0
  %15 = load i64, i64* @HFILE_ERROR, align 8
  %16 = load i64, i64* %1, align 8
  %17 = load i32, i32* @sillytext, align 4
  %18 = load i32, i32* @sillytext, align 4
  %19 = call i32 @strlen(i32 %18)
  %20 = call i64 @_hwrite(i64 %16, i32 %17, i32 %19)
  %21 = icmp ne i64 %15, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i64, i64* @HFILE_ERROR, align 8
  %25 = load i64, i64* %1, align 8
  %26 = call i64 @_lclose(i64 %25)
  %27 = icmp ne i64 %24, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @filename, align 4
  %31 = load i32, i32* @OF_READ, align 4
  %32 = call i64 @_lopen(i32 %30, i32 %31)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* @HFILE_ERROR, align 8
  %34 = load i64, i64* %1, align 8
  %35 = load i32, i32* @sillytext, align 4
  %36 = load i32, i32* @sillytext, align 4
  %37 = call i32 @strlen(i32 %36)
  %38 = call i64 @_hwrite(i64 %34, i32 %35, i32 %37)
  %39 = icmp eq i64 %33, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i64, i64* %1, align 8
  %43 = getelementptr inbounds [10000 x i8], [10000 x i8]* %3, i64 0, i64 0
  %44 = load i32, i32* @sillytext, align 4
  %45 = call i32 @strlen(i32 %44)
  %46 = call i64 @_hread(i64 %42, i8* %43, i32 %45)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* @sillytext, align 4
  %49 = call i32 @strlen(i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i64, i64* @HFILE_ERROR, align 8
  %55 = load i64, i64* %1, align 8
  %56 = call i64 @_lclose(i64 %55)
  %57 = icmp ne i64 %54, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @filename, align 4
  %61 = load i32, i32* @OF_READWRITE, align 4
  %62 = call i64 @_lopen(i32 %60, i32 %61)
  store i64 %62, i64* %1, align 8
  %63 = load i64, i64* %1, align 8
  %64 = getelementptr inbounds [10000 x i8], [10000 x i8]* %3, i64 0, i64 0
  %65 = load i32, i32* @sillytext, align 4
  %66 = call i32 @strlen(i32 %65)
  %67 = mul nsw i32 2, %66
  %68 = call i64 @_hread(i64 %63, i8* %64, i32 %67)
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %2, align 4
  %70 = load i32, i32* @sillytext, align 4
  %71 = call i32 @strlen(i32 %70)
  %72 = load i32, i32* %2, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i64, i64* @HFILE_ERROR, align 8
  %77 = load i64, i64* %1, align 8
  %78 = load i32, i32* @sillytext, align 4
  %79 = load i32, i32* @sillytext, align 4
  %80 = call i32 @strlen(i32 %79)
  %81 = call i64 @_hwrite(i64 %77, i32 %78, i32 %80)
  %82 = icmp ne i64 %76, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i64, i64* @HFILE_ERROR, align 8
  %86 = load i64, i64* %1, align 8
  %87 = call i64 @_lclose(i64 %86)
  %88 = icmp ne i64 %85, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @filename, align 4
  %92 = load i32, i32* @OF_WRITE, align 4
  %93 = call i64 @_lopen(i32 %91, i32 %92)
  store i64 %93, i64* %1, align 8
  %94 = load i64, i64* @HFILE_ERROR, align 8
  %95 = load i64, i64* %1, align 8
  %96 = getelementptr inbounds [10000 x i8], [10000 x i8]* %3, i64 0, i64 0
  %97 = call i64 @_hread(i64 %95, i8* %96, i32 1)
  %98 = icmp eq i64 %94, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %101 = load i64, i64* @HFILE_ERROR, align 8
  %102 = load i64, i64* %1, align 8
  %103 = load i32, i32* @sillytext, align 4
  %104 = load i32, i32* @sillytext, align 4
  %105 = call i32 @strlen(i32 %104)
  %106 = call i64 @_hwrite(i64 %102, i32 %103, i32 %105)
  %107 = icmp ne i64 %101, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i64, i64* @HFILE_ERROR, align 8
  %111 = load i64, i64* %1, align 8
  %112 = call i64 @_lclose(i64 %111)
  %113 = icmp ne i64 %110, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i32, i32* @filename, align 4
  %117 = call i32 @DeleteFileA(i32 %116)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 (...) @GetLastError()
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %14, %10
  ret void
}

declare dso_local i64 @_lcreat(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @_hwrite(i64, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @_lclose(i64) #1

declare dso_local i64 @_lopen(i32, i32) #1

declare dso_local i64 @_hread(i64, i8*, i32) #1

declare dso_local i32 @DeleteFileA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
