; ModuleID = '/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_pre_coalesce.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_pre_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i32, i64, i32, i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_2__*, %struct.msg* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mbuf = type { i64 }

@MSG_REQ_REDIS_DEL = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@MSG_REQ_REDIS_MGET = common dso_local global i32 0, align 4
@CRLF_LEN = common dso_local global i64 0, align 8
@MSG_REQ_REDIS_MSET = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"rsp fragment with unknown type %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redis_pre_coalesce(%struct.msg* %0) #0 {
  %2 = alloca %struct.msg*, align 8
  %3 = alloca %struct.msg*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.msg* %0, %struct.msg** %2, align 8
  %5 = load %struct.msg*, %struct.msg** %2, align 8
  %6 = getelementptr inbounds %struct.msg, %struct.msg* %5, i32 0, i32 11
  %7 = load %struct.msg*, %struct.msg** %6, align 8
  store %struct.msg* %7, %struct.msg** %3, align 8
  %8 = load %struct.msg*, %struct.msg** %2, align 8
  %9 = getelementptr inbounds %struct.msg, %struct.msg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.msg*, %struct.msg** %3, align 8
  %16 = getelementptr inbounds %struct.msg, %struct.msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.msg*, %struct.msg** %3, align 8
  %20 = getelementptr inbounds %struct.msg, %struct.msg* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %168

24:                                               ; preds = %1
  %25 = load %struct.msg*, %struct.msg** %3, align 8
  %26 = getelementptr inbounds %struct.msg, %struct.msg* %25, i32 0, i32 10
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.msg*, %struct.msg** %2, align 8
  %32 = getelementptr inbounds %struct.msg, %struct.msg* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %149 [
    i32 130, label %34
    i32 129, label %79
    i32 128, label %130
  ]

34:                                               ; preds = %24
  %35 = load %struct.msg*, %struct.msg** %3, align 8
  %36 = getelementptr inbounds %struct.msg, %struct.msg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MSG_REQ_REDIS_DEL, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.msg*, %struct.msg** %2, align 8
  %43 = getelementptr inbounds %struct.msg, %struct.msg* %42, i32 0, i32 5
  %44 = call %struct.mbuf* @STAILQ_FIRST(i32* %43)
  store %struct.mbuf* %44, %struct.mbuf** %4, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %46 = load %struct.msg*, %struct.msg** %2, align 8
  %47 = getelementptr inbounds %struct.msg, %struct.msg* %46, i32 0, i32 5
  %48 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %49 = load i32, i32* @next, align 4
  %50 = call %struct.mbuf* @STAILQ_LAST(i32* %47, %struct.mbuf* %48, i32 %49)
  %51 = icmp eq %struct.mbuf* %45, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load %struct.msg*, %struct.msg** %2, align 8
  %55 = getelementptr inbounds %struct.msg, %struct.msg* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %58 = call i32 @mbuf_length(%struct.mbuf* %57)
  %59 = icmp eq i32 %56, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  %62 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %63 = call i32 @mbuf_length(%struct.mbuf* %62)
  %64 = load %struct.msg*, %struct.msg** %2, align 8
  %65 = getelementptr inbounds %struct.msg, %struct.msg* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %69 = call i32 @mbuf_rewind(%struct.mbuf* %68)
  %70 = load %struct.msg*, %struct.msg** %2, align 8
  %71 = getelementptr inbounds %struct.msg, %struct.msg* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.msg*, %struct.msg** %3, align 8
  %74 = getelementptr inbounds %struct.msg, %struct.msg* %73, i32 0, i32 10
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %72
  store i32 %78, i32* %76, align 4
  br label %168

79:                                               ; preds = %24
  %80 = load %struct.msg*, %struct.msg** %3, align 8
  %81 = getelementptr inbounds %struct.msg, %struct.msg* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MSG_REQ_REDIS_MGET, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @ASSERT(i32 %85)
  %87 = load %struct.msg*, %struct.msg** %2, align 8
  %88 = getelementptr inbounds %struct.msg, %struct.msg* %87, i32 0, i32 5
  %89 = call %struct.mbuf* @STAILQ_FIRST(i32* %88)
  store %struct.mbuf* %89, %struct.mbuf** %4, align 8
  %90 = load %struct.msg*, %struct.msg** %2, align 8
  %91 = getelementptr inbounds %struct.msg, %struct.msg* %90, i32 0, i32 8
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %94 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %92, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @ASSERT(i32 %97)
  %99 = load %struct.msg*, %struct.msg** %2, align 8
  %100 = getelementptr inbounds %struct.msg, %struct.msg* %99, i32 0, i32 8
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.msg*, %struct.msg** %2, align 8
  %103 = getelementptr inbounds %struct.msg, %struct.msg* %102, i32 0, i32 7
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %101, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @ASSERT(i32 %106)
  %108 = load i64, i64* @CRLF_LEN, align 8
  %109 = load %struct.msg*, %struct.msg** %2, align 8
  %110 = getelementptr inbounds %struct.msg, %struct.msg* %109, i32 0, i32 7
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, %108
  store i64 %112, i64* %110, align 8
  %113 = load %struct.msg*, %struct.msg** %2, align 8
  %114 = getelementptr inbounds %struct.msg, %struct.msg* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.msg*, %struct.msg** %2, align 8
  %117 = getelementptr inbounds %struct.msg, %struct.msg* %116, i32 0, i32 8
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %115, %118
  %120 = trunc i64 %119 to i32
  %121 = load %struct.msg*, %struct.msg** %2, align 8
  %122 = getelementptr inbounds %struct.msg, %struct.msg* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.msg*, %struct.msg** %2, align 8
  %126 = getelementptr inbounds %struct.msg, %struct.msg* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %129 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  br label %168

130:                                              ; preds = %24
  %131 = load %struct.msg*, %struct.msg** %3, align 8
  %132 = getelementptr inbounds %struct.msg, %struct.msg* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @MSG_REQ_REDIS_MSET, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %130
  %137 = load %struct.msg*, %struct.msg** %2, align 8
  %138 = getelementptr inbounds %struct.msg, %struct.msg* %137, i32 0, i32 5
  %139 = call %struct.mbuf* @STAILQ_FIRST(i32* %138)
  store %struct.mbuf* %139, %struct.mbuf** %4, align 8
  %140 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %141 = call i32 @mbuf_length(%struct.mbuf* %140)
  %142 = load %struct.msg*, %struct.msg** %2, align 8
  %143 = getelementptr inbounds %struct.msg, %struct.msg* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %147 = call i32 @mbuf_rewind(%struct.mbuf* %146)
  br label %148

148:                                              ; preds = %136, %130
  br label %168

149:                                              ; preds = %24
  %150 = load %struct.msg*, %struct.msg** %2, align 8
  %151 = getelementptr inbounds %struct.msg, %struct.msg* %150, i32 0, i32 5
  %152 = call %struct.mbuf* @STAILQ_FIRST(i32* %151)
  store %struct.mbuf* %152, %struct.mbuf** %4, align 8
  %153 = load i32, i32* @LOG_ERR, align 4
  %154 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %155 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %158 = call i32 @mbuf_length(%struct.mbuf* %157)
  %159 = load %struct.msg*, %struct.msg** %2, align 8
  %160 = getelementptr inbounds %struct.msg, %struct.msg* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @log_hexdump(i32 %153, i64 %156, i32 %158, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %161)
  %163 = load %struct.msg*, %struct.msg** %3, align 8
  %164 = getelementptr inbounds %struct.msg, %struct.msg* %163, i32 0, i32 3
  store i32 1, i32* %164, align 4
  %165 = load i32, i32* @EINVAL, align 4
  %166 = load %struct.msg*, %struct.msg** %3, align 8
  %167 = getelementptr inbounds %struct.msg, %struct.msg* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 8
  br label %168

168:                                              ; preds = %23, %149, %148, %79, %34
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.mbuf* @STAILQ_FIRST(i32*) #1

declare dso_local %struct.mbuf* @STAILQ_LAST(i32*, %struct.mbuf*, i32) #1

declare dso_local i32 @mbuf_length(%struct.mbuf*) #1

declare dso_local i32 @mbuf_rewind(%struct.mbuf*) #1

declare dso_local i32 @log_hexdump(i32, i64, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
