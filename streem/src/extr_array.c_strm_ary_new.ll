; ModuleID = '/home/carl/AnghaBench/streem/src/extr_array.c_strm_ary_new.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_array.c_strm_ary_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_array = type { i32*, i32, i32, i32* }

@strm_ary_null = common dso_local global i32 0, align 4
@STRM_TAG_ARRAY = common dso_local global i32 0, align 4
@STRM_VAL_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strm_ary_new(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.strm_array*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 4, %8
  %10 = add i64 24, %9
  %11 = trunc i64 %10 to i32
  %12 = call %struct.strm_array* @malloc(i32 %11)
  store %struct.strm_array* %12, %struct.strm_array** %5, align 8
  %13 = load %struct.strm_array*, %struct.strm_array** %5, align 8
  %14 = getelementptr inbounds %struct.strm_array, %struct.strm_array* %13, i64 1
  %15 = bitcast %struct.strm_array* %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memcpy(i32* %19, i32* %20, i32 %24)
  br label %33

26:                                               ; preds = %2
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memset(i32* %27, i32 0, i32 %31)
  br label %33

33:                                               ; preds = %26, %18
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.strm_array*, %struct.strm_array** %5, align 8
  %36 = getelementptr inbounds %struct.strm_array, %struct.strm_array* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.strm_array*, %struct.strm_array** %5, align 8
  %39 = getelementptr inbounds %struct.strm_array, %struct.strm_array* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.strm_array*, %struct.strm_array** %5, align 8
  %41 = getelementptr inbounds %struct.strm_array, %struct.strm_array* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* @strm_ary_null, align 4
  %43 = load %struct.strm_array*, %struct.strm_array** %5, align 8
  %44 = getelementptr inbounds %struct.strm_array, %struct.strm_array* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @STRM_TAG_ARRAY, align 4
  %46 = load %struct.strm_array*, %struct.strm_array** %5, align 8
  %47 = ptrtoint %struct.strm_array* %46 to i64
  %48 = load i64, i64* @STRM_VAL_MASK, align 8
  %49 = and i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = or i32 %45, %50
  ret i32 %51
}

declare dso_local %struct.strm_array* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
