; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test__wfopen_s.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test__wfopen_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test__wfopen_s.name = private unnamed_addr constant [7 x i8] c"empty1\00", align 1
@__const.test__wfopen_s.wname = private unnamed_addr constant [7 x i8] c"empty1\00", align 1
@__const.test__wfopen_s.wmode = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str = private unnamed_addr constant [26 x i8] c"_wfopen_s failed with %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"_wfopen_s failed to return value\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"File failed to close\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"fopen failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"File length is %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"File content mismatch! Got %s, expected %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Couldn't unlink file named '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__wfopen_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__wfopen_s() #0 {
  %1 = alloca [7 x i8], align 1
  %2 = alloca [7 x i8], align 1
  %3 = alloca [2 x i8], align 1
  %4 = alloca [16 x i8], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast [7 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test__wfopen_s.name, i32 0, i32 0), i64 7, i1 false)
  %9 = bitcast [7 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test__wfopen_s.wname, i32 0, i32 0), i64 7, i1 false)
  %10 = bitcast [2 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.test__wfopen_s.wmode, i32 0, i32 0), i64 2, i1 false)
  %11 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %13 = call i32 @p__wfopen_s(i32** %5, i8* %11, i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %23 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @fwrite(i8* %23, i32 7, i32 1, i32* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @fclose(i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @EOF, align 4
  %30 = icmp ne i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %33 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %34 = call i32* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %34, i32** %5, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @fread(i8* %39, i32 1, i32 7, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp eq i64 %43, 7
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 7
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %51 = call i64 @strcmp(i8* %49, i8* %50)
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %55 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %56 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %54, i8* %55)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @fclose(i32* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @EOF, align 4
  %61 = icmp ne i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %64 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %65 = call i64 @_unlink(i8* %64)
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %68)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @p__wfopen_s(i32**, i8*, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @_unlink(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
