; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c__bstr_.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c__bstr_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloced_bstrs_count = common dso_local global i64 0, align 8
@alloced_bstrs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @_bstr_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bstr_(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @alloced_bstrs_count, align 8
  %4 = load i32*, i32** @alloced_bstrs, align 8
  %5 = call i64 @ARRAY_SIZE(i32* %4)
  %6 = icmp ult i64 %3, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @alloc_str_from_narrow(i8* %9)
  %11 = load i32*, i32** @alloced_bstrs, align 8
  %12 = load i64, i64* @alloced_bstrs_count, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32 %10, i32* %13, align 4
  %14 = load i32*, i32** @alloced_bstrs, align 8
  %15 = load i64, i64* @alloced_bstrs_count, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* @alloced_bstrs_count, align 8
  %17 = getelementptr inbounds i32, i32* %14, i64 %15
  %18 = load i32, i32* %17, align 4
  ret i32 %18
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @alloc_str_from_narrow(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
