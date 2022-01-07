; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/core/extr_pbuf.c_pbuf_dechain.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/core/extr_pbuf.c_pbuf_dechain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64, i64, %struct.pbuf* }

@.str = private unnamed_addr constant [34 x i8] c"p->tot_len == p->len + q->tot_len\00", align 1
@PBUF_DEBUG = common dso_local global i32 0, align 4
@LWIP_DBG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"pbuf_dechain: unreferencing %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"pbuf_dechain: deallocated %p (as it is no longer referenced)\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"p->tot_len == p->len\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pbuf* @pbuf_dechain(%struct.pbuf* %0) #0 {
  %2 = alloca %struct.pbuf*, align 8
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca i64, align 8
  store %struct.pbuf* %0, %struct.pbuf** %2, align 8
  store i64 1, i64* %4, align 8
  %5 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %6 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i32 0, i32 2
  %7 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  store %struct.pbuf* %7, %struct.pbuf** %3, align 8
  %8 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %9 = icmp ne %struct.pbuf* %8, null
  br i1 %9, label %10, label %58

10:                                               ; preds = %1
  %11 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = icmp eq i64 %13, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %25 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %32 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %34 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %33, i32 0, i32 2
  store %struct.pbuf* null, %struct.pbuf** %34, align 8
  %35 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %36 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %39 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* @PBUF_DEBUG, align 4
  %41 = load i32, i32* @LWIP_DBG_TRACE, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %44 = bitcast %struct.pbuf* %43 to i8*
  %45 = call i32 @LWIP_DEBUGF(i32 %42, i8* %44)
  %46 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %47 = call i64 @pbuf_free(%struct.pbuf* %46)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %10
  %51 = load i32, i32* @PBUF_DEBUG, align 4
  %52 = load i32, i32* @LWIP_DBG_TRACE, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %55 = bitcast %struct.pbuf* %54 to i8*
  %56 = call i32 @LWIP_DEBUGF(i32 %53, i8* %55)
  br label %57

57:                                               ; preds = %50, %10
  br label %58

58:                                               ; preds = %57, %1
  %59 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %60 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %63 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i64, i64* %4, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %73

71:                                               ; preds = %58
  %72 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  br label %73

73:                                               ; preds = %71, %70
  %74 = phi %struct.pbuf* [ null, %70 ], [ %72, %71 ]
  ret %struct.pbuf* %74
}

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i64 @pbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
