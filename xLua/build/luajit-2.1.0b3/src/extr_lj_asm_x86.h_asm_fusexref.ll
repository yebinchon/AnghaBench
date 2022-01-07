; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_fusexref.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_fusexref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_15__ = type { i64, i32, i64, i64, i32 }

@RID_NONE = common dso_local global i8* null, align 8
@IR_KPTR = common dso_local global i64 0, align 8
@IR_KKPTR = common dso_local global i64 0, align 8
@IR_STRREF = common dso_local global i64 0, align 8
@IR_ADD = common dso_local global i64 0, align 8
@XM_SCALE1 = common dso_local global i8* null, align 8
@IR_BSHL = common dso_local global i64 0, align 8
@XM_SCALE2 = common dso_local global i8* null, align 8
@RID_DISPATCH = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i64, i32)* @asm_fusexref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_fusexref(%struct.TYPE_16__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call %struct.TYPE_15__* @IR(i64 %11)
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %7, align 8
  %13 = load i8*, i8** @RID_NONE, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  store i8* %13, i8** %16, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IR_KPTR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IR_KKPTR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22, %3
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load i8*, i8** @RID_NONE, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  store i8* %35, i8** %38, align 8
  br label %232

39:                                               ; preds = %22
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IR_STRREF, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @asm_fusestrref(%struct.TYPE_16__* %46, %struct.TYPE_15__* %47, i32 %48)
  br label %231

50:                                               ; preds = %39
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = call i64 @canfuse(%struct.TYPE_16__* %54, %struct.TYPE_15__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %221

58:                                               ; preds = %50
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IR_ADD, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %221

64:                                               ; preds = %58
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @ra_noreg(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %221

70:                                               ; preds = %64
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = call i64 @asm_isk32(%struct.TYPE_16__* %71, i64 %74, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %70
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call %struct.TYPE_15__* @IR(i64 %84)
  store %struct.TYPE_15__* %85, %struct.TYPE_15__** %7, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IR_ADD, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %80
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %94 = call i64 @canfuse(%struct.TYPE_16__* %92, %struct.TYPE_15__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @ra_noreg(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %96, %91, %80
  br label %222

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %70
  %105 = load i8*, i8** @XM_SCALE1, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 3
  store i8* %105, i8** %108, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %9, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %5, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call %struct.TYPE_15__* @IR(i64 %115)
  store %struct.TYPE_15__* %116, %struct.TYPE_15__** %8, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IR_BSHL, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %137, label %122

122:                                              ; preds = %104
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @IR_ADD, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %137, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %9, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %5, align 8
  %135 = load i64, i64* %9, align 8
  %136 = call %struct.TYPE_15__* @IR(i64 %135)
  store %struct.TYPE_15__* %136, %struct.TYPE_15__** %8, align 8
  br label %137

137:                                              ; preds = %128, %122, %104
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %140 = call i64 @canfuse(%struct.TYPE_16__* %138, %struct.TYPE_15__* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %208

142:                                              ; preds = %137
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @ra_noreg(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %208

148:                                              ; preds = %142
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @IR_BSHL, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %184

154:                                              ; preds = %148
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @irref_isk(i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %184

160:                                              ; preds = %154
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = call %struct.TYPE_15__* @IR(i64 %163)
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = icmp sle i32 %166, 3
  br i1 %167, label %168, label %184

168:                                              ; preds = %160
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %9, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = call %struct.TYPE_15__* @IR(i64 %174)
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = shl i32 %177, 6
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to i8*
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 3
  store i8* %180, i8** %183, align 8
  br label %207

184:                                              ; preds = %160, %154, %148
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @IR_ADD, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %206

190:                                              ; preds = %184
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %193, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %190
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %9, align 8
  %202 = load i8*, i8** @XM_SCALE2, align 8
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 3
  store i8* %202, i8** %205, align 8
  br label %206

206:                                              ; preds = %198, %190, %184
  br label %207

207:                                              ; preds = %206, %168
  br label %208

208:                                              ; preds = %207, %142, %137
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %210 = load i64, i64* %9, align 8
  %211 = load i32, i32* %6, align 4
  %212 = call i64 @ra_alloc1(%struct.TYPE_16__* %209, i64 %210, i32 %211)
  store i64 %212, i64* %10, align 8
  %213 = load i32, i32* %6, align 4
  %214 = load i64, i64* %10, align 8
  %215 = call i32 @rset_clear(i32 %213, i64 %214)
  %216 = load i64, i64* %10, align 8
  %217 = inttoptr i64 %216 to i8*
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 2
  store i8* %217, i8** %220, align 8
  br label %221

221:                                              ; preds = %208, %64, %58, %50
  br label %222

222:                                              ; preds = %221, %102
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %224 = load i64, i64* %5, align 8
  %225 = load i32, i32* %6, align 4
  %226 = call i64 @ra_alloc1(%struct.TYPE_16__* %223, i64 %224, i32 %225)
  %227 = inttoptr i64 %226 to i8*
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  store i8* %227, i8** %230, align 8
  br label %231

231:                                              ; preds = %222, %45
  br label %232

232:                                              ; preds = %231, %28
  ret void
}

declare dso_local %struct.TYPE_15__* @IR(i64) #1

declare dso_local i32 @asm_fusestrref(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @canfuse(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i64 @ra_noreg(i32) #1

declare dso_local i64 @asm_isk32(%struct.TYPE_16__*, i64, i32*) #1

declare dso_local i64 @irref_isk(i64) #1

declare dso_local i64 @ra_alloc1(%struct.TYPE_16__*, i64, i32) #1

declare dso_local i32 @rset_clear(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
