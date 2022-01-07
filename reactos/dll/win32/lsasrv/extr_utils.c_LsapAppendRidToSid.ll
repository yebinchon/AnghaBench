; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_utils.c_LsapAppendRidToSid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_utils.c_LsapAppendRidToSid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @LsapAppendRidToSid(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 32, i1 false)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @RtlSubAuthorityCountSid(i32* %11)
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 8
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %61

17:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32* @RtlSubAuthoritySid(i32* %23, i32 %24)
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %28
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %18

33:                                               ; preds = %18
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %36
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @RtlIdentifierAuthoritySid(i32* %40)
  %42 = load i32, i32* %7, align 4
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %44 = load i32, i32* %43, align 16
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  %52 = load i32, i32* %51, align 16
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 6
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @RtlAllocateAndInitializeSid(i32 %41, i32 %42, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52, i32 %54, i32 %56, i32 %58, i32** %8)
  %60 = load i32*, i32** %8, align 8
  store i32* %60, i32** %3, align 8
  br label %61

61:                                               ; preds = %33, %16
  %62 = load i32*, i32** %3, align 8
  ret i32* %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @RtlSubAuthorityCountSid(i32*) #2

declare dso_local i32* @RtlSubAuthoritySid(i32*, i32) #2

declare dso_local i32 @RtlAllocateAndInitializeSid(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**) #2

declare dso_local i32 @RtlIdentifierAuthoritySid(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
