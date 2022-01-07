; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_marshall.c_EmbeddedComplexSize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_marshall.c_EmbeddedComplexSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"unknown type 0x%x\0A\00", align 1
@RPC_X_BAD_STUB_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unhandled embedded type %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @EmbeddedComplexSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EmbeddedComplexSize(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %62 [
    i32 134, label %8
    i32 140, label %8
    i32 151, label %8
    i32 155, label %8
    i32 136, label %8
    i32 135, label %8
    i32 152, label %8
    i32 144, label %12
    i32 143, label %12
    i32 132, label %16
    i32 139, label %20
    i32 141, label %43
    i32 145, label %56
    i32 128, label %57
  ]

8:                                                ; preds = %2, %2, %2, %2, %2, %2, %2
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  br label %67

12:                                               ; preds = %2, %2
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  br label %67

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %67

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 15
  switch i32 %25, label %33 [
    i32 154, label %26
    i32 153, label %26
    i32 137, label %26
    i32 130, label %26
    i32 129, label %27
    i32 138, label %27
    i32 131, label %27
    i32 142, label %28
    i32 133, label %28
    i32 148, label %28
    i32 147, label %29
    i32 150, label %30
    i32 146, label %31
    i32 149, label %32
  ]

26:                                               ; preds = %20, %20, %20, %20
  store i32 4, i32* %3, align 4
  br label %67

27:                                               ; preds = %20, %20, %20
  store i32 4, i32* %3, align 4
  br label %67

28:                                               ; preds = %20, %20, %20
  store i32 4, i32* %3, align 4
  br label %67

29:                                               ; preds = %20
  store i32 4, i32* %3, align 4
  br label %67

30:                                               ; preds = %20
  store i32 8, i32* %3, align 4
  br label %67

31:                                               ; preds = %20
  store i32 4, i32* %3, align 4
  br label %67

32:                                               ; preds = %20
  store i32 4, i32* %3, align 4
  br label %67

33:                                               ; preds = %20
  %34 = load i32*, i32** %5, align 8
  %35 = bitcast i32* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 15
  %39 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @RPC_X_BAD_STUB_DATA, align 4
  %41 = call i32 @RpcRaiseException(i32 %40)
  br label %42

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %2, %42
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32* %45, i32** %5, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32* @SkipConformance(i32* %46, i32* %47)
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %5, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %3, align 4
  br label %67

56:                                               ; preds = %2
  store i32 8, i32* %3, align 4
  br label %67

57:                                               ; preds = %2
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 2
  store i32 %61, i32* %3, align 4
  br label %67

62:                                               ; preds = %2
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %57, %56, %43, %32, %31, %30, %29, %28, %27, %26, %16, %12, %8
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @RpcRaiseException(i32) #1

declare dso_local i32* @SkipConformance(i32*, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
