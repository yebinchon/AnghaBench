; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_api.c_index2adr.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_api.c_index2adr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32*, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32*, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_GLOBALSINDEX = common dso_local global i32 0, align 4
@LJ_TFUNC = common dso_local global i32 0, align 4
@LUA_ENVIRONINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_16__*, i32)* @index2adr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @index2adr(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ult i32* %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = load i32*, i32** %6, align 8
  br label %30

27:                                               ; preds = %12
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = call i32* @niltv(%struct.TYPE_16__* %28)
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i32* [ %26, %25 ], [ %29, %27 ]
  store i32* %31, i32** %3, align 8
  br label %148

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 0, %41
  %43 = sext i32 %42 to i64
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = ptrtoint i32* %46 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = icmp sle i64 %43, %53
  br label %55

55:                                               ; preds = %40, %36
  %56 = phi i1 [ false, %36 ], [ %54, %40 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @api_check(%struct.TYPE_16__* %37, i32 %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32* %64, i32** %3, align 8
  br label %148

65:                                               ; preds = %32
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @LUA_GLOBALSINDEX, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = call %struct.TYPE_14__* @G(%struct.TYPE_16__* %70)
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store i32* %72, i32** %7, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @tabref(i32 %77)
  %79 = call i32 @settabV(%struct.TYPE_16__* %73, i32* %74, i32 %78)
  %80 = load i32*, i32** %7, align 8
  store i32* %80, i32** %3, align 8
  br label %148

81:                                               ; preds = %65
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %87 = call i32* @registry(%struct.TYPE_16__* %86)
  store i32* %87, i32** %3, align 8
  br label %148

88:                                               ; preds = %81
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %90 = call %struct.TYPE_17__* @curr_func(%struct.TYPE_16__* %89)
  store %struct.TYPE_17__* %90, %struct.TYPE_17__** %8, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @LJ_TFUNC, align 4
  %97 = xor i32 %96, -1
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %88
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %101 = call i32 @isluafunc(%struct.TYPE_17__* %100)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  br label %104

104:                                              ; preds = %99, %88
  %105 = phi i1 [ false, %88 ], [ %103, %99 ]
  %106 = zext i1 %105 to i32
  %107 = call i32 @api_check(%struct.TYPE_16__* %91, i32 %106)
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @LUA_ENVIRONINDEX, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %104
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %113 = call %struct.TYPE_14__* @G(%struct.TYPE_16__* %112)
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  store i32* %114, i32** %9, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @tabref(i32 %120)
  %122 = call i32 @settabV(%struct.TYPE_16__* %115, i32* %116, i32 %121)
  %123 = load i32*, i32** %9, align 8
  store i32* %123, i32** %3, align 8
  br label %148

124:                                              ; preds = %104
  %125 = load i32, i32* @LUA_GLOBALSINDEX, align 4
  %126 = load i32, i32* %5, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp sle i32 %128, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %124
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  br label %146

143:                                              ; preds = %124
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %145 = call i32* @niltv(%struct.TYPE_16__* %144)
  br label %146

146:                                              ; preds = %143, %134
  %147 = phi i32* [ %142, %134 ], [ %145, %143 ]
  store i32* %147, i32** %3, align 8
  br label %148

148:                                              ; preds = %146, %111, %85, %69, %55, %30
  %149 = load i32*, i32** %3, align 8
  ret i32* %149
}

declare dso_local i32* @niltv(%struct.TYPE_16__*) #1

declare dso_local i32 @api_check(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_14__* @G(%struct.TYPE_16__*) #1

declare dso_local i32 @settabV(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @tabref(i32) #1

declare dso_local i32* @registry(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @curr_func(%struct.TYPE_16__*) #1

declare dso_local i32 @isluafunc(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
