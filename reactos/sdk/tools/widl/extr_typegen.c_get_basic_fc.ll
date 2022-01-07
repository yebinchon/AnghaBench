; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_basic_fc.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_basic_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FC_SMALL = common dso_local global i8 0, align 1
@FC_USMALL = common dso_local global i8 0, align 1
@FC_SHORT = common dso_local global i8 0, align 1
@FC_USHORT = common dso_local global i8 0, align 1
@FC_LONG = common dso_local global i8 0, align 1
@FC_ULONG = common dso_local global i8 0, align 1
@FC_HYPER = common dso_local global i8 0, align 1
@FC_INT3264 = common dso_local global i8 0, align 1
@FC_UINT3264 = common dso_local global i8 0, align 1
@FC_BYTE = common dso_local global i8 0, align 1
@FC_CHAR = common dso_local global i8 0, align 1
@FC_WCHAR = common dso_local global i8 0, align 1
@FC_FLOAT = common dso_local global i8 0, align 1
@FC_DOUBLE = common dso_local global i8 0, align 1
@FC_ERROR_STATUS_T = common dso_local global i8 0, align 1
@FC_BIND_PRIMITIVE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @get_basic_fc(i32* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @type_basic_get_sign(i32* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @type_basic_get_type(i32* %7)
  switch i32 %8, label %87 [
    i32 130, label %9
    i32 134, label %21
    i32 133, label %33
    i32 129, label %33
    i32 131, label %45
    i32 135, label %47
    i32 132, label %59
    i32 142, label %71
    i32 141, label %73
    i32 128, label %75
    i32 136, label %77
    i32 138, label %79
    i32 140, label %81
    i32 139, label %83
    i32 137, label %85
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i8, i8* @FC_SMALL, align 1
  %14 = zext i8 %13 to i32
  br label %18

15:                                               ; preds = %9
  %16 = load i8, i8* @FC_USMALL, align 1
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %14, %12 ], [ %17, %15 ]
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %2, align 1
  br label %88

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8, i8* @FC_SHORT, align 1
  %26 = zext i8 %25 to i32
  br label %30

27:                                               ; preds = %21
  %28 = load i8, i8* @FC_USHORT, align 1
  %29 = zext i8 %28 to i32
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %27 ]
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %2, align 1
  br label %88

33:                                               ; preds = %1, %1
  %34 = load i32, i32* %4, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8, i8* @FC_LONG, align 1
  %38 = zext i8 %37 to i32
  br label %42

39:                                               ; preds = %33
  %40 = load i8, i8* @FC_ULONG, align 1
  %41 = zext i8 %40 to i32
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ]
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %2, align 1
  br label %88

45:                                               ; preds = %1
  %46 = load i8, i8* @FC_HYPER, align 1
  store i8 %46, i8* %2, align 1
  br label %88

47:                                               ; preds = %1
  %48 = load i32, i32* %4, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i8, i8* @FC_LONG, align 1
  %52 = zext i8 %51 to i32
  br label %56

53:                                               ; preds = %47
  %54 = load i8, i8* @FC_ULONG, align 1
  %55 = zext i8 %54 to i32
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i32 [ %52, %50 ], [ %55, %53 ]
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %2, align 1
  br label %88

59:                                               ; preds = %1
  %60 = load i32, i32* %4, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i8, i8* @FC_INT3264, align 1
  %64 = zext i8 %63 to i32
  br label %68

65:                                               ; preds = %59
  %66 = load i8, i8* @FC_UINT3264, align 1
  %67 = zext i8 %66 to i32
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i32 [ %64, %62 ], [ %67, %65 ]
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %2, align 1
  br label %88

71:                                               ; preds = %1
  %72 = load i8, i8* @FC_BYTE, align 1
  store i8 %72, i8* %2, align 1
  br label %88

73:                                               ; preds = %1
  %74 = load i8, i8* @FC_CHAR, align 1
  store i8 %74, i8* %2, align 1
  br label %88

75:                                               ; preds = %1
  %76 = load i8, i8* @FC_WCHAR, align 1
  store i8 %76, i8* %2, align 1
  br label %88

77:                                               ; preds = %1
  %78 = load i8, i8* @FC_HYPER, align 1
  store i8 %78, i8* %2, align 1
  br label %88

79:                                               ; preds = %1
  %80 = load i8, i8* @FC_FLOAT, align 1
  store i8 %80, i8* %2, align 1
  br label %88

81:                                               ; preds = %1
  %82 = load i8, i8* @FC_DOUBLE, align 1
  store i8 %82, i8* %2, align 1
  br label %88

83:                                               ; preds = %1
  %84 = load i8, i8* @FC_ERROR_STATUS_T, align 1
  store i8 %84, i8* %2, align 1
  br label %88

85:                                               ; preds = %1
  %86 = load i8, i8* @FC_BIND_PRIMITIVE, align 1
  store i8 %86, i8* %2, align 1
  br label %88

87:                                               ; preds = %1
  store i8 0, i8* %2, align 1
  br label %88

88:                                               ; preds = %87, %85, %83, %81, %79, %77, %75, %73, %71, %68, %56, %45, %42, %30, %18
  %89 = load i8, i8* %2, align 1
  ret i8 %89
}

declare dso_local i32 @type_basic_get_sign(i32*) #1

declare dso_local i32 @type_basic_get_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
