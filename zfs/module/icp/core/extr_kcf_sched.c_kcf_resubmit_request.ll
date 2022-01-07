; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_resubmit_request.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_resubmit_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_21__, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__, i32, i32 }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_24__ = type { %struct.TYPE_27__, %struct.TYPE_23__* }
%struct.TYPE_27__ = type { i32*, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_26__ = type { i32 }

@CRYPTO_FAILED = common dso_local global i32 0, align 4
@KM_NOSLEEP = common dso_local global i32 0, align 4
@CRYPTO_RESTRICTED = common dso_local global i32 0, align 4
@REQ_WAITING = common dso_local global i32 0, align 4
@process_req_hwp = common dso_local global i32 0, align 4
@TQ_NOSLEEP = common dso_local global i32 0, align 4
@TASKQID_INVALID = common dso_local global i32 0, align 4
@CRYPTO_HOST_MEMORY = common dso_local global i32 0, align 4
@CRYPTO_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*)* @kcf_resubmit_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcf_resubmit_request(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %15 = load i32, i32* @CRYPTO_FAILED, align 4
  store i32 %15, i32* %4, align 4
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %9, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %17 = call i32 @can_resubmit(%struct.TYPE_25__* %16, %struct.TYPE_26__** %8, %struct.TYPE_26__** %9, i32* %12)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %162

21:                                               ; preds = %1
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  store %struct.TYPE_23__* %24, %struct.TYPE_23__** %6, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %28 = load i32, i32* @KM_NOSLEEP, align 4
  %29 = call i32* @kcf_insert_triedlist(i32* %26, %struct.TYPE_23__* %27, i32 %28)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %162

33:                                               ; preds = %21
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %35 = icmp ne %struct.TYPE_26__* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %38 = icmp ne %struct.TYPE_26__* %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %36
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CRYPTO_RESTRICTED, align 4
  %52 = and i32 %50, %51
  %53 = call %struct.TYPE_23__* @kcf_get_mech_provider(i32 %42, i32* null, i32* %4, i32 %45, i32 %46, i32 %52, i32 0)
  store %struct.TYPE_23__* %53, %struct.TYPE_23__** %7, align 8
  br label %78

54:                                               ; preds = %36, %33
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %56 = icmp ne %struct.TYPE_26__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %59 = icmp ne %struct.TYPE_26__* %58, null
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i1 [ false, %54 ], [ %59, %57 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62)
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @CRYPTO_RESTRICTED, align 4
  %76 = and i32 %74, %75
  %77 = call %struct.TYPE_23__* @kcf_get_dual_provider(%struct.TYPE_26__* %64, %struct.TYPE_26__* %65, i32* null, i32* %10, i32* %11, i32* %4, i32 %68, i32 %69, i32 %70, i32 %76, i32 0)
  store %struct.TYPE_23__* %77, %struct.TYPE_23__** %7, align 8
  br label %78

78:                                               ; preds = %60, %39
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %80 = icmp eq %struct.TYPE_23__* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %162

83:                                               ; preds = %78
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %85, align 8
  store %struct.TYPE_24__* %86, %struct.TYPE_24__** %5, align 8
  %87 = icmp ne %struct.TYPE_24__* %86, null
  br i1 %87, label %88, label %119

88:                                               ; preds = %83
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %91, align 8
  %93 = icmp eq %struct.TYPE_23__* %89, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @ASSERT(i32 %94)
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %97, align 8
  %99 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_23__* %98)
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %101 = call i32 @KCF_PROV_REFHOLD(%struct.TYPE_23__* %100)
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 1
  store %struct.TYPE_23__* %102, %struct.TYPE_23__** %104, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  store %struct.TYPE_27__* %106, %struct.TYPE_27__** %13, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 0
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %88, %83
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %121 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_23__* %120)
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %123 = call i32 @KCF_PROV_REFHOLD(%struct.TYPE_23__* %122)
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 2
  store %struct.TYPE_23__* %124, %struct.TYPE_23__** %126, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 0
  %129 = call i32 @mutex_enter(i32* %128)
  %130 = load i32, i32* @REQ_WAITING, align 4
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  %135 = call i32 @mutex_exit(i32* %134)
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  switch i32 %138, label %159 [
    i32 128, label %139
    i32 129, label %142
  ]

139:                                              ; preds = %119
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %141 = call i32 @kcf_disp_sw_request(%struct.TYPE_25__* %140)
  store i32 %141, i32* %4, align 4
  br label %160

142:                                              ; preds = %119
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  store i32* %146, i32** %14, align 8
  %147 = load i32*, i32** %14, align 8
  %148 = load i32, i32* @process_req_hwp, align 4
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %150 = load i32, i32* @TQ_NOSLEEP, align 4
  %151 = call i32 @taskq_dispatch(i32* %147, i32 %148, %struct.TYPE_25__* %149, i32 %150)
  %152 = load i32, i32* @TASKQID_INVALID, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %142
  %155 = load i32, i32* @CRYPTO_HOST_MEMORY, align 4
  store i32 %155, i32* %4, align 4
  br label %158

156:                                              ; preds = %142
  %157 = load i32, i32* @CRYPTO_QUEUED, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %156, %154
  br label %160

159:                                              ; preds = %119
  br label %160

160:                                              ; preds = %159, %158, %139
  %161 = load i32, i32* %4, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %160, %81, %31, %19
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @can_resubmit(%struct.TYPE_25__*, %struct.TYPE_26__**, %struct.TYPE_26__**, i32*) #1

declare dso_local i32* @kcf_insert_triedlist(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_23__* @kcf_get_mech_provider(i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_23__* @kcf_get_dual_provider(%struct.TYPE_26__*, %struct.TYPE_26__*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @KCF_PROV_REFRELE(%struct.TYPE_23__*) #1

declare dso_local i32 @KCF_PROV_REFHOLD(%struct.TYPE_23__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @kcf_disp_sw_request(%struct.TYPE_25__*) #1

declare dso_local i32 @taskq_dispatch(i32*, i32, %struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
