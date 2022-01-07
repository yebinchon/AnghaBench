; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_try_location.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_try_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i8*, i8* } (i32*)* @try_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8*, i8* } @try_location(i32* %0) #0 {
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @js_isnumber(i32* %5, i32 -1)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @js_tryinteger(i32* %9, i32 -1, i32 1)
  %11 = getelementptr i8, i8* %10, i64 -1
  %12 = call { i8*, i8* } @fz_make_location(i32 0, i8* %11)
  %13 = bitcast %struct.TYPE_4__* %4 to { i8*, i8* }*
  %14 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %13, i32 0, i32 0
  %15 = extractvalue { i8*, i8* } %12, 0
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %13, i32 0, i32 1
  %17 = extractvalue { i8*, i8* } %12, 1
  store i8* %17, i8** %16, align 8
  %18 = bitcast %struct.TYPE_4__* %2 to i8*
  %19 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false)
  br label %37

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @js_getindex(i32* %21, i32 -1, i32 0)
  %23 = load i32*, i32** %3, align 8
  %24 = call i8* @js_tryinteger(i32* %23, i32 -1, i32 1)
  %25 = getelementptr i8, i8* %24, i64 -1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @js_pop(i32* %27, i32 1)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @js_getindex(i32* %29, i32 -1, i32 1)
  %31 = load i32*, i32** %3, align 8
  %32 = call i8* @js_tryinteger(i32* %31, i32 -1, i32 1)
  %33 = getelementptr i8, i8* %32, i64 -1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @js_pop(i32* %35, i32 1)
  br label %37

37:                                               ; preds = %20, %8
  %38 = bitcast %struct.TYPE_4__* %2 to { i8*, i8* }*
  %39 = load { i8*, i8* }, { i8*, i8* }* %38, align 8
  ret { i8*, i8* } %39
}

declare dso_local i64 @js_isnumber(i32*, i32) #1

declare dso_local { i8*, i8* } @fz_make_location(i32, i8*) #1

declare dso_local i8* @js_tryinteger(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @js_getindex(i32*, i32, i32) #1

declare dso_local i32 @js_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
