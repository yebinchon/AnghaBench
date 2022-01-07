; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_get_osfhandle.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_get_osfhandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_get_osfhandle.fname = private unnamed_addr constant [15 x i8] c"t_get_osfhanle\00", align 1
@_O_CREAT = common dso_local global i32 0, align 4
@_O_RDWR = common dso_local global i32 0, align 4
@_SH_DENYRW = common dso_local global i32 0, align 4
@_S_IREAD = common dso_local global i32 0, align 4
@_S_IWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@_O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Couldn't open '%s' after _get_osfhandle()\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"_get_osfhandle returned %p\0A\00", align 1
@EBADF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"errno = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_osfhandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_osfhandle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [15 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = bitcast [15 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.test_get_osfhandle.fname, i32 0, i32 0), i64 15, i1 false)
  %6 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 0
  %7 = load i32, i32* @_O_CREAT, align 4
  %8 = load i32, i32* @_O_RDWR, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @_SH_DENYRW, align 4
  %11 = load i32, i32* @_S_IREAD, align 4
  %12 = load i32, i32* @_S_IWRITE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @_sopen(i8* %6, i32 %9, i32 %10, i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i64 @_get_osfhandle(i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @WriteFile(i64 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3, i32* %3, i32* null)
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @_close(i32 %19)
  %21 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 0
  %22 = load i32, i32* @_O_RDONLY, align 4
  %23 = call i32 @_open(i8* %21, i32 %22, i32 0)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp ne i32 %24, -1
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 0
  %28 = ptrtoint i8* %27 to i64
  %29 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @_close(i32 %30)
  %32 = getelementptr inbounds [15 x i8], [15 x i8]* %2, i64 0, i64 0
  %33 = call i32 @_unlink(i8* %32)
  store i64 3735928559, i64* @errno, align 8
  %34 = load i32, i32* %1, align 4
  %35 = call i64 @_get_osfhandle(i32 %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EBADF, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* @errno, align 8
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %46)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_sopen(i8*, i32, i32, i32) #2

declare dso_local i64 @_get_osfhandle(i32) #2

declare dso_local i32 @WriteFile(i64, i8*, i32, i32*, i32*) #2

declare dso_local i32 @_close(i32) #2

declare dso_local i32 @_open(i8*, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i32 @_unlink(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
