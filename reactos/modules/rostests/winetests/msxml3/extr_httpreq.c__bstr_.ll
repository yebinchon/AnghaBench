; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_httpreq.c__bstr_.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_httpreq.c__bstr_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloced_bstrs_count = common dso_local global i64 0, align 8
@alloced_bstrs = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @_bstr_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_bstr_(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %24

7:                                                ; preds = %1
  %8 = load i64, i64* @alloced_bstrs_count, align 8
  %9 = load i32**, i32*** @alloced_bstrs, align 8
  %10 = call i64 @ARRAY_SIZE(i32** %9)
  %11 = icmp ult i64 %8, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i8*, i8** %3, align 8
  %15 = call i32* @alloc_str_from_narrow(i8* %14)
  %16 = load i32**, i32*** @alloced_bstrs, align 8
  %17 = load i64, i64* @alloced_bstrs_count, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  store i32* %15, i32** %18, align 8
  %19 = load i32**, i32*** @alloced_bstrs, align 8
  %20 = load i64, i64* @alloced_bstrs_count, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* @alloced_bstrs_count, align 8
  %22 = getelementptr inbounds i32*, i32** %19, i64 %20
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %2, align 8
  br label %24

24:                                               ; preds = %7, %6
  %25 = load i32*, i32** %2, align 8
  ret i32* %25
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32**) #1

declare dso_local i32* @alloc_str_from_narrow(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
