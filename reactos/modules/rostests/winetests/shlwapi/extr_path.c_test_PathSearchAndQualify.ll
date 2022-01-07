; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_path.c_test_PathSearchAndQualify.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_path.c_test_PathSearchAndQualify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_PathSearchAndQualify.path1 = private unnamed_addr constant [7 x i8] c"c:\\foo\00", align 1
@__const.test_PathSearchAndQualify.expect1 = private unnamed_addr constant [7 x i8] c"c:\\foo\00", align 1
@__const.test_PathSearchAndQualify.path2 = private unnamed_addr constant [6 x i8] c"c:foo\00", align 1
@__const.test_PathSearchAndQualify.c_drive = private unnamed_addr constant [3 x i8] c"c:\00", align 1
@__const.test_PathSearchAndQualify.foo = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@__const.test_PathSearchAndQualify.path3 = private unnamed_addr constant [5 x i8] c"\\foo\00", align 1
@__const.test_PathSearchAndQualify.winini = private unnamed_addr constant [8 x i8] c"win.ini\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@__const.test_PathSearchAndQualify.dot = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str = private unnamed_addr constant [29 x i8] c"PathSearchAndQualify rets 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"strings don't match\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PathSearchAndQualify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PathSearchAndQualify() #0 {
  %1 = alloca [7 x i8], align 1
  %2 = alloca [7 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca [3 x i8], align 1
  %5 = alloca [4 x i8], align 1
  %6 = alloca [5 x i8], align 1
  %7 = alloca [8 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [2 x i8], align 1
  %12 = bitcast [7 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_PathSearchAndQualify.path1, i32 0, i32 0), i64 7, i1 false)
  %13 = bitcast [7 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_PathSearchAndQualify.expect1, i32 0, i32 0), i64 7, i1 false)
  %14 = bitcast [6 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test_PathSearchAndQualify.path2, i32 0, i32 0), i64 6, i1 false)
  %15 = bitcast [3 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.test_PathSearchAndQualify.c_drive, i32 0, i32 0), i64 3, i1 false)
  %16 = bitcast [4 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_PathSearchAndQualify.foo, i32 0, i32 0), i64 4, i1 false)
  %17 = bitcast [5 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_PathSearchAndQualify.path3, i32 0, i32 0), i64 5, i1 false)
  %18 = bitcast [8 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_PathSearchAndQualify.winini, i32 0, i32 0), i64 8, i1 false)
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %26 = bitcast [2 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.test_PathSearchAndQualify.dot, i32 0, i32 0), i64 2, i1 false)
  %27 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = call i64 @PathSearchAndQualifyW(i8* %27, i8* %22, i32 %28)
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %33 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %34 = call i32 @lstrcmpiW(i8* %22, i8* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %39 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  %40 = load i32, i32* @MAX_PATH, align 4
  %41 = call i64 @PathSearchAndQualifyW(i8* %39, i8* %22, i32 %40)
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %45 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %46 = load i32, i32* @MAX_PATH, align 4
  %47 = call i32 @GetFullPathNameW(i8* %45, i32 %46, i8* %25, i32* null)
  %48 = call i32 @PathAddBackslashW(i8* %25)
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %50 = call i32 @lstrcatW(i8* %25, i8* %49)
  %51 = call i32 @lstrcmpiW(i8* %22, i8* %25)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %57 = load i32, i32* @MAX_PATH, align 4
  %58 = call i64 @PathSearchAndQualifyW(i8* %56, i8* %22, i32 %57)
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %62 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %63 = load i32, i32* @MAX_PATH, align 4
  %64 = call i32 @GetFullPathNameW(i8* %62, i32 %63, i8* %25, i32* null)
  %65 = call i32 @PathAddBackslashW(i8* %25)
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %67 = call i32 @lstrcatW(i8* %25, i8* %66)
  %68 = call i32 @lstrcmpiW(i8* %22, i8* %25)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %73 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %74 = load i32, i32* @MAX_PATH, align 4
  %75 = call i64 @PathSearchAndQualifyW(i8* %73, i8* %22, i32 %74)
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %79 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %80 = load i32, i32* @MAX_PATH, align 4
  %81 = call i32 @GetFullPathNameW(i8* %79, i32 %80, i8* %25, i32* null)
  %82 = getelementptr inbounds i8, i8* %25, i64 2
  %83 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %84 = call i32 @lstrcpyW(i8* %82, i8* %83)
  %85 = call i32 @lstrcmpiW(i8* %22, i8* %25)
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %90 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %91 = load i32, i32* @MAX_PATH, align 4
  %92 = call i64 @PathSearchAndQualifyW(i8* %90, i8* %22, i32 %91)
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %96 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %97 = load i32, i32* @MAX_PATH, align 4
  %98 = call i32 @SearchPathW(i32* null, i8* %96, i32* null, i32 %97, i8* %25, i32* null)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %0
  %101 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %102 = load i32, i32* @MAX_PATH, align 4
  %103 = call i32 @GetFullPathNameW(i8* %101, i32 %102, i8* %25, i32* null)
  br label %104

104:                                              ; preds = %100, %0
  %105 = call i32 @lstrcmpiW(i8* %22, i8* %25)
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %110)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ok(i32, i8*) #3

declare dso_local i64 @PathSearchAndQualifyW(i8*, i8*, i32) #3

declare dso_local i32 @lstrcmpiW(i8*, i8*) #3

declare dso_local i32 @GetFullPathNameW(i8*, i32, i8*, i32*) #3

declare dso_local i32 @PathAddBackslashW(i8*) #3

declare dso_local i32 @lstrcatW(i8*, i8*) #3

declare dso_local i32 @lstrcpyW(i8*, i8*) #3

declare dso_local i32 @SearchPathW(i32*, i8*, i32*, i32, i8*, i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
