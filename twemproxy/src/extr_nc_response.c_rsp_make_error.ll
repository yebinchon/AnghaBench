; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_response.c_rsp_make_error.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_response.c_rsp_make_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { i32, i32 (%struct.context*, %struct.conn*, %struct.msg*)*, i32, i64 }
%struct.msg = type { i64, i64, %struct.msg*, i64, %struct.conn* }

@c_tqe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msg* (%struct.context*, %struct.conn*, %struct.msg*)* @rsp_make_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msg* @rsp_make_error(%struct.context* %0, %struct.conn* %1, %struct.msg* %2) #0 {
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.conn*, align 8
  %6 = alloca %struct.msg*, align 8
  %7 = alloca %struct.msg*, align 8
  %8 = alloca %struct.msg*, align 8
  %9 = alloca %struct.msg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.context* %0, %struct.context** %4, align 8
  store %struct.conn* %1, %struct.conn** %5, align 8
  store %struct.msg* %2, %struct.msg** %6, align 8
  %12 = load %struct.conn*, %struct.conn** %5, align 8
  %13 = getelementptr inbounds %struct.conn, %struct.conn* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.conn*, %struct.conn** %5, align 8
  %18 = getelementptr inbounds %struct.conn, %struct.conn* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %16, %3
  %23 = phi i1 [ false, %3 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.msg*, %struct.msg** %6, align 8
  %27 = getelementptr inbounds %struct.msg, %struct.msg* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.conn*, %struct.conn** %5, align 8
  %32 = load %struct.msg*, %struct.msg** %6, align 8
  %33 = call i64 @req_error(%struct.conn* %31, %struct.msg* %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %30, %22
  %36 = phi i1 [ false, %22 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.msg*, %struct.msg** %6, align 8
  %40 = getelementptr inbounds %struct.msg, %struct.msg* %39, i32 0, i32 4
  %41 = load %struct.conn*, %struct.conn** %40, align 8
  %42 = load %struct.conn*, %struct.conn** %5, align 8
  %43 = icmp eq %struct.conn* %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load %struct.msg*, %struct.msg** %6, align 8
  %47 = getelementptr inbounds %struct.msg, %struct.msg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %94

51:                                               ; preds = %35
  store i64 0, i64* %11, align 8
  %52 = load %struct.msg*, %struct.msg** %6, align 8
  %53 = load i32, i32* @c_tqe, align 4
  %54 = call %struct.msg* @TAILQ_NEXT(%struct.msg* %52, i32 %53)
  store %struct.msg* %54, %struct.msg** %8, align 8
  br label %55

55:                                               ; preds = %91, %51
  %56 = load %struct.msg*, %struct.msg** %8, align 8
  %57 = icmp ne %struct.msg* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.msg*, %struct.msg** %8, align 8
  %60 = getelementptr inbounds %struct.msg, %struct.msg* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp eq i64 %61, %62
  br label %64

64:                                               ; preds = %58, %55
  %65 = phi i1 [ false, %55 ], [ %63, %58 ]
  br i1 %65, label %66, label %93

66:                                               ; preds = %64
  %67 = load %struct.msg*, %struct.msg** %8, align 8
  %68 = load i32, i32* @c_tqe, align 4
  %69 = call %struct.msg* @TAILQ_NEXT(%struct.msg* %67, i32 %68)
  store %struct.msg* %69, %struct.msg** %9, align 8
  %70 = load %struct.conn*, %struct.conn** %5, align 8
  %71 = getelementptr inbounds %struct.conn, %struct.conn* %70, i32 0, i32 1
  %72 = load i32 (%struct.context*, %struct.conn*, %struct.msg*)*, i32 (%struct.context*, %struct.conn*, %struct.msg*)** %71, align 8
  %73 = load %struct.context*, %struct.context** %4, align 8
  %74 = load %struct.conn*, %struct.conn** %5, align 8
  %75 = load %struct.msg*, %struct.msg** %8, align 8
  %76 = call i32 %72(%struct.context* %73, %struct.conn* %74, %struct.msg* %75)
  %77 = load i64, i64* %11, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %66
  %80 = load %struct.msg*, %struct.msg** %8, align 8
  %81 = getelementptr inbounds %struct.msg, %struct.msg* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.msg*, %struct.msg** %8, align 8
  %86 = getelementptr inbounds %struct.msg, %struct.msg* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %11, align 8
  br label %88

88:                                               ; preds = %84, %79, %66
  %89 = load %struct.msg*, %struct.msg** %8, align 8
  %90 = call i32 @req_put(%struct.msg* %89)
  br label %91

91:                                               ; preds = %88
  %92 = load %struct.msg*, %struct.msg** %9, align 8
  store %struct.msg* %92, %struct.msg** %8, align 8
  br label %55

93:                                               ; preds = %64
  br label %98

94:                                               ; preds = %35
  %95 = load %struct.msg*, %struct.msg** %6, align 8
  %96 = getelementptr inbounds %struct.msg, %struct.msg* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %11, align 8
  br label %98

98:                                               ; preds = %94, %93
  %99 = load %struct.msg*, %struct.msg** %6, align 8
  %100 = getelementptr inbounds %struct.msg, %struct.msg* %99, i32 0, i32 2
  %101 = load %struct.msg*, %struct.msg** %100, align 8
  store %struct.msg* %101, %struct.msg** %7, align 8
  %102 = load %struct.msg*, %struct.msg** %7, align 8
  %103 = icmp ne %struct.msg* %102, null
  br i1 %103, label %104, label %125

104:                                              ; preds = %98
  %105 = load %struct.msg*, %struct.msg** %7, align 8
  %106 = getelementptr inbounds %struct.msg, %struct.msg* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %104
  %110 = load %struct.msg*, %struct.msg** %7, align 8
  %111 = getelementptr inbounds %struct.msg, %struct.msg* %110, i32 0, i32 2
  %112 = load %struct.msg*, %struct.msg** %111, align 8
  %113 = load %struct.msg*, %struct.msg** %6, align 8
  %114 = icmp eq %struct.msg* %112, %113
  br label %115

115:                                              ; preds = %109, %104
  %116 = phi i1 [ false, %104 ], [ %114, %109 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 @ASSERT(i32 %117)
  %119 = load %struct.msg*, %struct.msg** %6, align 8
  %120 = getelementptr inbounds %struct.msg, %struct.msg* %119, i32 0, i32 2
  store %struct.msg* null, %struct.msg** %120, align 8
  %121 = load %struct.msg*, %struct.msg** %7, align 8
  %122 = getelementptr inbounds %struct.msg, %struct.msg* %121, i32 0, i32 2
  store %struct.msg* null, %struct.msg** %122, align 8
  %123 = load %struct.msg*, %struct.msg** %7, align 8
  %124 = call i32 @rsp_put(%struct.msg* %123)
  br label %125

125:                                              ; preds = %115, %98
  %126 = load %struct.conn*, %struct.conn** %5, align 8
  %127 = getelementptr inbounds %struct.conn, %struct.conn* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %11, align 8
  %130 = call %struct.msg* @msg_get_error(i32 %128, i64 %129)
  ret %struct.msg* %130
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @req_error(%struct.conn*, %struct.msg*) #1

declare dso_local %struct.msg* @TAILQ_NEXT(%struct.msg*, i32) #1

declare dso_local i32 @req_put(%struct.msg*) #1

declare dso_local i32 @rsp_put(%struct.msg*) #1

declare dso_local %struct.msg* @msg_get_error(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
