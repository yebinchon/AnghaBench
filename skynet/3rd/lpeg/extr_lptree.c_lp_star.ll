; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_lp_star.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_lp_star.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, i8* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i8* }

@.str = private unnamed_addr constant [34 x i8] c"loop body may accept empty string\00", align 1
@TRep = common dso_local global i8* null, align 8
@TChoice = common dso_local global i8* null, align 8
@TTrue = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lp_star to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp_star(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @luaL_checkinteger(i32* %8, i32 2)
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call %struct.TYPE_16__* @getpatt(i32* %11, i32 1, i32* %3)
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  %21 = mul nsw i32 %18, %20
  %22 = call %struct.TYPE_16__* @newtree(i32* %16, i32 %21)
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %6, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = call i64 @nullable(%struct.TYPE_16__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @luaL_error(i32* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %15
  br label %30

30:                                               ; preds = %34, %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %4, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call %struct.TYPE_16__* @seqaux(%struct.TYPE_16__* %35, %struct.TYPE_16__* %36, i32 %37)
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %6, align 8
  br label %30

39:                                               ; preds = %30
  %40 = load i8*, i8** @TRep, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = call %struct.TYPE_16__* @sib1(%struct.TYPE_16__* %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 16
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memcpy(%struct.TYPE_16__* %44, %struct.TYPE_16__* %45, i32 %49)
  br label %110

51:                                               ; preds = %1
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 3
  %58 = mul nsw i32 %55, %57
  %59 = sub nsw i32 %58, 1
  %60 = call %struct.TYPE_16__* @newtree(i32* %54, i32 %59)
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %7, align 8
  br label %61

61:                                               ; preds = %86, %51
  %62 = load i32, i32* %4, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %89

64:                                               ; preds = %61
  %65 = load i8*, i8** @TChoice, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 3
  %71 = mul nsw i32 %68, %70
  %72 = sub nsw i32 %71, 2
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load i8*, i8** @TTrue, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %78 = call %struct.TYPE_17__* @sib2(%struct.TYPE_16__* %77)
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %81 = call %struct.TYPE_16__* @sib1(%struct.TYPE_16__* %80)
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** %7, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call %struct.TYPE_16__* @seqaux(%struct.TYPE_16__* %82, %struct.TYPE_16__* %83, i32 %84)
  store %struct.TYPE_16__* %85, %struct.TYPE_16__** %7, align 8
  br label %86

86:                                               ; preds = %64
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %4, align 4
  br label %61

89:                                               ; preds = %61
  %90 = load i8*, i8** @TChoice, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load i8*, i8** @TTrue, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %100 = call %struct.TYPE_17__* @sib2(%struct.TYPE_16__* %99)
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  store i8* %98, i8** %101, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %103 = call %struct.TYPE_16__* @sib1(%struct.TYPE_16__* %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 16
  %108 = trunc i64 %107 to i32
  %109 = call i32 @memcpy(%struct.TYPE_16__* %103, %struct.TYPE_16__* %104, i32 %108)
  br label %110

110:                                              ; preds = %89, %39
  %111 = load i32*, i32** %2, align 8
  %112 = call i32 @copyktable(i32* %111, i32 1)
  ret i32 1
}

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local %struct.TYPE_16__* @getpatt(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @newtree(i32*, i32) #1

declare dso_local i64 @nullable(%struct.TYPE_16__*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local %struct.TYPE_16__* @seqaux(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_16__* @sib1(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @sib2(%struct.TYPE_16__*) #1

declare dso_local i32 @copyktable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
