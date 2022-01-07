; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_gc_mark.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_gc_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32 }

@LJ_TUDATA = common dso_local global i32 0, align 4
@LJ_TUPVAL = common dso_local global i32 0, align 4
@LJ_TSTR = common dso_local global i32 0, align 4
@LJ_TCDATA = common dso_local global i32 0, align 4
@LJ_TFUNC = common dso_local global i32 0, align 4
@LJ_TTAB = common dso_local global i32 0, align 4
@LJ_TTHREAD = common dso_local global i32 0, align 4
@LJ_TPROTO = common dso_local global i32 0, align 4
@LJ_TTRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_26__*)* @gc_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_mark(%struct.TYPE_24__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  %8 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %13 = call i64 @iswhite(%struct.TYPE_26__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %18 = call i32 @isdead(%struct.TYPE_24__* %16, %struct.TYPE_26__* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ false, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @lua_assert(i32 %23)
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %26 = call i32 @white2gray(%struct.TYPE_26__* %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @LJ_TUDATA, align 4
  %29 = xor i32 %28, -1
  %30 = icmp eq i32 %27, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @LJ_UNLIKELY(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %21
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %36 = call %struct.TYPE_21__* @gco2ud(%struct.TYPE_26__* %35)
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @tabref(i32 %38)
  store i32* %39, i32** %6, align 8
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %41 = call i32 @gray2black(%struct.TYPE_26__* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @gc_markobj(%struct.TYPE_24__* %45, i32* %46)
  br label %48

48:                                               ; preds = %44, %34
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %51 = call %struct.TYPE_21__* @gco2ud(%struct.TYPE_26__* %50)
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @tabref(i32 %53)
  %55 = call i32 @gc_markobj(%struct.TYPE_24__* %49, i32* %54)
  br label %135

56:                                               ; preds = %21
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @LJ_TUPVAL, align 4
  %59 = xor i32 %58, -1
  %60 = icmp eq i32 %57, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @LJ_UNLIKELY(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %56
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %66 = call %struct.TYPE_25__* @gco2uv(%struct.TYPE_26__* %65)
  store %struct.TYPE_25__* %66, %struct.TYPE_25__** %7, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %69 = call i32 @uvval(%struct.TYPE_25__* %68)
  %70 = call i32 @gc_marktv(%struct.TYPE_24__* %67, i32 %69)
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %77 = call i32 @gray2black(%struct.TYPE_26__* %76)
  br label %78

78:                                               ; preds = %75, %64
  br label %134

79:                                               ; preds = %56
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @LJ_TSTR, align 4
  %82 = xor i32 %81, -1
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %133

84:                                               ; preds = %79
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @LJ_TCDATA, align 4
  %87 = xor i32 %86, -1
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %133

89:                                               ; preds = %84
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @LJ_TFUNC, align 4
  %92 = xor i32 %91, -1
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %114, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @LJ_TTAB, align 4
  %97 = xor i32 %96, -1
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %114, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @LJ_TTHREAD, align 4
  %102 = xor i32 %101, -1
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @LJ_TPROTO, align 4
  %107 = xor i32 %106, -1
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @LJ_TTRACE, align 4
  %112 = xor i32 %111, -1
  %113 = icmp eq i32 %110, %112
  br label %114

114:                                              ; preds = %109, %104, %99, %94, %89
  %115 = phi i1 [ true, %104 ], [ true, %99 ], [ true, %94 ], [ true, %89 ], [ %113, %109 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @lua_assert(i32 %116)
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @setgcrefr(i32 %121, i32 %125)
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %132 = call i32 @setgcref(i32 %130, %struct.TYPE_26__* %131)
  br label %133

133:                                              ; preds = %114, %84, %79
  br label %134

134:                                              ; preds = %133, %78
  br label %135

135:                                              ; preds = %134, %48
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @iswhite(%struct.TYPE_26__*) #1

declare dso_local i32 @isdead(%struct.TYPE_24__*, %struct.TYPE_26__*) #1

declare dso_local i32 @white2gray(%struct.TYPE_26__*) #1

declare dso_local i64 @LJ_UNLIKELY(i32) #1

declare dso_local i32* @tabref(i32) #1

declare dso_local %struct.TYPE_21__* @gco2ud(%struct.TYPE_26__*) #1

declare dso_local i32 @gray2black(%struct.TYPE_26__*) #1

declare dso_local i32 @gc_markobj(%struct.TYPE_24__*, i32*) #1

declare dso_local %struct.TYPE_25__* @gco2uv(%struct.TYPE_26__*) #1

declare dso_local i32 @gc_marktv(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @uvval(%struct.TYPE_25__*) #1

declare dso_local i32 @setgcrefr(i32, i32) #1

declare dso_local i32 @setgcref(i32, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
