; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test__open_osfhandle.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test__open_osfhandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"_open_osfhandle returned %d\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"errno = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"open_osfhandle.tst\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"_open_osfhandle returned %d (%d)\0A\00", align 1
@__pioinfo = common dso_local global %struct.TYPE_3__** null, align 8
@MSVCRT_FD_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"info->handle = %p, expected %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"info->wxflag = %x, expected 1\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"info->handle = %p, expected INVALID_HANDLE_VALUE\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"info->wxflag = %x, expected 0\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"CreatePipe failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"info->wxflag = %x, expected 9\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__open_osfhandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__open_osfhandle() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 -559038737, i32* @errno, align 4
  %5 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %6 = sext i32 %5 to i64
  %7 = call i32 @_open_osfhandle(i64 %6, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @errno, align 4
  %14 = load i32, i32* @EBADF, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @GENERIC_WRITE, align 4
  %20 = load i32, i32* @CREATE_ALWAYS, align 4
  %21 = call i32 @CreateFileA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 0, i32* null, i32 %20, i32 0, i32* null)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = call i32 @_open_osfhandle(i64 %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @__pioinfo, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @MSVCRT_FD_BLOCK_SIZE, align 4
  %34 = sdiv i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %31, i64 %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @MSVCRT_FD_BLOCK_SIZE, align 4
  %40 = srem i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %41
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %1, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %2, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1
  %58 = zext i1 %57 to i32
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @close(i32 %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %82)
  %84 = call i32 @DeleteFileA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 -559038737, i32* @errno, align 4
  %85 = load i32, i32* %2, align 4
  %86 = sext i32 %85 to i64
  %87 = call i32 @_open_osfhandle(i64 %86, i32 0)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp eq i32 %88, -1
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %4, align 4
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @errno, align 4
  %94 = load i32, i32* @EBADF, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* @errno, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = call i32 @CreatePipe(i32* %2, i32* %3, i32* null, i32 0)
  %100 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %101 = load i32, i32* %2, align 4
  %102 = sext i32 %101 to i64
  %103 = call i32 @_open_osfhandle(i64 %102, i32 0)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp sgt i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @errno, align 4
  %109 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @__pioinfo, align 8
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @MSVCRT_FD_BLOCK_SIZE, align 4
  %113 = sdiv i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %110, i64 %114
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @MSVCRT_FD_BLOCK_SIZE, align 4
  %119 = srem i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %120
  store %struct.TYPE_3__* %121, %struct.TYPE_3__** %1, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %2, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %2, align 4
  %132 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 9
  %137 = zext i1 %136 to i32
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @close(i32 %142)
  %144 = load i32, i32* %3, align 4
  %145 = call i32 @CloseHandle(i32 %144)
  ret void
}

declare dso_local i32 @_open_osfhandle(i64, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @DeleteFileA(i8*) #1

declare dso_local i32 @CreatePipe(i32*, i32*, i32*, i32) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
