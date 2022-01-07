; ModuleID = '/home/carl/AnghaBench/redis/src/extr_expire.c_activeExpireCycle.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_expire.c_activeExpireCycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, double, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@activeExpireCycle.current_db = internal global i32 0, align 4
@activeExpireCycle.timelimit_exit = internal global i32 0, align 4
@activeExpireCycle.last_fast_cycle = internal global i64 0, align 8
@CRON_DBS_PER_CALL = common dso_local global i32 0, align 4
@ACTIVE_EXPIRE_CYCLE_FAST = common dso_local global i32 0, align 4
@ACTIVE_EXPIRE_CYCLE_FAST_DURATION = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ACTIVE_EXPIRE_CYCLE_SLOW_TIME_PERC = common dso_local global i32 0, align 4
@DICT_HT_INITIAL_SIZE = common dso_local global i64 0, align 8
@ACTIVE_EXPIRE_CYCLE_LOOKUPS_PER_LOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"expire-cycle\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @activeExpireCycle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %22 = load i32, i32* @CRON_DBS_PER_CALL, align 4
  store i32 %22, i32* %5, align 4
  %23 = call i64 (...) @ustime()
  store i64 %23, i64* %6, align 8
  %24 = call i64 (...) @clientsArePaused()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %244

27:                                               ; preds = %1
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @ACTIVE_EXPIRE_CYCLE_FAST, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i32, i32* @activeExpireCycle.timelimit_exit, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  br label %244

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @activeExpireCycle.last_fast_cycle, align 8
  %38 = load i32, i32* @ACTIVE_EXPIRE_CYCLE_FAST_DURATION, align 4
  %39 = mul nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = icmp slt i64 %36, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %244

44:                                               ; preds = %35
  %45 = load i64, i64* %6, align 8
  store i64 %45, i64* @activeExpireCycle.last_fast_cycle, align 8
  br label %46

46:                                               ; preds = %44, %27
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @activeExpireCycle.timelimit_exit, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %46
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32, i32* @ACTIVE_EXPIRE_CYCLE_SLOW_TIME_PERC, align 4
  %57 = mul nsw i32 1000000, %56
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 1), align 4
  %59 = sdiv i32 %57, %58
  %60 = sdiv i32 %59, 100
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %7, align 8
  store i32 0, i32* @activeExpireCycle.timelimit_exit, align 4
  %62 = load i64, i64* %7, align 8
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i64 1, i64* %7, align 8
  br label %65

65:                                               ; preds = %64, %55
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @ACTIVE_EXPIRE_CYCLE_FAST, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @ACTIVE_EXPIRE_CYCLE_FAST_DURATION, align 4
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %69, %65
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %219, %72
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @activeExpireCycle.timelimit_exit, align 4
  %79 = icmp eq i32 %78, 0
  br label %80

80:                                               ; preds = %77, %73
  %81 = phi i1 [ false, %73 ], [ %79, %77 ]
  br i1 %81, label %82, label %222

82:                                               ; preds = %80
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 4), align 8
  %84 = load i32, i32* @activeExpireCycle.current_db, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %86 = urem i32 %84, %85
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %87
  store %struct.TYPE_4__* %88, %struct.TYPE_4__** %12, align 8
  %89 = load i32, i32* @activeExpireCycle.current_db, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* @activeExpireCycle.current_db, align 4
  br label %91

91:                                               ; preds = %213, %82
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @dictSize(i32 %96)
  store i64 %97, i64* %13, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  br label %218

102:                                              ; preds = %91
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @dictSlots(i32 %105)
  store i64 %106, i64* %14, align 8
  %107 = call i64 (...) @mstime()
  store i64 %107, i64* %15, align 8
  %108 = load i64, i64* %13, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %102
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* @DICT_HT_INITIAL_SIZE, align 8
  %113 = icmp ugt i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load i64, i64* %13, align 8
  %116 = mul i64 %115, 100
  %117 = load i64, i64* %14, align 8
  %118 = udiv i64 %116, %117
  %119 = icmp ult i64 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %218

121:                                              ; preds = %114, %110, %102
  store i32 0, i32* %11, align 4
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %122 = load i64, i64* %13, align 8
  %123 = load i32, i32* @ACTIVE_EXPIRE_CYCLE_LOOKUPS_PER_LOOP, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp ugt i64 %122, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @ACTIVE_EXPIRE_CYCLE_LOOKUPS_PER_LOOP, align 4
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %13, align 8
  br label %129

129:                                              ; preds = %126, %121
  br label %130

130:                                              ; preds = %163, %129
  %131 = load i64, i64* %13, align 8
  %132 = add i64 %131, -1
  store i64 %132, i64* %13, align 8
  %133 = icmp ne i64 %131, 0
  br i1 %133, label %134, label %166

134:                                              ; preds = %130
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32* @dictGetRandomKey(i32 %137)
  store i32* %138, i32** %18, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %166

141:                                              ; preds = %134
  %142 = load i32*, i32** %18, align 8
  %143 = call i64 @dictGetSignedIntegerVal(i32* %142)
  %144 = load i64, i64* %15, align 8
  %145 = sub nsw i64 %143, %144
  store i64 %145, i64* %19, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %147 = load i32*, i32** %18, align 8
  %148 = load i64, i64* %15, align 8
  %149 = call i64 @activeExpireCycleTryExpire(%struct.TYPE_4__* %146, i32* %147, i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %141
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %151, %141
  %155 = load i64, i64* %19, align 8
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load i64, i64* %19, align 8
  %159 = load i64, i64* %16, align 8
  %160 = add nsw i64 %159, %158
  store i64 %160, i64* %16, align 8
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %17, align 4
  br label %163

163:                                              ; preds = %157, %154
  %164 = load i64, i64* %9, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %9, align 8
  br label %130

166:                                              ; preds = %140, %130
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = load i64, i64* %10, align 8
  %170 = add nsw i64 %169, %168
  store i64 %170, i64* %10, align 8
  %171 = load i32, i32* %17, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %197

173:                                              ; preds = %166
  %174 = load i64, i64* %16, align 8
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = sdiv i64 %174, %176
  store i64 %177, i64* %20, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %173
  %183 = load i64, i64* %20, align 8
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %182, %173
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = sdiv i64 %189, 50
  %191 = mul nsw i64 %190, 49
  %192 = load i64, i64* %20, align 8
  %193 = sdiv i64 %192, 50
  %194 = add nsw i64 %191, %193
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  br label %197

197:                                              ; preds = %186, %166
  %198 = load i32, i32* %4, align 4
  %199 = and i32 %198, 15
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %197
  %202 = call i64 (...) @ustime()
  %203 = load i64, i64* %6, align 8
  %204 = sub nsw i64 %202, %203
  store i64 %204, i64* %8, align 8
  %205 = load i64, i64* %8, align 8
  %206 = load i64, i64* %7, align 8
  %207 = icmp sgt i64 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %201
  store i32 1, i32* @activeExpireCycle.timelimit_exit, align 4
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 3), align 8
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 3), align 8
  br label %218

211:                                              ; preds = %201
  br label %212

212:                                              ; preds = %211, %197
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* @ACTIVE_EXPIRE_CYCLE_LOOKUPS_PER_LOOP, align 4
  %216 = sdiv i32 %215, 4
  %217 = icmp sgt i32 %214, %216
  br i1 %217, label %91, label %218

218:                                              ; preds = %213, %208, %120, %99
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %3, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %3, align 4
  br label %73

222:                                              ; preds = %80
  %223 = call i64 (...) @ustime()
  %224 = load i64, i64* %6, align 8
  %225 = sub nsw i64 %223, %224
  store i64 %225, i64* %8, align 8
  %226 = load i64, i64* %8, align 8
  %227 = sdiv i64 %226, 1000
  %228 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %227)
  %229 = load i64, i64* %9, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %222
  %232 = load i64, i64* %10, align 8
  %233 = sitofp i64 %232 to double
  %234 = load i64, i64* %9, align 8
  %235 = sitofp i64 %234 to double
  %236 = fdiv double %233, %235
  store double %236, double* %21, align 8
  br label %238

237:                                              ; preds = %222
  store double 0.000000e+00, double* %21, align 8
  br label %238

238:                                              ; preds = %237, %231
  %239 = load double, double* %21, align 8
  %240 = fmul double %239, 5.000000e-02
  %241 = load double, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 2), align 8
  %242 = fmul double %241, 0x3FEE666666666666
  %243 = fadd double %240, %242
  store double %243, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 2), align 8
  br label %244

244:                                              ; preds = %238, %43, %34, %26
  ret void
}

declare dso_local i64 @ustime(...) #1

declare dso_local i64 @clientsArePaused(...) #1

declare dso_local i64 @dictSize(i32) #1

declare dso_local i64 @dictSlots(i32) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i32* @dictGetRandomKey(i32) #1

declare dso_local i64 @dictGetSignedIntegerVal(i32*) #1

declare dso_local i64 @activeExpireCycleTryExpire(%struct.TYPE_4__*, i32*, i64) #1

declare dso_local i32 @latencyAddSampleIfNeeded(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
