; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/create_nls/extr_create_nls.c_test_packed_table.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/create_nls/extr_create_nls.c_test_packed_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_packed_table.test_str = private unnamed_addr constant [70 x i32] [i32 84, i32 104, i32 105, i32 115, i32 32, i32 105, i32 115, i32 32, i32 97, i32 110, i32 32, i32 69, i32 110, i32 103, i32 108, i32 105, i32 115, i32 104, i32 32, i32 116, i32 101, i32 120, i32 116, i32 46, i32 32, i32 207, i32 238, i32 45, i32 240, i32 243, i32 241, i32 241, i32 234, i32 232, i32 32, i32 255, i32 32, i32 239, i32 232, i32 241, i32 224, i32 242, i32 252, i32 32, i32 243, i32 236, i32 229, i32 254, i32 32, i32 237, i32 229, i32 236, i32 237, i32 238, i32 230, i32 234, i32 238, i32 46, i32 32, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 48, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_packed_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_packed_table(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [70 x i32], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = bitcast [70 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([70 x i32]* @__const.test_packed_table.test_str to i8*), i64 280, i1 false)
  %7 = getelementptr inbounds [70 x i32], [70 x i32]* %3, i64 0, i64 0
  %8 = call i64 @lstrlenW(i32* %7)
  store i64 %8, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %46, %1
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %11, 1
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %9
  %15 = load i32*, i32** %2, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds [70 x i32], [70 x i32]* %3, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @HIBYTE(i32 %20)
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds [70 x i32], [70 x i32]* %3, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @LOBYTE(i32 %26)
  %28 = ashr i32 %27, 4
  %29 = add nsw i32 %23, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %16, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds [70 x i32], [70 x i32]* %3, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @LOBYTE(i32 %35)
  %37 = and i32 %36, 15
  %38 = add nsw i32 %32, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %15, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds [70 x i32], [70 x i32]* %3, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %14
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %4, align 8
  br label %9

49:                                               ; preds = %9
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @lstrlenW(i32*) #2

declare dso_local i64 @HIBYTE(i32) #2

declare dso_local i32 @LOBYTE(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
