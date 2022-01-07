; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test__hread.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_file.c_test__hread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filename = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__hread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__hread() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [10000 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i32, i32* @filename, align 4
  %8 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %9 = call i32 @SetFileAttributesA(i32 %7, i32 %8)
  %10 = load i32, i32* @filename, align 4
  %11 = call i64 @DeleteFileA(i32 %10)
  %12 = load i32, i32* @filename, align 4
  %13 = call i64 @_lcreat(i32 %12, i32 0)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @HFILE_ERROR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %0
  %18 = load i32, i32* @filename, align 4
  %19 = call i32 (...) @GetLastError()
  %20 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  br label %118

21:                                               ; preds = %0
  %22 = load i64, i64* @HFILE_ERROR, align 8
  %23 = load i64, i64* %1, align 8
  %24 = load i8*, i8** @sillytext, align 8
  %25 = load i8*, i8** @sillytext, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = call i64 @_hwrite(i64 %23, i8* %24, i32 %26)
  %28 = icmp ne i64 %22, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i64, i64* @HFILE_ERROR, align 8
  %32 = load i64, i64* %1, align 8
  %33 = call i64 @_lclose(i64 %32)
  %34 = icmp ne i64 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @filename, align 4
  %38 = load i32, i32* @OF_READ, align 4
  %39 = call i64 @_lopen(i32 %37, i32 %38)
  store i64 %39, i64* %1, align 8
  %40 = load i64, i64* @HFILE_ERROR, align 8
  %41 = load i64, i64* %1, align 8
  %42 = icmp ne i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* @filename, align 4
  %45 = call i32 (...) @GetLastError()
  %46 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i64, i64* %1, align 8
  %48 = getelementptr inbounds [10000 x i8], [10000 x i8]* %2, i64 0, i64 0
  %49 = load i8*, i8** @sillytext, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = mul nsw i32 2, %50
  %52 = sext i32 %51 to i64
  %53 = call i64 @_hread(i64 %47, i8* %48, i64 %52)
  store i64 %53, i64* %3, align 8
  %54 = load i8*, i8** @sillytext, align 8
  %55 = call i64 @lstrlenA(i8* %54)
  %56 = load i64, i64* %3, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %60

60:                                               ; preds = %101, %21
  %61 = load i64, i64* %4, align 8
  %62 = load i8*, i8** @sillytext, align 8
  %63 = call i64 @lstrlenA(i8* %62)
  %64 = icmp slt i64 %61, %63
  br i1 %64, label %65, label %104

65:                                               ; preds = %60
  %66 = load i64, i64* %1, align 8
  %67 = load i32, i32* @FILE_BEGIN, align 4
  %68 = call i64 @_llseek(i64 %66, i32 0, i32 %67)
  %69 = icmp eq i64 0, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i64, i64* %1, align 8
  %73 = getelementptr inbounds [10000 x i8], [10000 x i8]* %2, i64 0, i64 0
  %74 = load i64, i64* %4, align 8
  %75 = call i64 @_hread(i64 %72, i8* %73, i64 %74)
  %76 = load i64, i64* %4, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %80

80:                                               ; preds = %97, %65
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* %4, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds [10000 x i8], [10000 x i8]* %2, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = load i8*, i8** @sillytext, align 8
  %90 = load i64, i64* %5, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %88, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %97

97:                                               ; preds = %84
  %98 = load i64, i64* %5, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %5, align 8
  br label %80

100:                                              ; preds = %80
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %4, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %4, align 8
  br label %60

104:                                              ; preds = %60
  %105 = load i64, i64* @HFILE_ERROR, align 8
  %106 = load i64, i64* %1, align 8
  %107 = call i64 @_lclose(i64 %106)
  %108 = icmp ne i64 %105, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @filename, align 4
  %112 = call i64 @DeleteFileA(i32 %111)
  store i64 %112, i64* %6, align 8
  %113 = load i64, i64* %6, align 8
  %114 = icmp ne i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 (...) @GetLastError()
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %104, %17
  ret void
}

declare dso_local i32 @SetFileAttributesA(i32, i32) #1

declare dso_local i64 @DeleteFileA(i32) #1

declare dso_local i64 @_lcreat(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @_hwrite(i64, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @_lclose(i64) #1

declare dso_local i64 @_lopen(i32, i32) #1

declare dso_local i64 @_hread(i64, i8*, i64) #1

declare dso_local i64 @lstrlenA(i8*) #1

declare dso_local i64 @_llseek(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
