; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_predict_next.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_predict_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i64*, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"pairs\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_17__*, i64)* @predict_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @predict_next(%struct.TYPE_15__* %0, %struct.TYPE_17__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_18__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @bc_op(i32 %19)
  switch i32 %20, label %93 [
    i32 129, label %21
    i32 128, label %32
    i32 130, label %48
  ]

21:                                               ; preds = %3
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @bc_d(i32 %24)
  %26 = call i32 @var_get(%struct.TYPE_15__* %22, %struct.TYPE_17__* %23, i64 %25)
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gcref(i32 %29)
  %31 = call %struct.TYPE_16__* @gco2str(i32 %30)
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %9, align 8
  br label %94

32:                                               ; preds = %3
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @bc_d(i32 %39)
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @gcref(i32 %45)
  %47 = call %struct.TYPE_16__* @gco2str(i32 %46)
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %9, align 8
  br label %94

48:                                               ; preds = %3
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @lj_str_newlit(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %56 = call i32* @lj_tab_getstr(i32 %51, i32 %55)
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %48
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @tvhaskslot(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i32*, i32** %10, align 8
  %65 = call i64 @tvkslot(i32* %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @bc_d(i32 %66)
  %68 = icmp eq i64 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 1, i32* %4, align 4
  br label %120

70:                                               ; preds = %63, %59, %48
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @lj_str_newlit(i32 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %78 = call i32* @lj_tab_getstr(i32 %73, i32 %77)
  store i32* %78, i32** %10, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %70
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @tvhaskslot(i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i32*, i32** %10, align 8
  %87 = call i64 @tvkslot(i32* %86)
  %88 = load i32, i32* %8, align 4
  %89 = call i64 @bc_d(i32 %88)
  %90 = icmp eq i64 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 1, i32* %4, align 4
  br label %120

92:                                               ; preds = %85, %81, %70
  store i32 0, i32* %4, align 4
  br label %120

93:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %120

94:                                               ; preds = %32, %21
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 5
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %101 = call i32 @strdata(%struct.TYPE_16__* %100)
  %102 = call i32 @strcmp(i32 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %99, %94
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 4
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %111 = call i32 @strdata(%struct.TYPE_16__* %110)
  %112 = call i32 @strcmp(i32 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  br label %115

115:                                              ; preds = %109, %104
  %116 = phi i1 [ false, %104 ], [ %114, %109 ]
  br label %117

117:                                              ; preds = %115, %99
  %118 = phi i1 [ true, %99 ], [ %116, %115 ]
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %117, %93, %92, %91, %69
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @bc_op(i32) #1

declare dso_local %struct.TYPE_16__* @gco2str(i32) #1

declare dso_local i32 @gcref(i32) #1

declare dso_local i32 @var_get(%struct.TYPE_15__*, %struct.TYPE_17__*, i64) #1

declare dso_local i64 @bc_d(i32) #1

declare dso_local i32* @lj_tab_getstr(i32, i32) #1

declare dso_local i32 @lj_str_newlit(i32, i8*) #1

declare dso_local i32 @tvhaskslot(i32*) #1

declare dso_local i64 @tvkslot(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strdata(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
