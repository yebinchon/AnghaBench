; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_response.c_rsp_forward.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_response.c_rsp_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { i32, i32, i32, i32, i64, i32 (%struct.context*, %struct.conn*, %struct.msg*)* }
%struct.msg = type { i32, %struct.conn*, i32 (%struct.msg*)*, %struct.msg*, i64, i32 }

@NC_OK = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.conn*, %struct.msg*)* @rsp_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsp_forward(%struct.context* %0, %struct.conn* %1, %struct.msg* %2) #0 {
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.conn*, align 8
  %6 = alloca %struct.msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.msg*, align 8
  %9 = alloca %struct.conn*, align 8
  %10 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %4, align 8
  store %struct.conn* %1, %struct.conn** %5, align 8
  store %struct.msg* %2, %struct.msg** %6, align 8
  %11 = load %struct.conn*, %struct.conn** %5, align 8
  %12 = getelementptr inbounds %struct.conn, %struct.conn* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.conn*, %struct.conn** %5, align 8
  %17 = getelementptr inbounds %struct.conn, %struct.conn* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i1 [ false, %3 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.msg*, %struct.msg** %6, align 8
  %26 = getelementptr inbounds %struct.msg, %struct.msg* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.context*, %struct.context** %4, align 8
  %29 = load %struct.conn*, %struct.conn** %5, align 8
  %30 = call i32 @server_ok(%struct.context* %28, %struct.conn* %29)
  %31 = load %struct.conn*, %struct.conn** %5, align 8
  %32 = getelementptr inbounds %struct.conn, %struct.conn* %31, i32 0, i32 2
  %33 = call %struct.msg* @TAILQ_FIRST(i32* %32)
  store %struct.msg* %33, %struct.msg** %8, align 8
  %34 = load %struct.msg*, %struct.msg** %8, align 8
  %35 = icmp ne %struct.msg* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct.msg*, %struct.msg** %8, align 8
  %38 = getelementptr inbounds %struct.msg, %struct.msg* %37, i32 0, i32 3
  %39 = load %struct.msg*, %struct.msg** %38, align 8
  %40 = icmp eq %struct.msg* %39, null
  br label %41

41:                                               ; preds = %36, %21
  %42 = phi i1 [ false, %21 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load %struct.msg*, %struct.msg** %8, align 8
  %46 = getelementptr inbounds %struct.msg, %struct.msg* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.msg*, %struct.msg** %8, align 8
  %51 = getelementptr inbounds %struct.msg, %struct.msg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %49, %41
  %56 = phi i1 [ false, %41 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load %struct.conn*, %struct.conn** %5, align 8
  %60 = getelementptr inbounds %struct.conn, %struct.conn* %59, i32 0, i32 5
  %61 = load i32 (%struct.context*, %struct.conn*, %struct.msg*)*, i32 (%struct.context*, %struct.conn*, %struct.msg*)** %60, align 8
  %62 = load %struct.context*, %struct.context** %4, align 8
  %63 = load %struct.conn*, %struct.conn** %5, align 8
  %64 = load %struct.msg*, %struct.msg** %8, align 8
  %65 = call i32 %61(%struct.context* %62, %struct.conn* %63, %struct.msg* %64)
  %66 = load %struct.msg*, %struct.msg** %8, align 8
  %67 = getelementptr inbounds %struct.msg, %struct.msg* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.msg*, %struct.msg** %6, align 8
  %69 = load %struct.msg*, %struct.msg** %8, align 8
  %70 = getelementptr inbounds %struct.msg, %struct.msg* %69, i32 0, i32 3
  store %struct.msg* %68, %struct.msg** %70, align 8
  %71 = load %struct.msg*, %struct.msg** %8, align 8
  %72 = load %struct.msg*, %struct.msg** %6, align 8
  %73 = getelementptr inbounds %struct.msg, %struct.msg* %72, i32 0, i32 3
  store %struct.msg* %71, %struct.msg** %73, align 8
  %74 = load %struct.msg*, %struct.msg** %6, align 8
  %75 = getelementptr inbounds %struct.msg, %struct.msg* %74, i32 0, i32 2
  %76 = load i32 (%struct.msg*)*, i32 (%struct.msg*)** %75, align 8
  %77 = load %struct.msg*, %struct.msg** %6, align 8
  %78 = call i32 %76(%struct.msg* %77)
  %79 = load %struct.msg*, %struct.msg** %8, align 8
  %80 = getelementptr inbounds %struct.msg, %struct.msg* %79, i32 0, i32 1
  %81 = load %struct.conn*, %struct.conn** %80, align 8
  store %struct.conn* %81, %struct.conn** %9, align 8
  %82 = load %struct.conn*, %struct.conn** %9, align 8
  %83 = getelementptr inbounds %struct.conn, %struct.conn* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %55
  %87 = load %struct.conn*, %struct.conn** %9, align 8
  %88 = getelementptr inbounds %struct.conn, %struct.conn* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br label %92

92:                                               ; preds = %86, %55
  %93 = phi i1 [ false, %55 ], [ %91, %86 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @ASSERT(i32 %94)
  %96 = load %struct.conn*, %struct.conn** %9, align 8
  %97 = load %struct.conn*, %struct.conn** %9, align 8
  %98 = getelementptr inbounds %struct.conn, %struct.conn* %97, i32 0, i32 2
  %99 = call %struct.msg* @TAILQ_FIRST(i32* %98)
  %100 = call i64 @req_done(%struct.conn* %96, %struct.msg* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %92
  %103 = load %struct.context*, %struct.context** %4, align 8
  %104 = getelementptr inbounds %struct.context, %struct.context* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.conn*, %struct.conn** %9, align 8
  %107 = call i64 @event_add_out(i32 %105, %struct.conn* %106)
  store i64 %107, i64* %7, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* @NC_OK, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  %112 = load i32, i32* @errno, align 4
  %113 = load %struct.conn*, %struct.conn** %9, align 8
  %114 = getelementptr inbounds %struct.conn, %struct.conn* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %111, %102
  br label %116

116:                                              ; preds = %115, %92
  %117 = load %struct.context*, %struct.context** %4, align 8
  %118 = load %struct.conn*, %struct.conn** %5, align 8
  %119 = getelementptr inbounds %struct.conn, %struct.conn* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.msg*, %struct.msg** %6, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @rsp_forward_stats(%struct.context* %117, i32 %120, %struct.msg* %121, i32 %122)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @server_ok(%struct.context*, %struct.conn*) #1

declare dso_local %struct.msg* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @req_done(%struct.conn*, %struct.msg*) #1

declare dso_local i64 @event_add_out(i32, %struct.conn*) #1

declare dso_local i32 @rsp_forward_stats(%struct.context*, i32, %struct.msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
