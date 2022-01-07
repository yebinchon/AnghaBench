; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_rec_mm_comp.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_rec_mm_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@MM_le = common dso_local global i32 0, align 4
@MM_lt = common dso_local global i32 0, align 4
@IR_FLOAD = common dso_local global i32 0, align 4
@IRT_TAB = common dso_local global i32 0, align 4
@IRFL_TAB_META = common dso_local global i32 0, align 4
@IR_EQ = common dso_local global i32 0, align 4
@IRFL_UDATA_META = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*, i32)* @rec_mm_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rec_mm_comp(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = call i32 @copyTV(i32 %20, i32* %22, i32* %24)
  br label %26

26:                                               ; preds = %3, %156
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 2
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @MM_le, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @MM_lt, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %7, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @lj_record_mm_lookup(%struct.TYPE_12__* %36, %struct.TYPE_13__* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %150

41:                                               ; preds = %34
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 7
  %50 = call i32 @copyTV(i32 %47, i32* %10, i32* %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 3
  store i32* %52, i32** %8, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i64 @tvistab(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %41
  %57 = load i32*, i32** %8, align 8
  %58 = call %struct.TYPE_15__* @tabV(i32* %57)
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @tabref(i32 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %56
  %67 = load i32, i32* @IR_FLOAD, align 4
  %68 = load i32, i32* @IRT_TAB, align 4
  %69 = call i32 @IRT(i32 %67, i32 %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IRFL_TAB_META, align 4
  %74 = call i32 @emitir(i32 %69, i32 %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* @IR_EQ, align 4
  %76 = load i32, i32* @IRT_TAB, align 4
  %77 = call i32 @IRTG(i32 %75, i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @emitir(i32 %77, i32 %78, i32 %81)
  br label %145

83:                                               ; preds = %56, %41
  %84 = load i32*, i32** %8, align 8
  %85 = call i64 @tvisudata(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %83
  %88 = load i32*, i32** %8, align 8
  %89 = call %struct.TYPE_14__* @udataV(i32* %88)
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @tabref(i32 %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %92, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %87
  %98 = load i32, i32* @IR_FLOAD, align 4
  %99 = load i32, i32* @IRT_TAB, align 4
  %100 = call i32 @IRT(i32 %98, i32 %99)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IRFL_UDATA_META, align 4
  %105 = call i32 @emitir(i32 %100, i32 %103, i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* @IR_EQ, align 4
  %107 = load i32, i32* @IRT_TAB, align 4
  %108 = call i32 @IRTG(i32 %106, i32 %107)
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @emitir(i32 %108, i32 %109, i32 %112)
  br label %144

114:                                              ; preds = %87, %83
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @copyTV(i32 %122, i32* %124, i32* %125)
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i64 @lj_record_mm_lookup(%struct.TYPE_12__* %127, %struct.TYPE_13__* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %114
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 7
  %140 = call i64 @lj_record_objcmp(%struct.TYPE_12__* %133, i32 %134, i32 %137, i32* %10, i32* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %132, %114
  br label %151

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143, %97
  br label %145

145:                                              ; preds = %144, %66
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @rec_mm_callcomp(%struct.TYPE_12__* %146, %struct.TYPE_13__* %147, i32 %148)
  br label %198

150:                                              ; preds = %34
  br label %151

151:                                              ; preds = %150, %142
  %152 = load i32, i32* %6, align 4
  %153 = and i32 %152, 2
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %151
  br label %198

156:                                              ; preds = %151
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 6
  store i32 %164, i32* %166, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 3
  %179 = call i32 @copyTV(i32 %174, i32* %176, i32* %178)
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  %187 = call i32 @copyTV(i32 %182, i32* %184, i32* %186)
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = call i32 @copyTV(i32 %190, i32* %192, i32* %194)
  %196 = load i32, i32* %6, align 4
  %197 = xor i32 %196, 3
  store i32 %197, i32* %6, align 4
  br label %26

198:                                              ; preds = %145, %155
  ret void
}

declare dso_local i32 @copyTV(i32, i32*, i32*) #1

declare dso_local i64 @lj_record_mm_lookup(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @tvistab(i32*) #1

declare dso_local i64 @tabref(i32) #1

declare dso_local %struct.TYPE_15__* @tabV(i32*) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i64 @tvisudata(i32*) #1

declare dso_local %struct.TYPE_14__* @udataV(i32*) #1

declare dso_local i64 @lj_record_objcmp(%struct.TYPE_12__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @rec_mm_callcomp(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
