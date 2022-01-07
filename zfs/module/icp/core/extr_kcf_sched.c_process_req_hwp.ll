; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_process_req_hwp.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_process_req_hwp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i32, i32, i8*, i32, %struct.TYPE_14__*, i32*, %struct.TYPE_11__*, i32, i8* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }

@CRYPTO_SYNCH = common dso_local global i64 0, align 8
@KCF_PROV_BUSY = common dso_local global i64 0, align 8
@KCF_PROV_FAILED = common dso_local global i64 0, align 8
@CRYPTO_DEVICE_ERROR = common dso_local global i32 0, align 4
@REQ_INPROGRESS = common dso_local global i8* null, align 8
@CRYPTO_ASYNCH = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i64 0, align 8
@CRYPTO_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @process_req_hwp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_req_hwp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %7, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %8, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @GET_REQ_TYPE(i8* %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* @CRYPTO_SYNCH, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i64 [ %21, %18 ], [ %25, %22 ]
  %28 = inttoptr i64 %27 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %6, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @KCF_PROV_BUSY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %26
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = call i32 @mutex_enter(i32* %36)
  br label %38

38:                                               ; preds = %44, %34
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @KCF_PROV_BUSY, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = call i32 @cv_wait(i32* %46, i32* %48)
  br label %38

50:                                               ; preds = %38
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = call i32 @mutex_exit(i32* %52)
  br label %54

54:                                               ; preds = %50, %26
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = call i32 @KCF_PROV_IREFHOLD(%struct.TYPE_13__* %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @KCF_PROV_FAILED, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @CRYPTO_DEVICE_ERROR, align 4
  store i32 %63, i32* %3, align 4
  br label %159

64:                                               ; preds = %54
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @CRYPTO_SYNCH, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %99

68:                                               ; preds = %64
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 10
  %71 = call i32 @mutex_enter(i32* %70)
  %72 = load i8*, i8** @REQ_INPROGRESS, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 11
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 10
  %77 = call i32 @mutex_exit(i32* %76)
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 9
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = icmp ne %struct.TYPE_11__* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %68
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 9
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  br label %88

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87, %82
  %89 = phi i32* [ %86, %82 ], [ null, %87 ]
  store i32* %89, i32** %4, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 8
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %98 = call i32 @common_submit_request(i64 %92, i32* %93, i32* %96, %struct.TYPE_12__* %97)
  store i32 %98, i32* %3, align 4
  br label %158

99:                                               ; preds = %64
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* @CRYPTO_ASYNCH, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @ASSERT(i32 %103)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 7
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  store %struct.TYPE_14__* %107, %struct.TYPE_14__** %9, align 8
  %108 = icmp ne %struct.TYPE_14__* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %99
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  br label %113

112:                                              ; preds = %99
  br label %113

113:                                              ; preds = %112, %109
  %114 = phi i32* [ %111, %109 ], [ null, %112 ]
  store i32* %114, i32** %4, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 4
  %117 = call i32 @mutex_enter(i32* %116)
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %119 = icmp ne %struct.TYPE_14__* %118, null
  br i1 %119, label %120, label %143

120:                                              ; preds = %113
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %123, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @ASSERT(i32 %128)
  br label %130

130:                                              ; preds = %136, %120
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @B_FALSE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 6
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 4
  %141 = call i32 @cv_wait(i32* %138, i32* %140)
  br label %130

142:                                              ; preds = %130
  br label %143

143:                                              ; preds = %142, %113
  %144 = load i8*, i8** @REQ_INPROGRESS, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 5
  store i8* %144, i8** %146, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 4
  %149 = call i32 @mutex_exit(i32* %148)
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i32*, i32** %4, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %157 = call i32 @common_submit_request(i64 %152, i32* %153, i32* %155, %struct.TYPE_12__* %156)
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %143, %88
  br label %159

159:                                              ; preds = %158, %62
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* @CRYPTO_QUEUED, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %179

164:                                              ; preds = %159
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %166 = call i32 @KCF_PROV_IREFRELE(%struct.TYPE_13__* %165)
  %167 = load i64, i64* %5, align 8
  %168 = load i64, i64* @CRYPTO_SYNCH, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @kcf_sop_done(%struct.TYPE_12__* %171, i32 %172)
  br label %178

174:                                              ; preds = %164
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %176 = load i32, i32* %3, align 4
  %177 = call i32 @kcf_aop_done(%struct.TYPE_12__* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %170
  br label %179

179:                                              ; preds = %163, %178
  ret void
}

declare dso_local i64 @GET_REQ_TYPE(i8*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @KCF_PROV_IREFHOLD(%struct.TYPE_13__*) #1

declare dso_local i32 @common_submit_request(i64, i32*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @KCF_PROV_IREFRELE(%struct.TYPE_13__*) #1

declare dso_local i32 @kcf_sop_done(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @kcf_aop_done(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
