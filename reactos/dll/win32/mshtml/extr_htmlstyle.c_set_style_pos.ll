; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyle.c_set_style_pos.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyle.c_set_style_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.set_style_pos.szFormat = private unnamed_addr constant [7 x i8] c"%.0fpx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, float)* @set_style_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_style_pos(i32* %0, i32 %1, float %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca [25 x i8], align 16
  %8 = alloca [7 x i8], align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store float %2, float* %6, align 4
  %9 = bitcast [7 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.set_style_pos.szFormat, i32 0, i32 0), i64 7, i1 false)
  %10 = load float, float* %6, align 4
  %11 = call float @floor(float %10)
  store float %11, float* %6, align 4
  %12 = getelementptr inbounds [25 x i8], [25 x i8]* %7, i64 0, i64 0
  %13 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %14 = load float, float* %6, align 4
  %15 = call i32 @sprintfW(i8* %12, i8* %13, float %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds [25 x i8], [25 x i8]* %7, i64 0, i64 0
  %19 = call i32 @set_style_attr(i32* %16, i32 %17, i8* %18, i32 0)
  ret i32 %19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local float @floor(float) #2

declare dso_local i32 @sprintfW(i8*, i8*, float) #2

declare dso_local i32 @set_style_attr(i32*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
