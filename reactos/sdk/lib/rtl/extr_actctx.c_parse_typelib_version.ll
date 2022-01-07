; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_typelib_version.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_typelib_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.entity = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"FIXME: wrong typelib version value (%wZ)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.entity*)* @parse_typelib_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_typelib_version(%struct.TYPE_8__* %0, %struct.entity* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.entity*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.entity* %1, %struct.entity** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  br label %15

15:                                               ; preds = %71, %2
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  %25 = icmp ult i8* %16, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %15
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sge i32 %29, 48
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sle i32 %34, 57
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = mul i32 %40, 10
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = add i32 %41, %44
  %46 = sub i32 %45, 48
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %48
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp uge i32 %53, 65536
  br i1 %54, label %55, label %56

55:                                               ; preds = %36
  br label %88

56:                                               ; preds = %36
  br label %70

57:                                               ; preds = %31, %26
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 46
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = icmp uge i32 %64, 2
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %88

67:                                               ; preds = %62
  br label %69

68:                                               ; preds = %57
  br label %88

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69, %56
  br label %71

71:                                               ; preds = %70
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %8, align 8
  br label %15

74:                                               ; preds = %15
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.entity*, %struct.entity** %5, align 8
  %78 = getelementptr inbounds %struct.entity, %struct.entity* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.entity*, %struct.entity** %5, align 8
  %84 = getelementptr inbounds %struct.entity, %struct.entity* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %3, align 4
  br label %93

88:                                               ; preds = %68, %66, %55
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = call i32 @xmlstr2unicode(%struct.TYPE_8__* %89)
  store i32 %90, i32* %9, align 4
  %91 = call i32 @DPRINT1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32* %9)
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %88, %74
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @xmlstr2unicode(%struct.TYPE_8__*) #1

declare dso_local i32 @DPRINT1(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
