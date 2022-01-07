; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_fopen_fclose_fcloseall.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_fopen_fclose_fcloseall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_fopen_fclose_fcloseall.fname1 = private unnamed_addr constant [7 x i8] c"empty1\00", align 1
@__const.test_fopen_fclose_fcloseall.fname2 = private unnamed_addr constant [7 x i8] c"empty2\00", align 1
@__const.test_fopen_fclose_fcloseall.fname3 = private unnamed_addr constant [7 x i8] c"empty3\00", align 1
@.str = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"The file '%s' was not opened\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"w \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"The file '%s' shouldn't exist before\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"The file '%s' should be opened now\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"filename is empty, errno = %d (expected 2 or 22)\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"filename is NULL, errno = %d (expected 2 or 22)\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"The file '%s' was not closed\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Closing file '%s' returned %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"errno = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Number of files closed by fcloseall(): %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Couldn't unlink file named '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fopen_fclose_fcloseall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fopen_fclose_fcloseall() #0 {
  %1 = alloca [7 x i8], align 1
  %2 = alloca [7 x i8], align 1
  %3 = alloca [7 x i8], align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast [7 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_fopen_fclose_fcloseall.fname1, i32 0, i32 0), i64 7, i1 false)
  %11 = bitcast [7 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_fopen_fclose_fcloseall.fname2, i32 0, i32 0), i64 7, i1 false)
  %12 = bitcast [7 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_fopen_fclose_fcloseall.fname3, i32 0, i32 0), i64 7, i1 false)
  %13 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %21 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %28 = call i64 @_unlink(i8* %27)
  %29 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %30 = call i32* @fopen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = icmp eq i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %34)
  %36 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %37 = call i32* @fopen(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  store i32 -87118931, i32* @errno, align 4
  %43 = call i32* @fopen(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %0
  %47 = load i32, i32* @errno, align 4
  %48 = load i32, i32* @EINVAL, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @errno, align 4
  %52 = load i32, i32* @ENOENT, align 4
  %53 = icmp eq i32 %51, %52
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i1 [ true, %46 ], [ %53, %50 ]
  br label %56

56:                                               ; preds = %54, %0
  %57 = phi i1 [ false, %0 ], [ %55, %54 ]
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* @errno, align 4
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %59)
  store i32 -87118931, i32* @errno, align 4
  %61 = call i32* @fopen(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %61, i32** %7, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %56
  %65 = load i32, i32* @errno, align 4
  %66 = load i32, i32* @EINVAL, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @errno, align 4
  %70 = load i32, i32* @ENOENT, align 4
  %71 = icmp eq i32 %69, %70
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i1 [ true, %64 ], [ %71, %68 ]
  br label %74

74:                                               ; preds = %72, %56
  %75 = phi i1 [ false, %56 ], [ %73, %72 ]
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* @errno, align 4
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @fclose(i32* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %84)
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @fclose(i32* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %91)
  store i32 -559038737, i32* @errno, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @fclose(i32* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @EOF, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %99, i32 %100)
  %102 = load i32, i32* @errno, align 4
  %103 = icmp eq i32 %102, -559038737
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* @errno, align 4
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @fclose(i32* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @EOF, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %114 = load i32, i32* %8, align 4
  %115 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %113, i32 %114)
  %116 = load i32, i32* @errno, align 4
  %117 = icmp eq i32 %116, -559038737
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* @errno, align 4
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %119)
  %121 = call i32 (...) @_fcloseall()
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp eq i32 %122, 1
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %9, align 4
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 %125)
  %127 = call i32 (...) @_fcloseall()
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp eq i32 %128, 0
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %9, align 4
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 %131)
  %133 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %134 = call i64 @_unlink(i8* %133)
  %135 = icmp eq i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i8* %137)
  %139 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %140 = call i64 @_unlink(i8* %139)
  %141 = icmp eq i64 %140, 0
  %142 = zext i1 %141 to i32
  %143 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %144 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i8* %143)
  %145 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %146 = call i64 @_unlink(i8* %145)
  %147 = icmp eq i64 %146, 0
  %148 = zext i1 %147 to i32
  %149 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i8* %149)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @_unlink(i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @_fcloseall(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
