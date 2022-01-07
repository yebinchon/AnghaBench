; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/cmd/extr_cmd.c_DoTestEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/cmd/extr_cmd.c_DoTestEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32, i64 }
%struct.TYPE_10__ = type { i32, i64, i64, i64, i32 }
%struct.TYPE_11__ = type { i64, i64 }

@STARTF_USESTDHANDLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"PrepareForRedirect failed\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i32 0, align 4
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Line %u: bStdOutput %d vs %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Line %u: bStdError %d vs %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Line %u: dwExitCode %ld vs %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @DoTestEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoTestEntry(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %13 = call i32 @memset(%struct.TYPE_10__* %3, i32 0, i32 40)
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store i32 40, i32* %14, align 8
  %15 = load i32, i32* @STARTF_USESTDHANDLES, align 4
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  store i32 %15, i32* %16, align 8
  %17 = call i32 @PrepareForRedirect(%struct.TYPE_10__* %3, i32* null, i32** %7, i32** %8)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = call i32 @skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %134

21:                                               ; preds = %1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i64 @CreateProcessA(i32* null, i8* %25, i32* null, i32* null, i32 %26, i32 0, i32* null, i32* null, %struct.TYPE_10__* %3, %struct.TYPE_11__* %4)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @CloseHandle(i64 %31)
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @TIMEOUT, align 4
  %36 = call i64 @WaitForSingleObject(i64 %34, i32 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @WAIT_TIMEOUT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @TerminateProcess(i64 %42, i32 9999)
  br label %44

44:                                               ; preds = %40, %29
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @GetExitCodeProcess(i64 %46, i64* %5)
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @CloseHandle(i64 %49)
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @CloseHandle(i64 %52)
  br label %55

54:                                               ; preds = %21
  store i64 8888, i64* %5, align 8
  br label %55

55:                                               ; preds = %54, %44
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @PeekNamedPipe(i32* %56, i32* %9, i32 1, i64* %10, i32* null, i32* null)
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %11, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @PeekNamedPipe(i32* %62, i32* %9, i32 1, i64* %10, i32* null, i32* null)
  %64 = load i64, i64* %10, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %55
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @CloseHandle(i64 %73)
  br label %75

75:                                               ; preds = %71, %55
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @CloseHandle(i64 %81)
  br label %83

83:                                               ; preds = %79, %75
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @CloseHandle(i64 %89)
  br label %91

91:                                               ; preds = %87, %83
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %11, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %11, align 8
  %105 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %100, i64 %103, i64 %104)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %12, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %12, align 8
  %119 = call i32 @ok(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %114, i64 %117, i64 %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %5, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %5, align 8
  %133 = call i32 @ok(i32 %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %128, i64 %131, i64 %132)
  br label %134

134:                                              ; preds = %91, %19
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @PrepareForRedirect(%struct.TYPE_10__*, i32*, i32**, i32**) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @WaitForSingleObject(i64, i32) #1

declare dso_local i32 @TerminateProcess(i64, i32) #1

declare dso_local i32 @GetExitCodeProcess(i64, i64*) #1

declare dso_local i32 @PeekNamedPipe(i32*, i32*, i32, i64*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
