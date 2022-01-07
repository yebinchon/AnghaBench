; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_time.c_test_pRtlTimeToTimeFields.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_time.c_test_pRtlTimeToTimeFields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64, i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i64, i32 }

@tftest = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [58 x i8] c"#%d expected: %d-%d-%d %d:%d:%d  got:  %d-%d-%d %d:%d:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c" TimeFieldsToTime failed on %d-%d-%d %d:%d:%d. Error is %d ticks\0A\00", align 1
@TICKSPERSEC = common dso_local global i32 0, align 4
@MonthLengths = common dso_local global i32** null, align 8
@SECSPERDAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_pRtlTimeToTimeFields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pRtlTimeToTimeFields() #0 {
  %1 = alloca %struct.TYPE_9__, align 4
  %2 = alloca %struct.TYPE_9__, align 4
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  store i32 -1, i32* %5, align 4
  br label %6

6:                                                ; preds = %190, %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 0), align 8
  %8 = icmp slt i32 %7, 2110
  br i1 %8, label %9, label %209

9:                                                ; preds = %6
  %10 = call i32 @pRtlTimeToTimeFields(%struct.TYPE_9__* %1, %struct.TYPE_8__* %3)
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 0), align 8
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 1), align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 2), align 8
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 5), align 8
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 3), align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 4), align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %35, %30, %25, %20, %15, %9
  %41 = phi i1 [ false, %30 ], [ false, %25 ], [ false, %20 ], [ false, %15 ], [ false, %9 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 0), align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 1), align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 2), align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 5), align 8
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 3), align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 4), align 8
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i32, i8*, i32, i32, i32, i32, i64, i64, i32, ...) @ok(i32 %42, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i32 %47, i64 %49, i64 %50, i32 %52, i32 %54, i32 %56, i32 %58, i32 %60, i64 %62, i64 %64)
  %66 = call i32 @pRtlTimeFieldsToTime(%struct.TYPE_8__* %3, %struct.TYPE_9__* %2)
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %68, %70
  %72 = zext i1 %71 to i32
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %86, %88
  %90 = call i32 (i32, i8*, i32, i32, i32, i32, i64, i64, i32, ...) @ok(i32 %72, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %76, i32 %78, i32 %80, i64 %82, i64 %84, i32 %89)
  %91 = load i32, i32* @TICKSPERSEC, align 4
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %91
  store i32 %94, i32* %92, align 4
  %95 = call i32 @pRtlTimeToTimeFields(%struct.TYPE_9__* %1, %struct.TYPE_8__* %3)
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 0), align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 1), align 4
  %100 = icmp eq i32 %99, 12
  %101 = zext i1 %100 to i32
  %102 = add nsw i32 %98, %101
  %103 = icmp eq i32 %97, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %40
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 1), align 4
  %108 = srem i32 %107, 12
  %109 = add nsw i32 %108, 1
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %127

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %127

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br label %127

127:                                              ; preds = %123, %119, %115, %111, %104, %40
  %128 = phi i1 [ false, %119 ], [ false, %115 ], [ false, %111 ], [ false, %104 ], [ false, %40 ], [ %126, %123 ]
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 0), align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 1), align 4
  %134 = icmp eq i32 %133, 12
  %135 = zext i1 %134 to i32
  %136 = add nsw i32 %132, %135
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 1), align 4
  %138 = srem i32 %137, 12
  %139 = add nsw i32 %138, 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = call i32 (i32, i8*, i32, i32, i32, i32, i64, i64, i32, ...) @ok(i32 %129, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %136, i32 %139, i32 1, i64 0, i64 0, i32 0, i32 %141, i32 %143, i32 %145, i32 %147, i64 %149, i64 %151)
  %153 = call i32 @pRtlTimeFieldsToTime(%struct.TYPE_8__* %3, %struct.TYPE_9__* %2)
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %155, %157
  %159 = zext i1 %158 to i32
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %173, %175
  %177 = call i32 (i32, i8*, i32, i32, i32, i32, i64, i64, i32, ...) @ok(i32 %159, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %161, i32 %163, i32 %165, i32 %167, i64 %169, i64 %171, i32 %176)
  %178 = load i32, i32* @TICKSPERSEC, align 4
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, %178
  store i32 %181, i32* %179, align 4
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 1), align 4
  %183 = icmp eq i32 %182, 12
  br i1 %183, label %184, label %187

184:                                              ; preds = %127
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 1), align 4
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 0), align 8
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 0), align 8
  br label %190

187:                                              ; preds = %127
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 1), align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 1), align 4
  br label %190

190:                                              ; preds = %187, %184
  %191 = load i32**, i32*** @MonthLengths, align 8
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 0), align 8
  %193 = call i64 @IsLeapYear(i32 %192)
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 1), align 4
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 2), align 8
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tftest, i32 0, i32 2), align 8
  %202 = load i32, i32* @TICKSPERSEC, align 4
  %203 = mul nsw i32 %201, %202
  %204 = load i32, i32* @SECSPERDAY, align 4
  %205 = mul nsw i32 %203, %204
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, %205
  store i32 %208, i32* %206, align 4
  br label %6

209:                                              ; preds = %6
  ret void
}

declare dso_local i32 @pRtlTimeToTimeFields(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i32, i64, i64, i32, ...) #1

declare dso_local i32 @pRtlTimeFieldsToTime(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i64 @IsLeapYear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
