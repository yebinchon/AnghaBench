; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/port/extr_getopt.c__getopt_initialize.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/port/extr_getopt.c__getopt_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._getopt_data = type { i32, i32, i32, i32, i8*, i32* }

@RETURN_IN_ORDER = common dso_local global i8* null, align 8
@REQUIRE_ORDER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@PERMUTE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8**, i8*, %struct._getopt_data*, i32)* @_getopt_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_getopt_initialize(i32 %0, i8** %1, i8* %2, %struct._getopt_data* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._getopt_data*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct._getopt_data* %3, %struct._getopt_data** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct._getopt_data*, %struct._getopt_data** %9, align 8
  %12 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load %struct._getopt_data*, %struct._getopt_data** %9, align 8
  %17 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  br label %18

18:                                               ; preds = %15, %5
  %19 = load %struct._getopt_data*, %struct._getopt_data** %9, align 8
  %20 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct._getopt_data*, %struct._getopt_data** %9, align 8
  %23 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct._getopt_data*, %struct._getopt_data** %9, align 8
  %25 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct._getopt_data*, %struct._getopt_data** %9, align 8
  %27 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %26, i32 0, i32 5
  store i32* null, i32** %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br i1 %32, label %33, label %39

33:                                               ; preds = %18
  %34 = load i8*, i8** @RETURN_IN_ORDER, align 8
  %35 = load %struct._getopt_data*, %struct._getopt_data** %9, align 8
  %36 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %8, align 8
  br label %67

39:                                               ; preds = %18
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i8*, i8** @REQUIRE_ORDER, align 8
  %47 = load %struct._getopt_data*, %struct._getopt_data** %9, align 8
  %48 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  br label %66

51:                                               ; preds = %39
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = call i32 @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54, %51
  %58 = load i8*, i8** @REQUIRE_ORDER, align 8
  %59 = load %struct._getopt_data*, %struct._getopt_data** %9, align 8
  %60 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  br label %65

61:                                               ; preds = %54
  %62 = load i8*, i8** @PERMUTE, align 8
  %63 = load %struct._getopt_data*, %struct._getopt_data** %9, align 8
  %64 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %45
  br label %67

67:                                               ; preds = %66, %33
  %68 = load %struct._getopt_data*, %struct._getopt_data** %9, align 8
  %69 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %68, i32 0, i32 3
  store i32 1, i32* %69, align 4
  %70 = load i8*, i8** %8, align 8
  ret i8* %70
}

declare dso_local i32 @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
