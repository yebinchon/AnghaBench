; ModuleID = '/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_memcache.c_memcache_pre_coalesce.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_memcache.c_memcache_pre_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i32, i64, i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__*, %struct.msg* }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32*, i32* }

@next = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"rsp fragment with unknown type %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memcache_pre_coalesce(%struct.msg* %0) #0 {
  %2 = alloca %struct.msg*, align 8
  %3 = alloca %struct.msg*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.msg* %0, %struct.msg** %2, align 8
  %5 = load %struct.msg*, %struct.msg** %2, align 8
  %6 = getelementptr inbounds %struct.msg, %struct.msg* %5, i32 0, i32 9
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
  br label %120

24:                                               ; preds = %1
  %25 = load %struct.msg*, %struct.msg** %3, align 8
  %26 = getelementptr inbounds %struct.msg, %struct.msg* %25, i32 0, i32 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.msg*, %struct.msg** %2, align 8
  %32 = getelementptr inbounds %struct.msg, %struct.msg* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %101 [
    i32 128, label %34
    i32 129, label %34
  ]

34:                                               ; preds = %24, %24
  %35 = load %struct.msg*, %struct.msg** %2, align 8
  %36 = getelementptr inbounds %struct.msg, %struct.msg* %35, i32 0, i32 7
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  br label %41

41:                                               ; preds = %87, %34
  %42 = load %struct.msg*, %struct.msg** %2, align 8
  %43 = getelementptr inbounds %struct.msg, %struct.msg* %42, i32 0, i32 5
  %44 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %45 = load i32, i32* @next, align 4
  %46 = call %struct.mbuf* @STAILQ_LAST(i32* %43, %struct.mbuf* %44, i32 %45)
  store %struct.mbuf* %46, %struct.mbuf** %4, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %48 = icmp ne %struct.mbuf* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load %struct.msg*, %struct.msg** %2, align 8
  %52 = getelementptr inbounds %struct.msg, %struct.msg* %51, i32 0, i32 7
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %55 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp uge i32* %53, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %41
  %59 = load %struct.msg*, %struct.msg** %2, align 8
  %60 = getelementptr inbounds %struct.msg, %struct.msg* %59, i32 0, i32 7
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ult i32* %61, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %58
  %67 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.msg*, %struct.msg** %2, align 8
  %71 = getelementptr inbounds %struct.msg, %struct.msg* %70, i32 0, i32 7
  %72 = load i32*, i32** %71, align 8
  %73 = ptrtoint i32* %69 to i64
  %74 = ptrtoint i32* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = load %struct.msg*, %struct.msg** %2, align 8
  %79 = getelementptr inbounds %struct.msg, %struct.msg* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.msg*, %struct.msg** %2, align 8
  %83 = getelementptr inbounds %struct.msg, %struct.msg* %82, i32 0, i32 7
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %86 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %85, i32 0, i32 1
  store i32* %84, i32** %86, align 8
  br label %100

87:                                               ; preds = %58, %41
  %88 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %89 = call i32 @mbuf_length(%struct.mbuf* %88)
  %90 = load %struct.msg*, %struct.msg** %2, align 8
  %91 = getelementptr inbounds %struct.msg, %struct.msg* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.msg*, %struct.msg** %2, align 8
  %95 = getelementptr inbounds %struct.msg, %struct.msg* %94, i32 0, i32 5
  %96 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %97 = call i32 @mbuf_remove(i32* %95, %struct.mbuf* %96)
  %98 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %99 = call i32 @mbuf_put(%struct.mbuf* %98)
  br label %41

100:                                              ; preds = %66
  br label %120

101:                                              ; preds = %24
  %102 = load %struct.msg*, %struct.msg** %2, align 8
  %103 = getelementptr inbounds %struct.msg, %struct.msg* %102, i32 0, i32 5
  %104 = call %struct.mbuf* @STAILQ_FIRST(i32* %103)
  store %struct.mbuf* %104, %struct.mbuf** %4, align 8
  %105 = load i32, i32* @LOG_ERR, align 4
  %106 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %107 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %110 = call i32 @mbuf_length(%struct.mbuf* %109)
  %111 = load %struct.msg*, %struct.msg** %2, align 8
  %112 = getelementptr inbounds %struct.msg, %struct.msg* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @log_hexdump(i32 %105, i32* %108, i32 %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %113)
  %115 = load %struct.msg*, %struct.msg** %3, align 8
  %116 = getelementptr inbounds %struct.msg, %struct.msg* %115, i32 0, i32 3
  store i32 1, i32* %116, align 4
  %117 = load i32, i32* @EINVAL, align 4
  %118 = load %struct.msg*, %struct.msg** %3, align 8
  %119 = getelementptr inbounds %struct.msg, %struct.msg* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %23, %101, %100
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.mbuf* @STAILQ_LAST(i32*, %struct.mbuf*, i32) #1

declare dso_local i32 @mbuf_length(%struct.mbuf*) #1

declare dso_local i32 @mbuf_remove(i32*, %struct.mbuf*) #1

declare dso_local i32 @mbuf_put(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @log_hexdump(i32, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
