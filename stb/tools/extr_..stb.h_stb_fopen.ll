; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_fopen.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_fopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i8* }

@stb__files = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @stb_fopen(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4108 x i8], align 16
  %9 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 119
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strchr(i8* %16, i8 signext 43)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32* @stb__fopen(i8* %20, i8* %21)
  store i32* %22, i32** %3, align 8
  br label %68

23:                                               ; preds = %15, %2
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %24, align 16
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @stb_fullpath(i8* %25, i32 4096, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32* null, i32** %3, align 8
  br label %68

30:                                               ; preds = %23
  %31 = getelementptr inbounds [4108 x i8], [4108 x i8]* %8, i64 0, i64 0
  %32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %33 = load i8*, i8** %5, align 8
  %34 = call i32* @stb__open_temp_file(i8* %31, i8* %32, i8* %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %67

37:                                               ; preds = %30
  %38 = call i64 @malloc(i32 24)
  %39 = inttoptr i64 %38 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %9, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = call i32 @assert(i32 0)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @fclose(i32* %44)
  store i32* null, i32** %3, align 8
  br label %68

46:                                               ; preds = %37
  %47 = load i32*, i32** @stb__files, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32* (...) @stb_ptrmap_create()
  store i32* %50, i32** @stb__files, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = getelementptr inbounds [4108 x i8], [4108 x i8]* %8, i64 0, i64 0
  %53 = call i8* @stb_p_strdup(i8* %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %57 = call i8* @stb_p_strdup(i8* %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load i32*, i32** @stb__files, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %65 = call i32 @stb_ptrmap_add(i32* %62, i32* %63, %struct.TYPE_3__* %64)
  %66 = load i32*, i32** %6, align 8
  store i32* %66, i32** %3, align 8
  br label %68

67:                                               ; preds = %30
  store i32* null, i32** %3, align 8
  br label %68

68:                                               ; preds = %67, %51, %42, %29, %19
  %69 = load i32*, i32** %3, align 8
  ret i32* %69
}

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32* @stb__fopen(i8*, i8*) #1

declare dso_local i64 @stb_fullpath(i8*, i32, i8*) #1

declare dso_local i32* @stb__open_temp_file(i8*, i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @stb_ptrmap_create(...) #1

declare dso_local i8* @stb_p_strdup(i8*) #1

declare dso_local i32 @stb_ptrmap_add(i32*, i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
