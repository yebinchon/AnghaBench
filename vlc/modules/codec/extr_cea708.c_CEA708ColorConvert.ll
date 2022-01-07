; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708ColorConvert.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708ColorConvert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.CEA708ColorConvert.value = private unnamed_addr constant [4 x i32] [i32 0, i32 63, i32 240, i32 255], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @CEA708ColorConvert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CEA708ColorConvert(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x i32], align 16
  store i32 %0, i32* %2, align 4
  %4 = bitcast [4 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([4 x i32]* @__const.CEA708ColorConvert.value to i8*), i64 16, i1 false)
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, 63
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = ashr i32 %7, 4
  %9 = and i32 %8, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 16
  %14 = load i32, i32* %2, align 4
  %15 = ashr i32 %14, 2
  %16 = and i32 %15, 3
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 8
  %21 = or i32 %13, %20
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %21, %26
  ret i32 %27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
