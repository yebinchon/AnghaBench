; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_chsize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_chsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_chsize.temptext = private unnamed_addr constant [10 x i8] c"012345678\00", align 1
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tst\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Couldn't create test file: %s\0A\00", align 1
@_O_CREAT = common dso_local global i32 0, align 4
@_O_TRUNC = common dso_local global i32 0, align 4
@_O_RDWR = common dso_local global i32 0, align 4
@_S_IREAD = common dso_local global i32 0, align 4
@_S_IWRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Couldn't open test file\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Couldn't write to test file\0A\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"_chsize() failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"File pointer changed from: %d to: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Wrong file size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_chsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_chsize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [10 x i8], align 1
  %6 = alloca i8*, align 8
  %7 = bitcast [10 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_chsize.temptext, i32 0, i32 0), i64 10, i1 false)
  %8 = call i8* @_tempnam(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @_O_CREAT, align 4
  %16 = load i32, i32* @_O_TRUNC, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @_O_RDWR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @_S_IREAD, align 4
  %21 = load i32, i32* @_S_IWRITE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @_open(i8* %14, i32 %19, i32 %22)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp sgt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32, i32* %1, align 4
  %29 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %30 = call i64 @_write(i32 %28, i8* %29, i32 10)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp sgt i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @SEEK_CUR, align 4
  %37 = call i64 @_lseek(i32 %35, i32 0, i32 %36)
  store i64 %37, i64* %2, align 8
  %38 = load i32, i32* %1, align 4
  %39 = call i64 @_chsize(i32 %38, i32 5)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* @SEEK_CUR, align 4
  %45 = call i64 @_lseek(i32 %43, i32 0, i32 %44)
  store i64 %45, i64* %3, align 8
  %46 = load i64, i64* %2, align 8
  %47 = load i64, i64* %3, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %2, align 8
  %51 = load i64, i64* %3, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i64 %50, i64 %51)
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @_filelength(i32 %53)
  %55 = sext i32 %54 to i64
  %56 = icmp eq i64 %55, 5
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %59 = load i32, i32* %1, align 4
  %60 = call i64 @_chsize(i32 %59, i32 20)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* @SEEK_CUR, align 4
  %66 = call i64 @_lseek(i32 %64, i32 0, i32 %65)
  store i64 %66, i64* %3, align 8
  %67 = load i64, i64* %2, align 8
  %68 = load i64, i64* %3, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %2, align 8
  %72 = load i64, i64* %3, align 8
  %73 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i64 %71, i64 %72)
  %74 = load i32, i32* %1, align 4
  %75 = call i32 @_filelength(i32 %74)
  %76 = sext i32 %75 to i64
  %77 = icmp eq i64 %76, 20
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %80 = load i32, i32* %1, align 4
  %81 = call i32 @_close(i32 %80)
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @_unlink(i8* %82)
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @free(i8* %84)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @_tempnam(i8*, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @_open(i8*, i32, i32) #2

declare dso_local i64 @_write(i32, i8*, i32) #2

declare dso_local i64 @_lseek(i32, i32, i32) #2

declare dso_local i64 @_chsize(i32, i32) #2

declare dso_local i32 @_filelength(i32) #2

declare dso_local i32 @_close(i32) #2

declare dso_local i32 @_unlink(i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
