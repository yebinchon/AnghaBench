; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_expr_toreg_nobranch.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_expr_toreg_nobranch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i64 }

@VKSTR = common dso_local global i64 0, align 8
@BC_KSTR = common dso_local global i32 0, align 4
@VKNUM = common dso_local global i64 0, align 8
@BC_KSHORT = common dso_local global i32 0, align 4
@BC_KNUM = common dso_local global i32 0, align 4
@VRELOCABLE = common dso_local global i64 0, align 8
@VNONRELOC = common dso_local global i64 0, align 8
@BC_MOV = common dso_local global i32 0, align 4
@VKNIL = common dso_local global i64 0, align 8
@VKTRUE = common dso_local global i64 0, align 8
@BC_KPRI = common dso_local global i32 0, align 4
@VVOID = common dso_local global i64 0, align 8
@VJMP = common dso_local global i64 0, align 8
@BC_KCDATA = common dso_local global i32 0, align 4
@LJ_TCDATA = common dso_local global i32 0, align 4
@PROTO_FFI = common dso_local global i32 0, align 4
@VKCDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_24__*, i64)* @expr_toreg_nobranch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expr_toreg_nobranch(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %12 = call i32 @expr_discharge(%struct.TYPE_23__* %10, %struct.TYPE_24__* %11)
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VKSTR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32, i32* @BC_KSTR, align 4
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %23 = call i64 @const_str(%struct.TYPE_23__* %21, %struct.TYPE_24__* %22)
  %24 = call i32 @BCINS_AD(i32 %19, i64 %20, i64 %23)
  store i32 %24, i32* %7, align 4
  br label %135

25:                                               ; preds = %3
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VKNUM, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %25
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %33 = call i64 @expr_numberV(%struct.TYPE_24__* %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @lj_num2int(i64 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @checki16(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* @BC_KSHORT, align 4
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @BCINS_AD(i32 %44, i64 %45, i64 %46)
  store i32 %47, i32* %7, align 4
  br label %55

48:                                               ; preds = %39, %31
  %49 = load i32, i32* @BC_KNUM, align 4
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %53 = call i64 @const_num(%struct.TYPE_23__* %51, %struct.TYPE_24__* %52)
  %54 = call i32 @BCINS_AD(i32 %49, i64 %50, i64 %53)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %48, %43
  br label %134

56:                                               ; preds = %25
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VRELOCABLE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %65 = call i32 @bcptr(%struct.TYPE_23__* %63, %struct.TYPE_24__* %64)
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @setbc_a(i32 %65, i64 %66)
  br label %139

68:                                               ; preds = %56
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @VNONRELOC, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %68
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %75, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %139

83:                                               ; preds = %74
  %84 = load i32, i32* @BC_MOV, align 4
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @BCINS_AD(i32 %84, i64 %85, i64 %90)
  store i32 %91, i32* %7, align 4
  br label %132

92:                                               ; preds = %68
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @VKNIL, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @bcemit_nil(%struct.TYPE_23__* %99, i64 %100, i32 1)
  br label %139

102:                                              ; preds = %92
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @VKTRUE, align 8
  %107 = icmp sle i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load i32, i32* @BC_KPRI, align 4
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %112 = call i64 @const_pri(%struct.TYPE_24__* %111)
  %113 = call i32 @BCINS_AD(i32 %109, i64 %110, i64 %112)
  store i32 %113, i32* %7, align 4
  br label %130

114:                                              ; preds = %102
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @VVOID, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @VJMP, align 8
  %125 = icmp eq i64 %123, %124
  br label %126

126:                                              ; preds = %120, %114
  %127 = phi i1 [ true, %114 ], [ %125, %120 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @lua_assert(i32 %128)
  br label %148

130:                                              ; preds = %108
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131, %83
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133, %55
  br label %135

135:                                              ; preds = %134, %18
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @bcemit_INS(%struct.TYPE_23__* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %98, %82, %62
  %140 = load i64, i64* %6, align 8
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  store i64 %140, i64* %144, align 8
  %145 = load i64, i64* @VNONRELOC, align 8
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %139, %126
  ret void
}

declare dso_local i32 @expr_discharge(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @BCINS_AD(i32, i64, i64) #1

declare dso_local i64 @const_str(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i64 @expr_numberV(%struct.TYPE_24__*) #1

declare dso_local i64 @lj_num2int(i64) #1

declare dso_local i64 @checki16(i64) #1

declare dso_local i64 @const_num(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @setbc_a(i32, i64) #1

declare dso_local i32 @bcptr(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @bcemit_nil(%struct.TYPE_23__*, i64, i32) #1

declare dso_local i64 @const_pri(%struct.TYPE_24__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @bcemit_INS(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
