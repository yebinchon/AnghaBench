; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckCGATS2.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckCGATS2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.CheckCGATS2.junk = private unnamed_addr constant [15 x i32] [i32 0, i32 13, i32 13, i32 10, i32 32, i32 13, i32 32, i32 32, i32 32, i32 58, i32 49, i32 61, i32 61, i32 61, i32 61], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckCGATS2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckCGATS2() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [15 x i32], align 16
  %3 = bitcast [15 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([15 x i32]* @__const.CheckCGATS2.junk to i8*), i64 60, i1 false)
  %4 = getelementptr inbounds [15 x i32], [15 x i32]* %2, i64 0, i64 0
  %5 = bitcast i32* %4 to i8*
  %6 = call i64 @cmsIT8LoadFromMem(i32 0, i8* %5, i32 60)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = call i32 (...) @DbgThread()
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @cmsIT8Free(i32 %10, i64 %11)
  br label %13

13:                                               ; preds = %9, %0
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @cmsIT8LoadFromMem(i32, i8*, i32) #2

declare dso_local i32 @cmsIT8Free(i32, i64) #2

declare dso_local i32 @DbgThread(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
