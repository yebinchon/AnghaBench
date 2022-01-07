; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlexec.c_test_commandline2argv.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlexec.c_test_commandline2argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@test_commandline2argv.exeW = internal constant [4 x i8] c"exe\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@cmdline_tests = common dso_local global %struct.TYPE_4__* null, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"expected NULL with ERROR_INVALID_PARAMETER got %p with %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"expected 1 args, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"expected NULL-terminated list of commandline arguments\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"wrong path to the current executable: %s instead of %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_commandline2argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_commandline2argv() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmdline_tests, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %1, align 8
  br label %13

13:                                               ; preds = %23, %0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %20 = call i32 @test_one_cmdline(%struct.TYPE_4__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %121

23:                                               ; preds = %18
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 1
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %1, align 8
  br label %13

26:                                               ; preds = %13
  %27 = call i32 @SetLastError(i32 -559038737)
  %28 = call i8** @CommandLineToArgvW(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_commandline2argv.exeW, i64 0, i64 0), i32* null)
  store i8** %28, i8*** %4, align 8
  %29 = call i64 (...) @GetLastError()
  store i64 %29, i64* %6, align 8
  %30 = load i8**, i8*** %4, align 8
  %31 = icmp eq i8** %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %32, %26
  %37 = phi i1 [ false, %26 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = load i8**, i8*** %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8** %39, i64 %40)
  %42 = call i32 @SetLastError(i32 -559038737)
  %43 = call i8** @CommandLineToArgvW(i8* null, i32* null)
  store i8** %43, i8*** %4, align 8
  %44 = call i64 (...) @GetLastError()
  store i64 %44, i64* %6, align 8
  %45 = load i8**, i8*** %4, align 8
  %46 = icmp eq i8** %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %47, %36
  %52 = phi i1 [ false, %36 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = load i8**, i8*** %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8** %54, i64 %55)
  store i8 0, i8* %11, align 16
  %57 = call i8** @CommandLineToArgvW(i8* %11, i32* %5)
  store i8** %57, i8*** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %66, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %5, align 4
  %62 = icmp sgt i32 %61, 1
  %63 = zext i1 %62 to i32
  %64 = call i64 @broken(i32 %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %60, %51
  %67 = phi i1 [ true, %51 ], [ %65, %60 ]
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i8**, i8*** %4, align 8
  %72 = icmp ne i8** %71, null
  br i1 %72, label %73, label %92

73:                                               ; preds = %66
  %74 = load i8**, i8*** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load i8**, i8*** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i64 @broken(i32 %87)
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %80, %73
  %91 = phi i1 [ true, %73 ], [ %89, %80 ]
  br label %92

92:                                               ; preds = %90, %66
  %93 = phi i1 [ true, %66 ], [ %91, %90 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %114

98:                                               ; preds = %92
  %99 = call i32 @ARRAY_SIZE(i8* %11)
  %100 = call i32 @GetModuleFileNameW(i32* null, i8* %11, i32 %99)
  %101 = load i8**, i8*** %4, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @lstrcmpW(i8* %103, i8* %11)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = load i8**, i8*** %4, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i8** @wine_dbgstr_w(i8* %110)
  %112 = call i8** @wine_dbgstr_w(i8* %11)
  %113 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8** %111, i8** %112)
  br label %114

114:                                              ; preds = %98, %92
  %115 = load i8**, i8*** %4, align 8
  %116 = icmp ne i8** %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i8**, i8*** %4, align 8
  %119 = call i32 @LocalFree(i8** %118)
  br label %120

120:                                              ; preds = %117, %114
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %120, %22
  %122 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %7, align 4
  switch i32 %123, label %125 [
    i32 0, label %124
    i32 1, label %124
  ]

124:                                              ; preds = %121, %121
  ret void

125:                                              ; preds = %121
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @test_one_cmdline(%struct.TYPE_4__*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i8** @CommandLineToArgvW(i8*, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @GetModuleFileNameW(i32*, i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i32 @lstrcmpW(i8*, i8*) #2

declare dso_local i8** @wine_dbgstr_w(i8*) #2

declare dso_local i32 @LocalFree(i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
