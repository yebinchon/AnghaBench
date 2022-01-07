; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_TypeName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_TypeName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Global_TypeName.ByteW = internal constant [5 x i8] c"Byte\00", align 1
@Global_TypeName.IntegerW = internal constant [8 x i8] c"Integer\00", align 1
@Global_TypeName.LongW = internal constant [5 x i8] c"Long\00", align 1
@Global_TypeName.SingleW = internal constant [7 x i8] c"Single\00", align 1
@Global_TypeName.DoubleW = internal constant [7 x i8] c"Double\00", align 1
@Global_TypeName.CurrencyW = internal constant [9 x i8] c"Currency\00", align 1
@Global_TypeName.DecimalW = internal constant [8 x i8] c"Decimal\00", align 1
@Global_TypeName.DateW = internal constant [5 x i8] c"Date\00", align 1
@Global_TypeName.StringW = internal constant [7 x i8] c"String\00", align 1
@Global_TypeName.BooleanW = internal constant [8 x i8] c"Boolean\00", align 1
@Global_TypeName.EmptyW = internal constant [6 x i8] c"Empty\00", align 1
@Global_TypeName.NullW = internal constant [5 x i8] c"Null\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"arg %s not supported\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @Global_TypeName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Global_TypeName(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @debugstr_variant(i32* %10)
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @V_VT(i32* %17)
  switch i32 %18, label %55 [
    i32 128, label %19
    i32 133, label %22
    i32 132, label %25
    i32 130, label %28
    i32 129, label %31
    i32 137, label %34
    i32 135, label %37
    i32 136, label %40
    i32 138, label %43
    i32 139, label %46
    i32 134, label %49
    i32 131, label %52
  ]

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @return_string(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Global_TypeName.ByteW, i64 0, i64 0))
  store i32 %21, i32* %5, align 4
  br label %60

22:                                               ; preds = %4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @return_string(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @Global_TypeName.IntegerW, i64 0, i64 0))
  store i32 %24, i32* %5, align 4
  br label %60

25:                                               ; preds = %4
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @return_string(i32* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Global_TypeName.LongW, i64 0, i64 0))
  store i32 %27, i32* %5, align 4
  br label %60

28:                                               ; preds = %4
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @return_string(i32* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @Global_TypeName.SingleW, i64 0, i64 0))
  store i32 %30, i32* %5, align 4
  br label %60

31:                                               ; preds = %4
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @return_string(i32* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @Global_TypeName.DoubleW, i64 0, i64 0))
  store i32 %33, i32* %5, align 4
  br label %60

34:                                               ; preds = %4
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @return_string(i32* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @Global_TypeName.CurrencyW, i64 0, i64 0))
  store i32 %36, i32* %5, align 4
  br label %60

37:                                               ; preds = %4
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @return_string(i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @Global_TypeName.DecimalW, i64 0, i64 0))
  store i32 %39, i32* %5, align 4
  br label %60

40:                                               ; preds = %4
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @return_string(i32* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Global_TypeName.DateW, i64 0, i64 0))
  store i32 %42, i32* %5, align 4
  br label %60

43:                                               ; preds = %4
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @return_string(i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @Global_TypeName.StringW, i64 0, i64 0))
  store i32 %45, i32* %5, align 4
  br label %60

46:                                               ; preds = %4
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @return_string(i32* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @Global_TypeName.BooleanW, i64 0, i64 0))
  store i32 %48, i32* %5, align 4
  br label %60

49:                                               ; preds = %4
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @return_string(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Global_TypeName.EmptyW, i64 0, i64 0))
  store i32 %51, i32* %5, align 4
  br label %60

52:                                               ; preds = %4
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @return_string(i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Global_TypeName.NullW, i64 0, i64 0))
  store i32 %54, i32* %5, align 4
  br label %60

55:                                               ; preds = %4
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @debugstr_variant(i32* %56)
  %58 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @V_VT(i32*) #1

declare dso_local i32 @return_string(i32*, i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
