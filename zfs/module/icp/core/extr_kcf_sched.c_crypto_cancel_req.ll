; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_crypto_cancel_req.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_crypto_cancel_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i32, i32, i32*, i32, %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@kcf_reqid_table = common dso_local global %struct.TYPE_12__** null, align 8
@REQID_TABLE_MASK = common dso_local global i64 0, align 8
@gswq = common dso_local global %struct.TYPE_15__* null, align 8
@REQ_WAITING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto_cancel_req(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @kcf_reqid_table, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @REQID_TABLE_MASK, align 8
  %11 = and i64 %9, %10
  %12 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %8, i64 %11
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %7, align 8
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @REQID_HASH(i64 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = call i32 @mutex_enter(i32* %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %21, i64 %23
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %4, align 8
  br label %26

26:                                               ; preds = %109, %1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = icmp ne %struct.TYPE_14__* %27, null
  br i1 %28, label %29, label %113

29:                                               ; preds = %26
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = call i64 @GET_REQID(%struct.TYPE_14__* %30)
  %32 = load i64, i64* %2, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %108

34:                                               ; preds = %29
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %5, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = icmp ne %struct.TYPE_13__* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %90 [
    i32 128, label %45
    i32 129, label %89
  ]

45:                                               ; preds = %34
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** @gswq, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = call i32 @mutex_enter(i32* %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = call i32 @mutex_enter(i32* %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @REQ_WAITING, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %45
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = call i32 @kcf_remove_node(%struct.TYPE_14__* %58)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %6, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = call i32 @kcf_removereq_in_ctxchain(i32* %65, %struct.TYPE_14__* %66)
  br label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = call i32 @mutex_exit(i32* %70)
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** @gswq, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = call i32 @mutex_exit(i32* %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = call i32 @mutex_exit(i32* %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = call i32 @kcf_reqid_delete(%struct.TYPE_14__* %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %81 = call i32 @KCF_AREQ_REFRELE(%struct.TYPE_14__* %80)
  br label %117

82:                                               ; preds = %45
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = call i32 @mutex_exit(i32* %84)
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** @gswq, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = call i32 @mutex_exit(i32* %87)
  br label %91

89:                                               ; preds = %34
  br label %91

90:                                               ; preds = %34
  br label %91

91:                                               ; preds = %90, %89, %82
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = call i32 @KCF_AREQ_REFHOLD(%struct.TYPE_14__* %92)
  br label %94

94:                                               ; preds = %99, %91
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %96 = call i64 @GET_REQID(%struct.TYPE_14__* %95)
  %97 = load i64, i64* %2, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = call i32 @cv_wait(i32* %101, i32* %103)
  br label %94

105:                                              ; preds = %94
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = call i32 @KCF_AREQ_REFRELE(%struct.TYPE_14__* %106)
  br label %113

108:                                              ; preds = %29
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 5
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  store %struct.TYPE_14__* %112, %struct.TYPE_14__** %4, align 8
  br label %26

113:                                              ; preds = %105, %26
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = call i32 @mutex_exit(i32* %115)
  br label %117

117:                                              ; preds = %113, %68
  ret void
}

declare dso_local i32 @REQID_HASH(i64) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @GET_REQID(%struct.TYPE_14__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @kcf_remove_node(%struct.TYPE_14__*) #1

declare dso_local i32 @kcf_removereq_in_ctxchain(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @kcf_reqid_delete(%struct.TYPE_14__*) #1

declare dso_local i32 @KCF_AREQ_REFRELE(%struct.TYPE_14__*) #1

declare dso_local i32 @KCF_AREQ_REFHOLD(%struct.TYPE_14__*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
