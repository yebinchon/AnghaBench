; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_pool_alloc.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_pool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i64, i32*, i32* }

@CHUNK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pool*, i64)* @pool_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pool_alloc(%struct.pool* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pool*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.pool* %0, %struct.pool** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = add i64 %8, 7
  %10 = and i64 %9, -8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @CHUNK_SIZE, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.pool*, %struct.pool** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i8* @pool_newchunk(%struct.pool* %15, i64 %16)
  store i8* %17, i8** %3, align 8
  br label %82

18:                                               ; preds = %2
  %19 = load %struct.pool*, %struct.pool** %4, align 8
  %20 = getelementptr inbounds %struct.pool, %struct.pool* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.pool*, %struct.pool** %4, align 8
  %25 = load i64, i64* @CHUNK_SIZE, align 8
  %26 = call i8* @pool_newchunk(%struct.pool* %24, i64 %25)
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i8* null, i8** %3, align 8
  br label %82

29:                                               ; preds = %23
  %30 = load %struct.pool*, %struct.pool** %4, align 8
  %31 = getelementptr inbounds %struct.pool, %struct.pool* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.pool*, %struct.pool** %4, align 8
  %34 = getelementptr inbounds %struct.pool, %struct.pool* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  br label %35

35:                                               ; preds = %29, %18
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.pool*, %struct.pool** %4, align 8
  %38 = getelementptr inbounds %struct.pool, %struct.pool* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %36, %39
  %41 = load i64, i64* @CHUNK_SIZE, align 8
  %42 = icmp ule i64 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %35
  %44 = load %struct.pool*, %struct.pool** %4, align 8
  %45 = getelementptr inbounds %struct.pool, %struct.pool* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = bitcast i32* %47 to i8*
  %49 = load %struct.pool*, %struct.pool** %4, align 8
  %50 = getelementptr inbounds %struct.pool, %struct.pool* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8* %52, i8** %6, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.pool*, %struct.pool** %4, align 8
  %55 = getelementptr inbounds %struct.pool, %struct.pool* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load i8*, i8** %6, align 8
  store i8* %58, i8** %3, align 8
  br label %82

59:                                               ; preds = %35
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.pool*, %struct.pool** %4, align 8
  %62 = getelementptr inbounds %struct.pool, %struct.pool* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp uge i64 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.pool*, %struct.pool** %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i8* @pool_newchunk(%struct.pool* %66, i64 %67)
  store i8* %68, i8** %3, align 8
  br label %82

69:                                               ; preds = %59
  %70 = load %struct.pool*, %struct.pool** %4, align 8
  %71 = load i64, i64* @CHUNK_SIZE, align 8
  %72 = call i8* @pool_newchunk(%struct.pool* %70, i64 %71)
  store i8* %72, i8** %7, align 8
  %73 = load %struct.pool*, %struct.pool** %4, align 8
  %74 = getelementptr inbounds %struct.pool, %struct.pool* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.pool*, %struct.pool** %4, align 8
  %77 = getelementptr inbounds %struct.pool, %struct.pool* %76, i32 0, i32 2
  store i32* %75, i32** %77, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load %struct.pool*, %struct.pool** %4, align 8
  %80 = getelementptr inbounds %struct.pool, %struct.pool* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i8*, i8** %7, align 8
  store i8* %81, i8** %3, align 8
  br label %82

82:                                               ; preds = %69, %65, %43, %28, %14
  %83 = load i8*, i8** %3, align 8
  ret i8* %83
}

declare dso_local i8* @pool_newchunk(%struct.pool*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
