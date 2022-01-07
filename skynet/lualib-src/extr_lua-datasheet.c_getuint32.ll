; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-datasheet.c_getuint32.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-datasheet.c_getuint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [4 x i32] }

@__const.getuint32.test = private unnamed_addr constant { i32, [12 x i8] } { i32 1, [12 x i8] undef }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @getuint32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getuint32(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %union.anon, align 4
  store i8* %0, i8** %3, align 8
  %5 = bitcast %union.anon* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast ({ i32, [12 x i8] }* @__const.getuint32.test to i8*), i64 16, i1 false)
  %6 = bitcast %union.anon* %4 to [4 x i32]*
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.anon* %4 to i32*
  store i32 %13, i32* %14, align 4
  %15 = bitcast %union.anon* %4 to [4 x i32]*
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = bitcast %union.anon* %4 to [4 x i32]*
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 4
  %22 = or i32 %17, %21
  %23 = bitcast %union.anon* %4 to [4 x i32]*
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  %27 = or i32 %22, %26
  %28 = bitcast %union.anon* %4 to [4 x i32]*
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 12
  %32 = or i32 %27, %31
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %1
  %34 = load i8*, i8** %3, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
