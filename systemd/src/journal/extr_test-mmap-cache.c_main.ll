; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_test-mmap-cache.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_test-mmap-cache.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.px = private unnamed_addr constant [21 x i8] c"/tmp/testmmapXXXXXXX\00", align 16
@__const.main.py = private unnamed_addr constant [21 x i8] c"/tmp/testmmapYXXXXXX\00", align 16
@__const.main.pz = private unnamed_addr constant [21 x i8] c"/tmp/testmmapZXXXXXX\00", align 16
@PROT_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [21 x i8], align 16
  %12 = alloca [21 x i8], align 16
  %13 = alloca [21 x i8], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = bitcast [21 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 getelementptr inbounds ([21 x i8], [21 x i8]* @__const.main.px, i32 0, i32 0), i64 21, i1 false)
  %18 = bitcast [21 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 getelementptr inbounds ([21 x i8], [21 x i8]* @__const.main.py, i32 0, i32 0), i64 21, i1 false)
  %19 = bitcast [21 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 getelementptr inbounds ([21 x i8], [21 x i8]* @__const.main.pz, i32 0, i32 0), i64 21, i1 false)
  %20 = call i32* (...) @mmap_cache_new()
  store i32* %20, i32** %14, align 8
  %21 = ptrtoint i32* %20 to i32
  %22 = call i32 @assert_se(i32 %21)
  %23 = getelementptr inbounds [21 x i8], [21 x i8]* %11, i64 0, i64 0
  %24 = call i32 @mkostemp_safe(i8* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sge i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert_se(i32 %27)
  %29 = getelementptr inbounds [21 x i8], [21 x i8]* %11, i64 0, i64 0
  %30 = call i32 @unlink(i8* %29)
  %31 = load i32*, i32** %14, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32* @mmap_cache_add_fd(i32* %31, i32 %32)
  store i32* %33, i32** %6, align 8
  %34 = ptrtoint i32* %33 to i32
  %35 = call i32 @assert_se(i32 %34)
  %36 = getelementptr inbounds [21 x i8], [21 x i8]* %12, i64 0, i64 0
  %37 = call i32 @mkostemp_safe(i8* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sge i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert_se(i32 %40)
  %42 = getelementptr inbounds [21 x i8], [21 x i8]* %12, i64 0, i64 0
  %43 = call i32 @unlink(i8* %42)
  %44 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  %45 = call i32 @mkostemp_safe(i8* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp sge i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert_se(i32 %48)
  %50 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  %51 = call i32 @unlink(i8* %50)
  %52 = load i32*, i32** %14, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @PROT_READ, align 4
  %55 = call i32 @mmap_cache_get(i32* %52, i32* %53, i32 %54, i32 0, i32 0, i64 1, i32 2, i32* null, i8** %15, i32* null)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp sge i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert_se(i32 %58)
  %60 = load i32*, i32** %14, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @PROT_READ, align 4
  %63 = call i32 @mmap_cache_get(i32* %60, i32* %61, i32 %62, i32 0, i32 0, i64 2, i32 2, i32* null, i8** %16, i32* null)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp sge i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert_se(i32 %66)
  %68 = load i8*, i8** %15, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i8*, i8** %16, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = icmp eq i32* %70, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert_se(i32 %74)
  %76 = load i32*, i32** %14, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* @PROT_READ, align 4
  %79 = call i32 @mmap_cache_get(i32* %76, i32* %77, i32 %78, i32 1, i32 0, i64 3, i32 2, i32* null, i8** %16, i32* null)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp sge i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert_se(i32 %82)
  %84 = load i8*, i8** %15, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i8*, i8** %16, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = icmp eq i32* %86, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert_se(i32 %90)
  %92 = load i32*, i32** %14, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* @PROT_READ, align 4
  %95 = call i32 @mmap_cache_get(i32* %92, i32* %93, i32 %94, i32 0, i32 0, i64 16777216, i32 2, i32* null, i8** %15, i32* null)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp sge i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert_se(i32 %98)
  %100 = load i32*, i32** %14, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* @PROT_READ, align 4
  %103 = call i32 @mmap_cache_get(i32* %100, i32* %101, i32 %102, i32 1, i32 0, i64 16777217, i32 2, i32* null, i8** %16, i32* null)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp sge i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert_se(i32 %106)
  %108 = load i8*, i8** %15, align 8
  %109 = bitcast i8* %108 to i32*
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i8*, i8** %16, align 8
  %112 = bitcast i8* %111 to i32*
  %113 = icmp eq i32* %110, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert_se(i32 %114)
  %116 = load i32*, i32** %14, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @mmap_cache_free_fd(i32* %116, i32* %117)
  %119 = load i32*, i32** %14, align 8
  %120 = call i32 @mmap_cache_unref(i32* %119)
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @safe_close(i32 %121)
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @safe_close(i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @safe_close(i32 %125)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32* @mmap_cache_new(...) #2

declare dso_local i32 @mkostemp_safe(i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32* @mmap_cache_add_fd(i32*, i32) #2

declare dso_local i32 @mmap_cache_get(i32*, i32*, i32, i32, i32, i64, i32, i32*, i8**, i32*) #2

declare dso_local i32 @mmap_cache_free_fd(i32*, i32*) #2

declare dso_local i32 @mmap_cache_unref(i32*) #2

declare dso_local i32 @safe_close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
