; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_aop_done.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_aop_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__, i8*, i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32, i32*, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }

@B_FALSE = common dso_local global i8* null, align 8
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@CRYPTO_QUEUED = common dso_local global i64 0, align 8
@REQ_DONE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@CRYPTO_NOTIFY_OPDONE = common dso_local global i32 0, align 4
@CRYPTO_SKIP_REQID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kcf_aop_done(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** @B_FALSE, align 8
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @IS_RECOVERABLE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = call i64 @kcf_resubmit_request(%struct.TYPE_17__* %20)
  %22 = load i64, i64* @CRYPTO_QUEUED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %171

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %15, %2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  %29 = call i32 @mutex_enter(i32* %28)
  %30 = load i32, i32* @REQ_DONE, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 2
  %35 = call i32 @mutex_exit(i32* %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 7
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %5, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 6
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %7, align 8
  %43 = icmp ne %struct.TYPE_16__* %42, null
  br i1 %43, label %44, label %106

44:                                               ; preds = %26
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = call i32 @mutex_enter(i32* %46)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 5
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  store %struct.TYPE_17__* %50, %struct.TYPE_17__** %8, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %52 = icmp ne %struct.TYPE_17__* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %44
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %56 = call i32 @mutex_enter(i32* %55)
  %57 = load i32, i32* @B_TRUE, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 3
  %62 = call i32 @cv_signal(i32* %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 2
  %65 = call i32 @mutex_exit(i32* %64)
  br label %66

66:                                               ; preds = %53, %44
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  store %struct.TYPE_17__* %67, %struct.TYPE_17__** %69, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = icmp eq %struct.TYPE_17__* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %72, %66
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = call i32 @mutex_exit(i32* %77)
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @IS_SINGLE_OP(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* %5, align 4
  %84 = call i64 @IS_FINAL_OP(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82, %75
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %88 = icmp eq %struct.TYPE_17__* %87, null
  %89 = zext i1 %88 to i32
  %90 = call i32 @ASSERT(i32 %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %92 = call i32 @KCF_CONTEXT_REFRELE(%struct.TYPE_16__* %91)
  br label %105

93:                                               ; preds = %82
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i32, i32* %5, align 4
  %99 = call i64 @IS_INIT_OP(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %103 = call i32 @KCF_CONTEXT_REFRELE(%struct.TYPE_16__* %102)
  br label %104

104:                                              ; preds = %101, %97, %93
  br label %105

105:                                              ; preds = %104, %86
  br label %106

106:                                              ; preds = %105, %26
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %116, %struct.TYPE_15__** %9, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  store %struct.TYPE_17__* %117, %struct.TYPE_17__** %119, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %121 = call i32 @KCF_AREQ_REFHOLD(%struct.TYPE_17__* %120)
  %122 = load i8*, i8** @B_FALSE, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @NOTIFY_CLIENT(%struct.TYPE_17__* %125, i32 %126)
  br label %171

128:                                              ; preds = %106
  %129 = load i32, i32* %5, align 4
  %130 = call i64 @IS_UPDATE_OP(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %5, align 4
  %134 = call i64 @IS_INIT_OP(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %132, %128
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @CRYPTO_NOTIFY_OPDONE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %147 = icmp eq i32 %145, %146
  br label %148

148:                                              ; preds = %144, %136, %132
  %149 = phi i1 [ false, %136 ], [ false, %132 ], [ %147, %144 ]
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %148
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @NOTIFY_CLIENT(%struct.TYPE_17__* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %148
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @CRYPTO_SKIP_REQID, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %157
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %167 = call i32 @kcf_reqid_delete(%struct.TYPE_17__* %166)
  br label %168

168:                                              ; preds = %165, %157
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %170 = call i32 @KCF_AREQ_REFRELE(%struct.TYPE_17__* %169)
  br label %171

171:                                              ; preds = %168, %111, %24
  ret void
}

declare dso_local i64 @IS_RECOVERABLE(i32) #1

declare dso_local i64 @kcf_resubmit_request(%struct.TYPE_17__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i64 @IS_SINGLE_OP(i32) #1

declare dso_local i64 @IS_FINAL_OP(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @KCF_CONTEXT_REFRELE(%struct.TYPE_16__*) #1

declare dso_local i64 @IS_INIT_OP(i32) #1

declare dso_local i32 @KCF_AREQ_REFHOLD(%struct.TYPE_17__*) #1

declare dso_local i32 @NOTIFY_CLIENT(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @IS_UPDATE_OP(i32) #1

declare dso_local i32 @kcf_reqid_delete(%struct.TYPE_17__*) #1

declare dso_local i32 @KCF_AREQ_REFRELE(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
