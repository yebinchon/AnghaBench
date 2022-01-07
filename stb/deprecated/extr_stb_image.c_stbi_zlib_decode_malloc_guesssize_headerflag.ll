; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_zlib_decode_malloc_guesssize_headerflag.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_zlib_decode_malloc_guesssize_headerflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stbi_zlib_decode_malloc_guesssize_headerflag(i8* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @malloc(i32 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %55

20:                                               ; preds = %5
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store i32* %22, i32** %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32* %28, i32** %29, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @do_zlib(%struct.TYPE_3__* %12, i8* %30, i32 %31, i32 1, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %20
  %36 = load i32*, i32** %10, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = ptrtoint i8* %40 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = load i32*, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %38, %35
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %6, align 8
  br label %55

51:                                               ; preds = %20
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @free(i8* %53)
  store i8* null, i8** %6, align 8
  br label %55

55:                                               ; preds = %51, %48, %19
  %56 = load i8*, i8** %6, align 8
  ret i8* %56
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @do_zlib(%struct.TYPE_3__*, i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
