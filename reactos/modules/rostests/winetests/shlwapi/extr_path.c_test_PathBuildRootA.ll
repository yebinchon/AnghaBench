; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_path.c_test_PathBuildRootA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_path.c_test_PathBuildRootA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%c:\\\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"aaaaaaaaa\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Expected root == path, got %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Expected %s, got %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Expected 0xdeadbeef, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Expected aaaaaaaaa or empty string, got %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"A:\\\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Expected A:\\, got %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Expected root == NULL, got %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PathBuildRootA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PathBuildRootA() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [10 x i8], align 1
  %3 = alloca [26 x [4 x i8]], align 16
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8 65, i8* %4, align 1
  br label %6

6:                                                ; preds = %19, %0
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp sle i32 %8, 90
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load i8, i8* %4, align 1
  %12 = sext i8 %11 to i32
  %13 = sub nsw i32 %12, 65
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [26 x [4 x i8]], [26 x [4 x i8]]* %3, i64 0, i64 %14
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %17 = load i8, i8* %4, align 1
  %18 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %17)
  br label %19

19:                                               ; preds = %10
  %20 = load i8, i8* %4, align 1
  %21 = add i8 %20, 1
  store i8 %21, i8* %4, align 1
  br label %6

22:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %59, %22
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 26
  br i1 %25, label %26, label %62

26:                                               ; preds = %23
  %27 = call i32 @SetLastError(i32 -559038737)
  %28 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %29 = call i32 @lstrcpyA(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %31 = load i32, i32* %5, align 4
  %32 = call i8* @PathBuildRootA(i8* %30, i32 %31)
  store i8* %32, i8** %1, align 8
  %33 = load i8*, i8** %1, align 8
  %34 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %35 = icmp eq i8* %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i8*, i8** %1, align 8
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** %1, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [26 x [4 x i8]], [26 x [4 x i8]]* %3, i64 0, i64 %41
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %42, i64 0, i64 0
  %44 = call i32 @lstrcmpA(i8* %39, i8* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [26 x [4 x i8]], [26 x [4 x i8]]* %3, i64 0, i64 %49
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %50, i64 0, i64 0
  %52 = load i8*, i8** %1, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %51, i8* %52)
  %54 = call i32 (...) @GetLastError()
  %55 = icmp eq i32 %54, -559038737
  %56 = zext i1 %55 to i32
  %57 = call i32 (...) @GetLastError()
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %26
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %23

62:                                               ; preds = %23
  %63 = call i32 @SetLastError(i32 -559038737)
  %64 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %65 = call i32 @lstrcpyA(i8* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %66 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %67 = call i8* @PathBuildRootA(i8* %66, i32 -1)
  store i8* %67, i8** %1, align 8
  %68 = load i8*, i8** %1, align 8
  %69 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %70 = icmp eq i8* %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i8*, i8** %1, align 8
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  %74 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %75 = call i32 @lstrcmpA(i8* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %62
  %78 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = icmp ne i8 %79, 0
  %81 = xor i1 %80, true
  br label %82

82:                                               ; preds = %77, %62
  %83 = phi i1 [ true, %62 ], [ %81, %77 ]
  %84 = zext i1 %83 to i32
  %85 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %85)
  %87 = call i32 (...) @GetLastError()
  %88 = icmp eq i32 %87, -559038737
  %89 = zext i1 %88 to i32
  %90 = call i32 (...) @GetLastError()
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %92 = call i32 @SetLastError(i32 -559038737)
  %93 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %94 = call i32 @lstrcpyA(i8* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %95 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %96 = call i8* @PathBuildRootA(i8* %95, i32 26)
  store i8* %96, i8** %1, align 8
  %97 = load i8*, i8** %1, align 8
  %98 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %99 = icmp eq i8* %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i8*, i8** %1, align 8
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %101)
  %103 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %104 = call i32 @lstrcmpA(i8* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %82
  %107 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = icmp ne i8 %108, 0
  %110 = xor i1 %109, true
  br label %111

111:                                              ; preds = %106, %82
  %112 = phi i1 [ true, %82 ], [ %110, %106 ]
  %113 = zext i1 %112 to i32
  %114 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  %116 = call i32 (...) @GetLastError()
  %117 = icmp eq i32 %116, -559038737
  %118 = zext i1 %117 to i32
  %119 = call i32 (...) @GetLastError()
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  %121 = call i32 @SetLastError(i32 -559038737)
  %122 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %123 = call i32 @lstrcpyA(i8* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %124 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %125 = call i8* @PathBuildRootA(i8* %124, i32 0)
  store i8* %125, i8** %1, align 8
  %126 = load i8*, i8** %1, align 8
  %127 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %128 = icmp eq i8* %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i8*, i8** %1, align 8
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %130)
  %132 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %133 = call i32 @lstrcmpA(i8* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %137)
  %139 = call i32 (...) @GetLastError()
  %140 = icmp eq i32 %139, -559038737
  %141 = zext i1 %140 to i32
  %142 = call i32 (...) @GetLastError()
  %143 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  %144 = call i32 @SetLastError(i32 -559038737)
  %145 = call i8* @PathBuildRootA(i8* null, i32 0)
  store i8* %145, i8** %1, align 8
  %146 = load i8*, i8** %1, align 8
  %147 = icmp eq i8* %146, null
  %148 = zext i1 %147 to i32
  %149 = load i8*, i8** %1, align 8
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %149)
  %151 = call i32 (...) @GetLastError()
  %152 = icmp eq i32 %151, -559038737
  %153 = zext i1 %152 to i32
  %154 = call i32 (...) @GetLastError()
  %155 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %154)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8 signext) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @lstrcpyA(i8*, i8*) #1

declare dso_local i8* @PathBuildRootA(i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @lstrcmpA(i8*, i8*) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
