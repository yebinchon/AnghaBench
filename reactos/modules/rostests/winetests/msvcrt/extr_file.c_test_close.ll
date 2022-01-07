; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_close.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"fdopen.tst\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"error opening fdopen.tst file\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"_open_osfhandle failed (%d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"fd1 == fd2\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"handles mismatch (%p != %p)\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"close(fd1) failed (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"GetHandleInformation succeeded\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"close(fd2) succeeded\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"close(fd1) succeeded\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"errno = %d\0A\00", align 1
@__pioinfo = common dso_local global %struct.TYPE_3__** null, align 8
@STDOUT_FILENO = common dso_local global i64 0, align 8
@MSVCRT_FD_BLOCK_SIZE = common dso_local global i64 0, align 8
@STDERR_FILENO = common dso_local global i64 0, align 8
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"close(STDOUT_FILENO) failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"GetHandleInformation failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"close(STDERR_FILENO) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_close() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = load i32, i32* @GENERIC_READ, align 4
  %14 = load i32, i32* @GENERIC_WRITE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @FILE_SHARE_READ, align 4
  %17 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CREATE_ALWAYS, align 4
  %20 = call i64 @CreateFileA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32* null, i32 %19, i32 0, i32* null)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @_open_osfhandle(i64 %26, i32 0)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, -1
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @_open_osfhandle(i64 %33, i32 0)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, -1
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @_get_osfhandle(i32 %45)
  %47 = load i64, i64* %12, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @_get_osfhandle(i32 %50)
  %52 = load i64, i64* %12, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %51, i64 %52)
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @_get_osfhandle(i32 %54)
  %56 = load i64, i64* %12, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @_get_osfhandle(i32 %59)
  %61 = load i64, i64* %12, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %60, i64 %61)
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = call i32 @close(i64 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* @errno, align 4
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @GetHandleInformation(i64 %72, i32* %11)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = call i32 @close(i64 %79)
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  store i32 -559038737, i32* @errno, align 4
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = call i32 @close(i64 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, -1
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %89 = load i32, i32* @errno, align 4
  %90 = icmp eq i32 %89, 9
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* @errno, align 4
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @GENERIC_READ, align 4
  %95 = load i32, i32* @GENERIC_WRITE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @FILE_SHARE_READ, align 4
  %98 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @CREATE_ALWAYS, align 4
  %101 = call i64 @CreateFileA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %99, i32* null, i32 %100, i32 0, i32* null)
  store i64 %101, i64* %12, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %104 = icmp ne i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @__pioinfo, align 8
  %108 = load i64, i64* @STDOUT_FILENO, align 8
  %109 = load i64, i64* @MSVCRT_FD_BLOCK_SIZE, align 8
  %110 = udiv i64 %108, %109
  %111 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %107, i64 %110
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i64, i64* @STDOUT_FILENO, align 8
  %114 = load i64, i64* @MSVCRT_FD_BLOCK_SIZE, align 8
  %115 = urem i64 %113, %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %115
  store %struct.TYPE_3__* %116, %struct.TYPE_3__** %1, align 8
  %117 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @__pioinfo, align 8
  %118 = load i64, i64* @STDERR_FILENO, align 8
  %119 = load i64, i64* @MSVCRT_FD_BLOCK_SIZE, align 8
  %120 = udiv i64 %118, %119
  %121 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %117, i64 %120
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load i64, i64* @STDERR_FILENO, align 8
  %124 = load i64, i64* @MSVCRT_FD_BLOCK_SIZE, align 8
  %125 = urem i64 %123, %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %125
  store %struct.TYPE_3__* %126, %struct.TYPE_3__** %3, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %128 = bitcast %struct.TYPE_3__* %2 to i8*
  %129 = bitcast %struct.TYPE_3__* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 8, i1 false)
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %131 = bitcast %struct.TYPE_3__* %4 to i8*
  %132 = bitcast %struct.TYPE_3__* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 8, i1 false)
  %133 = load i64, i64* %12, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load i64, i64* %12, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load i64, i64* @STDOUT_FILENO, align 8
  %140 = call i32 @close(i64 %139)
  store i32 %140, i32* %7, align 4
  %141 = load i64, i64* %12, align 8
  %142 = call i32 @GetHandleInformation(i64 %141, i32* %11)
  store i32 %142, i32* %8, align 4
  %143 = load i64, i64* @STDERR_FILENO, align 8
  %144 = call i32 @close(i64 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i64, i64* %12, align 8
  %146 = call i32 @GetHandleInformation(i64 %145, i32* %11)
  store i32 %146, i32* %10, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %148 = bitcast %struct.TYPE_3__* %147 to i8*
  %149 = bitcast %struct.TYPE_3__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %148, i8* align 8 %149, i64 8, i1 false)
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %151 = bitcast %struct.TYPE_3__* %150 to i8*
  %152 = bitcast %struct.TYPE_3__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %151, i8* align 8 %152, i64 8, i1 false)
  %153 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @SetStdHandle(i32 %153, i64 %156)
  %158 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @SetStdHandle(i32 %158, i64 %161)
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %168 = load i32, i32* %8, align 4
  %169 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %180 = call i32 @DeleteFileA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @_open_osfhandle(i64, i32) #1

declare dso_local i64 @_get_osfhandle(i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @GetHandleInformation(i64, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SetStdHandle(i32, i64) #1

declare dso_local i32 @DeleteFileA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
