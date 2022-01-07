; ModuleID = '/home/carl/AnghaBench/vlc/test/src/misc/extr_variables.c_test_callbacks.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/misc/extr_variables.c_test_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@VAR_COUNT = common dso_local global i32 0, align 4
@psz_var_name = common dso_local global i32* null, align 8
@VLC_VAR_INTEGER = common dso_local global i32 0, align 4
@callback = common dso_local global i32 0, align 4
@var_value = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_callbacks(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @VAR_COUNT, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load i32*, i32** %2, align 8
  %14 = load i32*, i32** @psz_var_name, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %20 = call i32 @var_Create(i32* %13, i32 %18, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32*, i32** @psz_var_name, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @callback, align 4
  %28 = load i32*, i32** @psz_var_name, align 8
  %29 = call i32 @var_AddCallback(i32* %21, i32 %26, i32 %27, i32* %28)
  br label %30

30:                                               ; preds = %12
  %31 = load i32, i32* %3, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %8

33:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %79, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @VAR_COUNT, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %82

38:                                               ; preds = %34
  %39 = call i32 (...) @rand()
  store i32 %39, i32* %5, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = load i32*, i32** @psz_var_name, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @var_SetInteger(i32* %40, i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @var_value, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %48, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = load i32*, i32** @psz_var_name, align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @var_SetInteger(i32* %58, i32 %63, i32 0)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @var_value, align 8
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @var_value, align 8
  %75 = load i32, i32* %4, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %38
  %80 = load i32, i32* %4, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %34

82:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %104, %82
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @VAR_COUNT, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %107

87:                                               ; preds = %83
  %88 = load i32*, i32** %2, align 8
  %89 = load i32*, i32** @psz_var_name, align 8
  %90 = load i32, i32* %6, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @var_TriggerCallback(i32* %88, i32 %93)
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @var_value, align 8
  %96 = load i32, i32* %6, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  br label %104

104:                                              ; preds = %87
  %105 = load i32, i32* %6, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %83

107:                                              ; preds = %83
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %120, %107
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @VAR_COUNT, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %108
  %113 = load i32*, i32** %2, align 8
  %114 = load i32*, i32** @psz_var_name, align 8
  %115 = load i32, i32* %7, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @var_Destroy(i32* %113, i32 %118)
  br label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %7, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %108

123:                                              ; preds = %108
  ret void
}

declare dso_local i32 @var_Create(i32*, i32, i32) #1

declare dso_local i32 @var_AddCallback(i32*, i32, i32, i32*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @var_SetInteger(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @var_TriggerCallback(i32*, i32) #1

declare dso_local i32 @var_Destroy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
