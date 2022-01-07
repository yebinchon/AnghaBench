; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapCopySid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapCopySid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @LsapCopySid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @LsapCopySid(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64* @RtlSubAuthorityCountSid(i32* %10)
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @RtlLengthRequiredSid(i64 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32* @MIDL_user_allocate(i64 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %45

20:                                               ; preds = %1
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @RtlIdentifierAuthoritySid(i32* %22)
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @RtlInitializeSid(i32* %21, i32 %23, i64 %24)
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %40, %20
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i32*, i32** %3, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32* @RtlSubAuthoritySid(i32* %31, i64 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32* @RtlSubAuthoritySid(i32* %34, i64 %35)
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %30
  %41 = load i64, i64* %6, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %6, align 8
  br label %26

43:                                               ; preds = %26
  %44 = load i32*, i32** %5, align 8
  store i32* %44, i32** %2, align 8
  br label %45

45:                                               ; preds = %43, %19
  %46 = load i32*, i32** %2, align 8
  ret i32* %46
}

declare dso_local i64* @RtlSubAuthorityCountSid(i32*) #1

declare dso_local i64 @RtlLengthRequiredSid(i64) #1

declare dso_local i32* @MIDL_user_allocate(i64) #1

declare dso_local i32 @RtlInitializeSid(i32*, i32, i64) #1

declare dso_local i32 @RtlIdentifierAuthoritySid(i32*) #1

declare dso_local i32* @RtlSubAuthoritySid(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
