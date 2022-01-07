; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_propassign.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_propassign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_21__ = type { i32, i8 }

@AST_IDENTIFIER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"get\00", align 1
@PROP_GET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@PROP_SET = common dso_local global i32 0, align 4
@PROP_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_21__*)* @propassign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @propassign(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %13 = call %struct.TYPE_22__* @propname(%struct.TYPE_21__* %12)
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %4, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %16 = load i8, i8* %15, align 4
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 58
  br i1 %18, label %19, label %68

19:                                               ; preds = %1
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AST_IDENTIFIER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %19
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strcmp(i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %33 = call %struct.TYPE_22__* @propname(%struct.TYPE_21__* %32)
  store %struct.TYPE_22__* %33, %struct.TYPE_22__** %4, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %35 = call i32 @jsP_expect(%struct.TYPE_21__* %34, i8 signext 40)
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %37 = call i32 @jsP_expect(%struct.TYPE_21__* %36, i8 signext 41)
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %39 = call %struct.TYPE_22__* @funbody(%struct.TYPE_21__* %38)
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %7, align 8
  %40 = load i32, i32* @PROP_GET, align 4
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %43 = call %struct.TYPE_22__* @EXP3(i32 %40, %struct.TYPE_22__* %41, i32* null, %struct.TYPE_22__* %42)
  store %struct.TYPE_22__* %43, %struct.TYPE_22__** %2, align 8
  br label %77

44:                                               ; preds = %25
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @strcmp(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %52 = call %struct.TYPE_22__* @propname(%struct.TYPE_21__* %51)
  store %struct.TYPE_22__* %52, %struct.TYPE_22__** %4, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %54 = call i32 @jsP_expect(%struct.TYPE_21__* %53, i8 signext 40)
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %56 = call %struct.TYPE_22__* @identifier(%struct.TYPE_21__* %55)
  store %struct.TYPE_22__* %56, %struct.TYPE_22__** %6, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %58 = call i32 @jsP_expect(%struct.TYPE_21__* %57, i8 signext 41)
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %60 = call %struct.TYPE_22__* @funbody(%struct.TYPE_21__* %59)
  store %struct.TYPE_22__* %60, %struct.TYPE_22__** %7, align 8
  %61 = load i32, i32* @PROP_SET, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %64 = call i32* @LIST(%struct.TYPE_22__* %63)
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %66 = call %struct.TYPE_22__* @EXP3(i32 %61, %struct.TYPE_22__* %62, i32* %64, %struct.TYPE_22__* %65)
  store %struct.TYPE_22__* %66, %struct.TYPE_22__** %2, align 8
  br label %77

67:                                               ; preds = %44
  br label %68

68:                                               ; preds = %67, %19, %1
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %70 = call i32 @jsP_expect(%struct.TYPE_21__* %69, i8 signext 58)
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %72 = call %struct.TYPE_22__* @assignment(%struct.TYPE_21__* %71, i32 0)
  store %struct.TYPE_22__* %72, %struct.TYPE_22__** %5, align 8
  %73 = load i32, i32* @PROP_VAL, align 4
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %76 = call %struct.TYPE_22__* @EXP2(i32 %73, %struct.TYPE_22__* %74, %struct.TYPE_22__* %75)
  store %struct.TYPE_22__* %76, %struct.TYPE_22__** %2, align 8
  br label %77

77:                                               ; preds = %68, %50, %31
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  ret %struct.TYPE_22__* %78
}

declare dso_local %struct.TYPE_22__* @propname(%struct.TYPE_21__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @jsP_expect(%struct.TYPE_21__*, i8 signext) #1

declare dso_local %struct.TYPE_22__* @funbody(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @EXP3(i32, %struct.TYPE_22__*, i32*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @identifier(%struct.TYPE_21__*) #1

declare dso_local i32* @LIST(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @assignment(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_22__* @EXP2(i32, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
