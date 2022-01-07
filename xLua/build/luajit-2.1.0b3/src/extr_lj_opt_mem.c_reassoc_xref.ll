; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_mem.c_reassoc_xref.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_mem.c_reassoc_xref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i64, i32 }
%struct.TYPE_7__ = type { i64 }

@IR_ADD = common dso_local global i64 0, align 8
@LJ_64 = common dso_local global i64 0, align 8
@IR_KINT64 = common dso_local global i64 0, align 8
@IR_BSHL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_6__*)* @reassoc_xref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reassoc_xref(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IR_ADD, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @irref_isk(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %18
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.TYPE_6__* @IR(i64 %27)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %7, align 8
  %29 = load i64, i64* @LJ_64, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IR_KINT64, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = call %struct.TYPE_7__* @ir_k64(%struct.TYPE_6__* %38)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  br label %47

43:                                               ; preds = %31, %24
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi i32 [ %42, %37 ], [ %46, %43 ]
  store i32 %48, i32* %6, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call %struct.TYPE_6__* @IR(i64 %51)
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %5, align 8
  br label %53

53:                                               ; preds = %47, %18, %2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IR_ADD, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %191

59:                                               ; preds = %53
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call %struct.TYPE_6__* @IR(i64 %62)
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %9, align 8
  store i32 0, i32* %10, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IR_BSHL, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %59
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @irref_isk(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call %struct.TYPE_6__* @IR(i64 %78)
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %10, align 4
  br label %100

82:                                               ; preds = %69, %59
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IR_ADD, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %82
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  store i32 1, i32* %10, align 4
  br label %99

97:                                               ; preds = %88, %82
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %98, %struct.TYPE_6__** %9, align 8
  br label %99

99:                                               ; preds = %97, %96
  br label %100

100:                                              ; preds = %99, %75
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = call %struct.TYPE_6__* @IR(i64 %103)
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %8, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @IR_ADD, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %133

110:                                              ; preds = %100
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @irt_isint(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %110
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @irref_isk(i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %116
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call %struct.TYPE_6__* @IR(i64 %125)
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = shl i32 %128, %129
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %6, align 4
  br label %134

133:                                              ; preds = %116, %110, %100
  store i64 0, i64* %3, align 8
  br label %192

134:                                              ; preds = %122
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %11, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = icmp ne %struct.TYPE_6__* %138, %139
  br i1 %140, label %141, label %163

141:                                              ; preds = %134
  %142 = load i32*, i32** %4, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %11, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @IR_BSHL, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %141
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  br label %158

156:                                              ; preds = %141
  %157 = load i64, i64* %11, align 8
  br label %158

158:                                              ; preds = %156, %152
  %159 = phi i64 [ %155, %152 ], [ %157, %156 ]
  %160 = call i64 @reassoc_trycse(i32* %142, i64 %145, i64 %146, i64 %159)
  store i64 %160, i64* %11, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  store i64 0, i64* %3, align 8
  br label %192

163:                                              ; preds = %158, %134
  %164 = load i32*, i32** %4, align 8
  %165 = load i64, i64* @IR_ADD, align 8
  %166 = load i64, i64* %11, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @reassoc_trycse(i32* %164, i64 %165, i64 %166, i64 %169)
  store i64 %170, i64* %11, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %163
  store i64 0, i64* %3, align 8
  br label %192

173:                                              ; preds = %163
  %174 = load i32, i32* %6, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %173
  %177 = load i32*, i32** %4, align 8
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @lj_ir_kintp(i32* %177, i32 %178)
  %180 = call i64 @tref_ref(i32 %179)
  store i64 %180, i64* %12, align 8
  %181 = load i32*, i32** %4, align 8
  %182 = load i64, i64* @IR_ADD, align 8
  %183 = load i64, i64* %11, align 8
  %184 = load i64, i64* %12, align 8
  %185 = call i64 @reassoc_trycse(i32* %181, i64 %182, i64 %183, i64 %184)
  store i64 %185, i64* %11, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %176
  store i64 0, i64* %3, align 8
  br label %192

188:                                              ; preds = %176
  br label %189

189:                                              ; preds = %188, %173
  %190 = load i64, i64* %11, align 8
  store i64 %190, i64* %3, align 8
  br label %192

191:                                              ; preds = %53
  store i64 0, i64* %3, align 8
  br label %192

192:                                              ; preds = %191, %189, %187, %172, %162, %133
  %193 = load i64, i64* %3, align 8
  ret i64 %193
}

declare dso_local i64 @irref_isk(i64) #1

declare dso_local %struct.TYPE_6__* @IR(i64) #1

declare dso_local %struct.TYPE_7__* @ir_k64(%struct.TYPE_6__*) #1

declare dso_local i64 @irt_isint(i32) #1

declare dso_local i64 @reassoc_trycse(i32*, i64, i64, i64) #1

declare dso_local i64 @tref_ref(i32) #1

declare dso_local i32 @lj_ir_kintp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
