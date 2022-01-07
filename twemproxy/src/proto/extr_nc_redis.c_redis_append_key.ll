; ModuleID = '/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_append_key.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_append_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i32, i32 }
%struct.mbuf = type { i64 }
%struct.keypos = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"$%d\0D\0A\00", align 1
@NC_ENOMEM = common dso_local global i32 0, align 4
@CRLF_LEN = common dso_local global i64 0, align 8
@CRLF = common dso_local global i64 0, align 8
@NC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg*, i32*, i64)* @redis_append_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_append_key(%struct.msg* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msg*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca [32 x i32], align 16
  %11 = alloca %struct.keypos*, align 8
  store %struct.msg* %0, %struct.msg** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @nc_snprintf(i32* %12, i32 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.msg*, %struct.msg** %5, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call %struct.mbuf* @msg_ensure_mbuf(%struct.msg* %15, i64 %16)
  store %struct.mbuf* %17, %struct.mbuf** %9, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %19 = icmp eq %struct.mbuf* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %21, i32* %4, align 4
  br label %95

22:                                               ; preds = %3
  %23 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @mbuf_copy(%struct.mbuf* %23, i32* %24, i64 %25)
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.msg*, %struct.msg** %5, align 8
  %29 = getelementptr inbounds %struct.msg, %struct.msg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load %struct.msg*, %struct.msg** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call %struct.mbuf* @msg_ensure_mbuf(%struct.msg* %34, i64 %35)
  store %struct.mbuf* %36, %struct.mbuf** %9, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %38 = icmp eq %struct.mbuf* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %22
  %40 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %40, i32* %4, align 4
  br label %95

41:                                               ; preds = %22
  %42 = load %struct.msg*, %struct.msg** %5, align 8
  %43 = getelementptr inbounds %struct.msg, %struct.msg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.keypos* @array_push(i32 %44)
  store %struct.keypos* %45, %struct.keypos** %11, align 8
  %46 = load %struct.keypos*, %struct.keypos** %11, align 8
  %47 = icmp eq %struct.keypos* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %49, i32* %4, align 4
  br label %95

50:                                               ; preds = %41
  %51 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %52 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.keypos*, %struct.keypos** %11, align 8
  %55 = getelementptr inbounds %struct.keypos, %struct.keypos* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 %58, %59
  %61 = load %struct.keypos*, %struct.keypos** %11, align 8
  %62 = getelementptr inbounds %struct.keypos, %struct.keypos* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @mbuf_copy(%struct.mbuf* %63, i32* %64, i64 %65)
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.msg*, %struct.msg** %5, align 8
  %69 = getelementptr inbounds %struct.msg, %struct.msg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load %struct.msg*, %struct.msg** %5, align 8
  %75 = load i64, i64* @CRLF_LEN, align 8
  %76 = call %struct.mbuf* @msg_ensure_mbuf(%struct.msg* %74, i64 %75)
  store %struct.mbuf* %76, %struct.mbuf** %9, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %78 = icmp eq %struct.mbuf* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %50
  %80 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %80, i32* %4, align 4
  br label %95

81:                                               ; preds = %50
  %82 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %83 = load i64, i64* @CRLF, align 8
  %84 = inttoptr i64 %83 to i32*
  %85 = load i64, i64* @CRLF_LEN, align 8
  %86 = call i32 @mbuf_copy(%struct.mbuf* %82, i32* %84, i64 %85)
  %87 = load i64, i64* @CRLF_LEN, align 8
  %88 = load %struct.msg*, %struct.msg** %5, align 8
  %89 = getelementptr inbounds %struct.msg, %struct.msg* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %87
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 4
  %94 = load i32, i32* @NC_OK, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %81, %79, %48, %39, %20
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i64 @nc_snprintf(i32*, i32, i8*, i64) #1

declare dso_local %struct.mbuf* @msg_ensure_mbuf(%struct.msg*, i64) #1

declare dso_local i32 @mbuf_copy(%struct.mbuf*, i32*, i64) #1

declare dso_local %struct.keypos* @array_push(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
