; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelCheckSubjectivelyDown.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelCheckSubjectivelyDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i64, i32, i64, i64, i64 }

@SENTINEL_MIN_LINK_RECONNECT_PERIOD = common dso_local global i64 0, align 8
@SENTINEL_PUBLISH_PERIOD = common dso_local global i32 0, align 4
@SRI_MASTER = common dso_local global i32 0, align 4
@SRI_SLAVE = common dso_local global i64 0, align 8
@SENTINEL_INFO_PERIOD = common dso_local global i32 0, align 4
@SRI_S_DOWN = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"+sdown\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%@\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"-sdown\00", align 1
@SRI_SCRIPT_KILL_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelCheckSubjectivelyDown(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 5
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = call i32 (...) @mstime()
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %11, %16
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = call i32 (...) @mstime()
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %26, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %25, %18
  br label %34

34:                                               ; preds = %33, %10
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %95

41:                                               ; preds = %34
  %42 = call i32 (...) @mstime()
  %43 = sext i32 %42 to i64
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %43, %48
  %50 = load i64, i64* @SENTINEL_MIN_LINK_RECONNECT_PERIOD, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %95

52:                                               ; preds = %41
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 5
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %95

59:                                               ; preds = %52
  %60 = call i32 (...) @mstime()
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %60, %65
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sdiv i32 %69, 2
  %71 = icmp sgt i32 %66, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %59
  %73 = call i32 (...) @mstime()
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %73, %78
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sdiv i32 %82, 2
  %84 = icmp sgt i32 %79, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %72
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 5
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 7
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @instanceLinkCloseConnection(%struct.TYPE_6__* %88, i64 %93)
  br label %95

95:                                               ; preds = %85, %72, %59, %52, %41, %34
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 5
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %134

102:                                              ; preds = %95
  %103 = call i32 (...) @mstime()
  %104 = sext i32 %103 to i64
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 5
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %104, %109
  %111 = load i64, i64* @SENTINEL_MIN_LINK_RECONNECT_PERIOD, align 8
  %112 = icmp sgt i64 %110, %111
  br i1 %112, label %113, label %134

113:                                              ; preds = %102
  %114 = call i32 (...) @mstime()
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %114, %119
  %121 = load i32, i32* @SENTINEL_PUBLISH_PERIOD, align 4
  %122 = mul nsw i32 %121, 3
  %123 = icmp sgt i32 %120, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %113
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @instanceLinkCloseConnection(%struct.TYPE_6__* %127, i64 %132)
  br label %134

134:                                              ; preds = %124, %113, %102, %95
  %135 = load i32, i32* %3, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp sgt i32 %135, %138
  br i1 %139, label %166, label %140

140:                                              ; preds = %134
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @SRI_MASTER, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %186

147:                                              ; preds = %140
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @SRI_SLAVE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %186

153:                                              ; preds = %147
  %154 = call i32 (...) @mstime()
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %154, %157
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @SENTINEL_INFO_PERIOD, align 4
  %163 = mul nsw i32 %162, 2
  %164 = add nsw i32 %161, %163
  %165 = icmp sgt i32 %158, %164
  br i1 %165, label %166, label %186

166:                                              ; preds = %153, %134
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @SRI_S_DOWN, align 4
  %171 = and i32 %169, %170
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %166
  %174 = load i32, i32* @LL_WARNING, align 4
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %176 = call i32 @sentinelEvent(i32 %174, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %177 = call i32 (...) @mstime()
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* @SRI_S_DOWN, align 4
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %173, %166
  br label %206

186:                                              ; preds = %153, %147, %140
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @SRI_S_DOWN, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %186
  %194 = load i32, i32* @LL_WARNING, align 4
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %196 = call i32 @sentinelEvent(i32 %194, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_5__* %195, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %197 = load i32, i32* @SRI_S_DOWN, align 4
  %198 = load i32, i32* @SRI_SCRIPT_KILL_SENT, align 4
  %199 = or i32 %197, %198
  %200 = xor i32 %199, -1
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, %200
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %193, %186
  br label %206

206:                                              ; preds = %205, %185
  ret void
}

declare dso_local i32 @mstime(...) #1

declare dso_local i32 @instanceLinkCloseConnection(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @sentinelEvent(i32, i8*, %struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
