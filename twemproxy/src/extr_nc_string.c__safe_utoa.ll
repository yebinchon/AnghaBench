; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_string.c__safe_utoa.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_string.c__safe_utoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const._safe_utoa.hex = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i64, i8*)* @_safe_utoa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_safe_utoa(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [17 x i8], align 16
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = bitcast [17 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const._safe_utoa.hex, i32 0, i32 0), i64 17, i1 false)
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 -1
  store i8* %13, i8** %6, align 8
  store i8 0, i8* %12, align 1
  br label %14

14:                                               ; preds = %22, %3
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %8, align 8
  %17 = urem i64 %15, %16
  %18 = getelementptr inbounds [17 x i8], [17 x i8]* %7, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 -1
  store i8* %21, i8** %6, align 8
  store i8 %19, i8* %20, align 1
  br label %22

22:                                               ; preds = %14
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %5, align 8
  %25 = udiv i64 %24, %23
  store i64 %25, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %14, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  ret i8* %29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
