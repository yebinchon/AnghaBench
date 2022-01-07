; ModuleID = '/home/carl/AnghaBench/vlc/test/src/misc/extr_variables.c_test_booleans.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/misc/extr_variables.c_test_booleans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@VAR_COUNT = common dso_local global i32 0, align 4
@psz_var_name = common dso_local global i32* null, align 8
@VLC_VAR_BOOL = common dso_local global i32 0, align 4
@RAND_MAX = common dso_local global i32 0, align 4
@var_value = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_booleans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_booleans(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @VAR_COUNT, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load i32*, i32** %2, align 8
  %15 = load i32*, i32** @psz_var_name, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VLC_VAR_BOOL, align 4
  %21 = call i32 @var_Create(i32* %14, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %9

25:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %54, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @VAR_COUNT, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = call i32 (...) @rand()
  %32 = load i32, i32* @RAND_MAX, align 4
  %33 = sdiv i32 %32, 2
  %34 = icmp sgt i32 %31, %33
  %35 = zext i1 %34 to i32
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @var_value, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = load i32*, i32** @psz_var_name, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @var_value, align 8
  %48 = load i32, i32* %4, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @var_SetBool(i32* %41, i32 %46, i32 %52)
  br label %54

54:                                               ; preds = %30
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %26

57:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %80, %57
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @VAR_COUNT, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %58
  %63 = load i32*, i32** %2, align 8
  %64 = load i32*, i32** @psz_var_name, align 8
  %65 = load i32, i32* %5, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @var_GetBool(i32* %63, i32 %68)
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @var_value, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp eq i64 %69, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  br label %80

80:                                               ; preds = %62
  %81 = load i32, i32* %5, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %58

83:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %96, %83
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @VAR_COUNT, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i32*, i32** %2, align 8
  %90 = load i32*, i32** @psz_var_name, align 8
  %91 = load i32, i32* %6, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @var_ToggleBool(i32* %89, i32 %94)
  br label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %6, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %84

99:                                               ; preds = %84
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %122, %99
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @VAR_COUNT, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %100
  %105 = load i32*, i32** %2, align 8
  %106 = load i32*, i32** @psz_var_name, align 8
  %107 = load i32, i32* %7, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @var_GetBool(i32* %105, i32 %110)
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @var_value, align 8
  %113 = load i32, i32* %7, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = icmp ne i64 %111, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  br label %122

122:                                              ; preds = %104
  %123 = load i32, i32* %7, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %100

125:                                              ; preds = %100
  store i32 0, i32* %8, align 4
  br label %126

126:                                              ; preds = %138, %125
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @VAR_COUNT, align 4
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %126
  %131 = load i32*, i32** %2, align 8
  %132 = load i32*, i32** @psz_var_name, align 8
  %133 = load i32, i32* %8, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @var_Destroy(i32* %131, i32 %136)
  br label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %8, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %126

141:                                              ; preds = %126
  ret void
}

declare dso_local i32 @var_Create(i32*, i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @var_SetBool(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @var_GetBool(i32*, i32) #1

declare dso_local i32 @var_ToggleBool(i32*, i32) #1

declare dso_local i32 @var_Destroy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
